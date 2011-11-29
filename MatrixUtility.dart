#import('dart:html');
#source('Matrix4x4.dart');

class MatrixUtility {

  MatrixUtility() {
  }

  void run() {
    document.query('#status').innerHTML = "";
    Matrix4x4 matrix = new Matrix4x4();

    var b = matrixToHtml(matrix);
    b = "idenity Matrix <br>" + b + "<br>";
    write(b);
    
    matrix.elements[0*4+0] = 10.0;
    matrix.elements[0*4+1] = 4.0;
    matrix.elements[0*4+2] = 4.0;
    matrix.elements[0*4+3] = 4.0;
    
    
    matrix.elements[1*4+0] = 1.0;
    matrix.elements[1*4+1] = 4.0;
    matrix.elements[1*4+2] = 5.0;
    matrix.elements[1*4+3] = 0.0;
   
    
    matrix.elements[2*4+0] = 17.0;
    matrix.elements[2*4+1] = 23.0;
    matrix.elements[2*4+2] = 444.0;
    matrix.elements[2*4+3] = 1.0;
    
    
    matrix.elements[3*4+0] = 64.0;
    matrix.elements[3*4+1] = 83.0;
    matrix.elements[3*4+2] = 45.0;
    matrix.elements[3*4+3] = 99.0;
    
    matrix = matrix.transpose();
    b = matrixToHtml(matrix);
    b = "transpose Matrix <br>" + b + "<br>";
    write(b);
    
    matrix = matrix.multiply(matrix);
    b = matrixToHtml(matrix);
    b = "multiply Matrix <br>" + b + "<br>";
    write(b);
    
    matrix = matrix.scale(10,2,4);
    b = matrixToHtml(matrix);
    b = "scale Matrix <br>" + b + "<br>";
    write(b);
    
    matrix = matrix.rotate(.30,1,2,3);
    b = matrixToHtml(matrix);
    b = "rotate Matrix <br>" + b + "<br>";
    write(b);
    
    matrix = matrix.invert();
    b = matrixToHtml(matrix);
    b = "invert Matrix <br>" + b + "<br>";
    write(b);
    
    matrix = matrix.inverse();
    b = matrixToHtml(matrix);
    b = "inverse Matrix <br>" + b + "<br>";
    write(b);
  }
  
  matrixToHtml(m) {
    String b="";
    String s = m.toString();
    s.split(',').forEach((e) {
      b+=e+"<br>";
    });
    return b;
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML += message;
  }
}

void main() {
  new MatrixUtility().run();
}
