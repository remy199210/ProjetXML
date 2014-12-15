package documents;

/**
 *
 * @author Jo
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import javax.xml.transform.TransformerException;

import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;


public class MakeODT {
	
	
	public static final byte data[] = new byte[512];
	
	public static void addEntry(ZipEntry entry, InputStream src, ZipOutputStream trg) throws IOException {
		trg.putNextEntry(entry);
		int count;
		while((count = src.read(data, 0, 512)) != -1) {
			trg.write(data, 0, count);
		} 
		trg.closeEntry();
	}
        

	public static void main(String[] args) throws IOException, TransformerException {
		File template = new File("src/documents/modele.odt");
		File result = new File("src/documents/result.odt");
		
		ZipInputStream zis = new ZipInputStream(new FileInputStream(template));
		ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(result));
		
		
		// Ajoute le contenu d'un fichier ODT de rÃ©fÃ©rence en excluant
		// les fichiers mimetype et content.xml
		ZipEntry entry=null;
		while ((entry=zis.getNextEntry())!=null) {
			String n = entry.getName();
			if (!("content.xml".equals(n) || "mimetype".equals(n))) {
				addEntry(entry,zis,zos);
			}
		}
		zis.close();
		
		
		// ici on ajoute le rÃ©sultat de la transformation 
		entry = new ZipEntry("content.xml");
		zos.putNextEntry(entry);
		StreamResult res = new StreamResult(zos);
		
		// ici on effectue la transformation 
		// transformer.transform(source, res);
                TransformXML.transform(new StreamSource("src/documents/cv.xml"), new StreamSource("src/documents/openDoc.xsl"),res);
                

		
		zos.closeEntry();
		
		zos.close();
	}

}