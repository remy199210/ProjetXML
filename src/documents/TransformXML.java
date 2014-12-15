/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package documents;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *
 * @author Jo
 */
public class TransformXML {
    
    public static void transform(StreamSource src, StreamSource xslt, StreamResult desti) throws TransformerConfigurationException, TransformerException{

        TransformerFactory fabrique = TransformerFactory.newInstance();
        Transformer transformation = fabrique.newTransformer(xslt);
        transformation.transform(src, desti);
    }
}
