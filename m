Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8902C8300
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 12:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437CE6E461;
	Mon, 30 Nov 2020 11:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1CC6E461
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 11:16:35 +0000 (UTC)
IronPort-SDR: Fx02VCs7nhofwH92S5/S38xv3Pb+scx9dxVCdYDK12JgJKmyaYyvrR54c/Tds0ZdT4o6yQblXR
 PYks9KVFqbXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="151868948"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="151868948"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:34 -0800
IronPort-SDR: 2WcHbtZhoGdYp9SGyw3MccHgBGum1iJlOCkT+Kvi4dHNBod/KkUZKyfG53a0keTJU00BvXpMUN
 XNukoqSIECtw==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="334620412"
Received: from cshanno1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.44])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:15:57 +0200
Message-Id: <20201130111601.2817-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201130111601.2817-1-jani.nikula@intel.com>
References: <20201130111601.2817-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 06/10] drm/i915/suspend: replace
 I915_READ()/WRITE() with intel_de_read()/write()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Another straggler with I915_READ() and I915_WRITE() uses gone.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_suspend.c | 33 +++++++++++++++--------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index db2111fc809e..63212df33c9e 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -24,6 +24,7 @@
  * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  */
 
+#include "display/intel_de.h"
 #include "display/intel_fbc.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_vga.h"
@@ -39,21 +40,21 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 	/* Scratch space */
 	if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
 		for (i = 0; i < 7; i++) {
-			dev_priv->regfile.saveSWF0[i] = I915_READ(SWF0(i));
-			dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
+			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 		}
 		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = I915_READ(SWF3(i));
+			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
 	} else if (IS_GEN(dev_priv, 2)) {
 		for (i = 0; i < 7; i++)
-			dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 	} else if (HAS_GMCH(dev_priv)) {
 		for (i = 0; i < 16; i++) {
-			dev_priv->regfile.saveSWF0[i] = I915_READ(SWF0(i));
-			dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
+			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 		}
 		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = I915_READ(SWF3(i));
+			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
 	}
 }
 
@@ -64,21 +65,21 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 	/* Scratch space */
 	if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
 		for (i = 0; i < 7; i++) {
-			I915_WRITE(SWF0(i), dev_priv->regfile.saveSWF0[i]);
-			I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
+			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
+			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
+			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
 	} else if (IS_GEN(dev_priv, 2)) {
 		for (i = 0; i < 7; i++)
-			I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
+			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 	} else if (HAS_GMCH(dev_priv)) {
 		for (i = 0; i < 16; i++) {
-			I915_WRITE(SWF0(i), dev_priv->regfile.saveSWF0[i]);
-			I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
+			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
+			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
+			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
 	}
 }
 
@@ -88,7 +89,7 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 
 	/* Display arbitration control */
 	if (INTEL_GEN(dev_priv) <= 4)
-		dev_priv->regfile.saveDSPARB = I915_READ(DSPARB);
+		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv, DSPARB);
 
 	if (IS_GEN(dev_priv, 4))
 		pci_read_config_word(pdev, GCDGMBUS,
@@ -109,7 +110,7 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 
 	/* Display arbitration */
 	if (INTEL_GEN(dev_priv) <= 4)
-		I915_WRITE(DSPARB, dev_priv->regfile.saveDSPARB);
+		intel_de_write(dev_priv, DSPARB, dev_priv->regfile.saveDSPARB);
 
 	/* only restore FBC info on the platform that supports FBC*/
 	intel_fbc_global_disable(dev_priv);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
