Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9E214860E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F97772A86;
	Fri, 24 Jan 2020 13:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B6D72A86
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:39 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="222620366"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:44 +0200
Message-Id: <03a907100bf86e877247df804104c50240e3b38c.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 23/33] drm/i915/overlay: use intel_de_*()
 functions for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 45 ++++++++++----------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index e40c3a0e2cd7..365ec6cab3c5 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -204,9 +204,10 @@ static void i830_overlay_clock_gating(struct drm_i915_private *dev_priv,
 
 	/* WA_OVERLAY_CLKGATE:alm */
 	if (enable)
-		I915_WRITE(DSPCLK_GATE_D, 0);
+		intel_de_write(dev_priv, DSPCLK_GATE_D, 0);
 	else
-		I915_WRITE(DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);
+		intel_de_write(dev_priv, DSPCLK_GATE_D,
+			       OVRUNIT_CLOCK_GATE_DISABLE);
 
 	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
 	pci_bus_read_config_byte(pdev->bus,
@@ -321,7 +322,7 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 		flip_addr |= OFC_UPDATE;
 
 	/* check for underruns */
-	tmp = I915_READ(DOVSTA);
+	tmp = intel_de_read(dev_priv, DOVSTA);
 	if (tmp & (1 << 17))
 		DRM_DEBUG("overlay underrun, DOVSTA: %x\n", tmp);
 
@@ -456,7 +457,7 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 	if (!overlay->old_vma)
 		return 0;
 
-	if (!(I915_READ(GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
+	if (!(intel_de_read(dev_priv, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
 		intel_overlay_release_old_vid_tail(overlay);
 		return 0;
 	}
@@ -891,7 +892,7 @@ static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
 static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 {
 	struct drm_i915_private *dev_priv = overlay->i915;
-	u32 pfit_control = I915_READ(PFIT_CONTROL);
+	u32 pfit_control = intel_de_read(dev_priv, PFIT_CONTROL);
 	u32 ratio;
 
 	/* XXX: This is not the same logic as in the xorg driver, but more in
@@ -899,12 +900,12 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 	 */
 	if (INTEL_GEN(dev_priv) >= 4) {
 		/* on i965 use the PGM reg to read out the autoscaler values */
-		ratio = I915_READ(PFIT_PGM_RATIOS) >> PFIT_VERT_SCALE_SHIFT_965;
+		ratio = intel_de_read(dev_priv, PFIT_PGM_RATIOS) >> PFIT_VERT_SCALE_SHIFT_965;
 	} else {
 		if (pfit_control & VERT_AUTO_SCALE)
-			ratio = I915_READ(PFIT_AUTO_RATIOS);
+			ratio = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
 		else
-			ratio = I915_READ(PFIT_PGM_RATIOS);
+			ratio = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
 		ratio >>= PFIT_VERT_SCALE_SHIFT;
 	}
 
@@ -1239,12 +1240,12 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 		attrs->saturation = overlay->saturation;
 
 		if (!IS_GEN(dev_priv, 2)) {
-			attrs->gamma0 = I915_READ(OGAMC0);
-			attrs->gamma1 = I915_READ(OGAMC1);
-			attrs->gamma2 = I915_READ(OGAMC2);
-			attrs->gamma3 = I915_READ(OGAMC3);
-			attrs->gamma4 = I915_READ(OGAMC4);
-			attrs->gamma5 = I915_READ(OGAMC5);
+			attrs->gamma0 = intel_de_read(dev_priv, OGAMC0);
+			attrs->gamma1 = intel_de_read(dev_priv, OGAMC1);
+			attrs->gamma2 = intel_de_read(dev_priv, OGAMC2);
+			attrs->gamma3 = intel_de_read(dev_priv, OGAMC3);
+			attrs->gamma4 = intel_de_read(dev_priv, OGAMC4);
+			attrs->gamma5 = intel_de_read(dev_priv, OGAMC5);
 		}
 	} else {
 		if (attrs->brightness < -128 || attrs->brightness > 127)
@@ -1274,12 +1275,12 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			if (ret)
 				goto out_unlock;
 
-			I915_WRITE(OGAMC0, attrs->gamma0);
-			I915_WRITE(OGAMC1, attrs->gamma1);
-			I915_WRITE(OGAMC2, attrs->gamma2);
-			I915_WRITE(OGAMC3, attrs->gamma3);
-			I915_WRITE(OGAMC4, attrs->gamma4);
-			I915_WRITE(OGAMC5, attrs->gamma5);
+			intel_de_write(dev_priv, OGAMC0, attrs->gamma0);
+			intel_de_write(dev_priv, OGAMC1, attrs->gamma1);
+			intel_de_write(dev_priv, OGAMC2, attrs->gamma2);
+			intel_de_write(dev_priv, OGAMC3, attrs->gamma3);
+			intel_de_write(dev_priv, OGAMC4, attrs->gamma4);
+			intel_de_write(dev_priv, OGAMC5, attrs->gamma5);
 		}
 	}
 	overlay->color_key_enabled = (attrs->flags & I915_OVERLAY_DISABLE_DEST_COLORKEY) == 0;
@@ -1419,8 +1420,8 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
 	if (error == NULL)
 		return NULL;
 
-	error->dovsta = I915_READ(DOVSTA);
-	error->isr = I915_READ(GEN2_ISR);
+	error->dovsta = intel_de_read(dev_priv, DOVSTA);
+	error->isr = intel_de_read(dev_priv, GEN2_ISR);
 	error->base = overlay->flip_addr;
 
 	memcpy_fromio(&error->regs, overlay->regs, sizeof(error->regs));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
