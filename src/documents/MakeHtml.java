/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package documents;

/**
 *
 * @author Jo
 */
import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class MakeHtml
{
  public static void main(String[] args) throws TransformerException
  {
    TransformXML.transform(new StreamSource("src/documents/cv.xml"), new StreamSource("src/documents/openDoc.xsl"),new StreamResult("src/documents/content.html"));
  }   
}
