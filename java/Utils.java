package eta.bouncycastle;

import org.bouncycastle.crypto.engines.ThreefishEngine;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import java.security.Security;

public class Utils {
    
    public static long[] threeFishProcessBlock(long blk1, long blk2, long blk3, long blk4) {
        // Security.insertProviderAt(new BouncyCastleProvider(), 1);
        ThreefishEngine tfe = new ThreefishEngine(256);
        long[] input = { blk1, blk2, blk3, blk4 };
        long[] output = new long[4];
        long[] keys = {1L, 2L, 3L, 4L};
        tfe.init(false, keys, null);
        tfe.processBlock(input, output);
        return output;
    }
}
