Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D04148604
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B0172A81;
	Fri, 24 Jan 2020 13:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4722E72A81
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:10 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="216592935"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:37 +0200
Message-Id: <bf67d57a7d760fb557325690f634799751d36f12.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 16/33] drm/i915/fbc: use intel_de_*() functions
 for register access
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
 drivers/gpu/drm/i915/display/intel_fbc.c | 106 ++++++++++++-----------
 1 file changed, 55 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 88a9c2fea695..fc999ecd3af1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -93,12 +93,12 @@ static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
 	u32 fbc_ctl;
 
 	/* Disable compression */
-	fbc_ctl = I915_READ(FBC_CONTROL);
+	fbc_ctl = intel_de_read(dev_priv, FBC_CONTROL);
 	if ((fbc_ctl & FBC_CTL_EN) == 0)
 		return;
 
 	fbc_ctl &= ~FBC_CTL_EN;
-	I915_WRITE(FBC_CONTROL, fbc_ctl);
+	intel_de_write(dev_priv, FBC_CONTROL, fbc_ctl);
 
 	/* Wait for compressing bit to clear */
 	if (intel_de_wait_for_clear(dev_priv, FBC_STATUS,
@@ -128,7 +128,7 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 
 	/* Clear old tags */
 	for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
-		I915_WRITE(FBC_TAG(i), 0);
+		intel_de_write(dev_priv, FBC_TAG(i), 0);
 
 	if (IS_GEN(dev_priv, 4)) {
 		u32 fbc_ctl2;
@@ -138,12 +138,13 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 		fbc_ctl2 |= FBC_CTL_PLANE(params->crtc.i9xx_plane);
 		if (params->fence_id >= 0)
 			fbc_ctl2 |= FBC_CTL_CPU_FENCE;
-		I915_WRITE(FBC_CONTROL2, fbc_ctl2);
-		I915_WRITE(FBC_FENCE_OFF, params->crtc.fence_y_offset);
+		intel_de_write(dev_priv, FBC_CONTROL2, fbc_ctl2);
+		intel_de_write(dev_priv, FBC_FENCE_OFF,
+			       params->crtc.fence_y_offset);
 	}
 
 	/* enable it... */
-	fbc_ctl = I915_READ(FBC_CONTROL);
+	fbc_ctl = intel_de_read(dev_priv, FBC_CONTROL);
 	fbc_ctl &= 0x3fff << FBC_CTL_INTERVAL_SHIFT;
 	fbc_ctl |= FBC_CTL_EN | FBC_CTL_PERIODIC;
 	if (IS_I945GM(dev_priv))
@@ -151,12 +152,12 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 	fbc_ctl |= (cfb_pitch & 0xff) << FBC_CTL_STRIDE_SHIFT;
 	if (params->fence_id >= 0)
 		fbc_ctl |= params->fence_id;
-	I915_WRITE(FBC_CONTROL, fbc_ctl);
+	intel_de_write(dev_priv, FBC_CONTROL, fbc_ctl);
 }
 
 static bool i8xx_fbc_is_active(struct drm_i915_private *dev_priv)
 {
-	return I915_READ(FBC_CONTROL) & FBC_CTL_EN;
+	return intel_de_read(dev_priv, FBC_CONTROL) & FBC_CTL_EN;
 }
 
 static void g4x_fbc_activate(struct drm_i915_private *dev_priv)
@@ -172,13 +173,14 @@ static void g4x_fbc_activate(struct drm_i915_private *dev_priv)
 
 	if (params->fence_id >= 0) {
 		dpfc_ctl |= DPFC_CTL_FENCE_EN | params->fence_id;
-		I915_WRITE(DPFC_FENCE_YOFF, params->crtc.fence_y_offset);
+		intel_de_write(dev_priv, DPFC_FENCE_YOFF,
+			       params->crtc.fence_y_offset);
 	} else {
-		I915_WRITE(DPFC_FENCE_YOFF, 0);
+		intel_de_write(dev_priv, DPFC_FENCE_YOFF, 0);
 	}
 
 	/* enable it... */
-	I915_WRITE(DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
+	intel_de_write(dev_priv, DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
 }
 
 static void g4x_fbc_deactivate(struct drm_i915_private *dev_priv)
@@ -186,16 +188,16 @@ static void g4x_fbc_deactivate(struct drm_i915_private *dev_priv)
 	u32 dpfc_ctl;
 
 	/* Disable compression */
-	dpfc_ctl = I915_READ(DPFC_CONTROL);
+	dpfc_ctl = intel_de_read(dev_priv, DPFC_CONTROL);
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
-		I915_WRITE(DPFC_CONTROL, dpfc_ctl);
+		intel_de_write(dev_priv, DPFC_CONTROL, dpfc_ctl);
 	}
 }
 
 static bool g4x_fbc_is_active(struct drm_i915_private *dev_priv)
 {
-	return I915_READ(DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(dev_priv, DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
 /* This function forces a CFB recompression through the nuke operation. */
@@ -205,8 +207,8 @@ static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
 
 	trace_intel_fbc_nuke(fbc->crtc);
 
-	I915_WRITE(MSG_FBC_REND_STATE, FBC_REND_NUKE);
-	POSTING_READ(MSG_FBC_REND_STATE);
+	intel_de_write(dev_priv, MSG_FBC_REND_STATE, FBC_REND_NUKE);
+	intel_de_posting_read(dev_priv, MSG_FBC_REND_STATE);
 }
 
 static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
@@ -237,22 +239,22 @@ static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 		if (IS_GEN(dev_priv, 5))
 			dpfc_ctl |= params->fence_id;
 		if (IS_GEN(dev_priv, 6)) {
-			I915_WRITE(SNB_DPFC_CTL_SA,
-				   SNB_CPU_FENCE_ENABLE |
-				   params->fence_id);
-			I915_WRITE(DPFC_CPU_FENCE_OFFSET,
-				   params->crtc.fence_y_offset);
+			intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
+				       SNB_CPU_FENCE_ENABLE | params->fence_id);
+			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
+				       params->crtc.fence_y_offset);
 		}
 	} else {
 		if (IS_GEN(dev_priv, 6)) {
-			I915_WRITE(SNB_DPFC_CTL_SA, 0);
-			I915_WRITE(DPFC_CPU_FENCE_OFFSET, 0);
+			intel_de_write(dev_priv, SNB_DPFC_CTL_SA, 0);
+			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
 		}
 	}
 
-	I915_WRITE(ILK_DPFC_FENCE_YOFF, params->crtc.fence_y_offset);
+	intel_de_write(dev_priv, ILK_DPFC_FENCE_YOFF,
+		       params->crtc.fence_y_offset);
 	/* enable it... */
-	I915_WRITE(ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
+	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
 
 	intel_fbc_recompress(dev_priv);
 }
@@ -262,16 +264,16 @@ static void ilk_fbc_deactivate(struct drm_i915_private *dev_priv)
 	u32 dpfc_ctl;
 
 	/* Disable compression */
-	dpfc_ctl = I915_READ(ILK_DPFC_CONTROL);
+	dpfc_ctl = intel_de_read(dev_priv, ILK_DPFC_CONTROL);
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
-		I915_WRITE(ILK_DPFC_CONTROL, dpfc_ctl);
+		intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl);
 	}
 }
 
 static bool ilk_fbc_is_active(struct drm_i915_private *dev_priv)
 {
-	return I915_READ(ILK_DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(dev_priv, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
 static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
@@ -282,14 +284,14 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 
 	/* Display WA #0529: skl, kbl, bxt. */
 	if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) {
-		u32 val = I915_READ(CHICKEN_MISC_4);
+		u32 val = intel_de_read(dev_priv, CHICKEN_MISC_4);
 
 		val &= ~(FBC_STRIDE_OVERRIDE | FBC_STRIDE_MASK);
 
 		if (params->gen9_wa_cfb_stride)
 			val |= FBC_STRIDE_OVERRIDE | params->gen9_wa_cfb_stride;
 
-		I915_WRITE(CHICKEN_MISC_4, val);
+		intel_de_write(dev_priv, CHICKEN_MISC_4, val);
 	}
 
 	dpfc_ctl = 0;
@@ -314,13 +316,13 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 
 	if (params->fence_id >= 0) {
 		dpfc_ctl |= IVB_DPFC_CTL_FENCE_EN;
-		I915_WRITE(SNB_DPFC_CTL_SA,
-			   SNB_CPU_FENCE_ENABLE |
-			   params->fence_id);
-		I915_WRITE(DPFC_CPU_FENCE_OFFSET, params->crtc.fence_y_offset);
+		intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
+			       SNB_CPU_FENCE_ENABLE | params->fence_id);
+		intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
+			       params->crtc.fence_y_offset);
 	} else {
-		I915_WRITE(SNB_DPFC_CTL_SA,0);
-		I915_WRITE(DPFC_CPU_FENCE_OFFSET, 0);
+		intel_de_write(dev_priv, SNB_DPFC_CTL_SA, 0);
+		intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
 	}
 
 	if (dev_priv->fbc.false_color)
@@ -328,21 +330,20 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 
 	if (IS_IVYBRIDGE(dev_priv)) {
 		/* WaFbcAsynchFlipDisableFbcQueue:ivb */
-		I915_WRITE(ILK_DISPLAY_CHICKEN1,
-			   I915_READ(ILK_DISPLAY_CHICKEN1) |
-			   ILK_FBCQ_DIS);
+		intel_de_write(dev_priv, ILK_DISPLAY_CHICKEN1,
+			       intel_de_read(dev_priv, ILK_DISPLAY_CHICKEN1) | ILK_FBCQ_DIS);
 	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-		I915_WRITE(CHICKEN_PIPESL_1(params->crtc.pipe),
-			   I915_READ(CHICKEN_PIPESL_1(params->crtc.pipe)) |
-			   HSW_FBCQ_DIS);
+		intel_de_write(dev_priv, CHICKEN_PIPESL_1(params->crtc.pipe),
+			       intel_de_read(dev_priv, CHICKEN_PIPESL_1(params->crtc.pipe)) | HSW_FBCQ_DIS);
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11)
 		/* Wa_1409120013:icl,ehl,tgl */
-		I915_WRITE(ILK_DPFC_CHICKEN, ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+		intel_de_write(dev_priv, ILK_DPFC_CHICKEN,
+			       ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
-	I915_WRITE(ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
+	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
 
 	intel_fbc_recompress(dev_priv);
 }
@@ -489,9 +490,11 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 	fbc->threshold = ret;
 
 	if (INTEL_GEN(dev_priv) >= 5)
-		I915_WRITE(ILK_DPFC_CB_BASE, fbc->compressed_fb.start);
+		intel_de_write(dev_priv, ILK_DPFC_CB_BASE,
+			       fbc->compressed_fb.start);
 	else if (IS_GM45(dev_priv)) {
-		I915_WRITE(DPFC_CB_BASE, fbc->compressed_fb.start);
+		intel_de_write(dev_priv, DPFC_CB_BASE,
+			       fbc->compressed_fb.start);
 	} else {
 		compressed_llb = kzalloc(sizeof(*compressed_llb), GFP_KERNEL);
 		if (!compressed_llb)
@@ -510,10 +513,10 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 		GEM_BUG_ON(range_overflows_t(u64, dev_priv->dsm.start,
 					     fbc->compressed_llb->start,
 					     U32_MAX));
-		I915_WRITE(FBC_CFB_BASE,
-			   dev_priv->dsm.start + fbc->compressed_fb.start);
-		I915_WRITE(FBC_LL_BASE,
-			   dev_priv->dsm.start + compressed_llb->start);
+		intel_de_write(dev_priv, FBC_CFB_BASE,
+			       dev_priv->dsm.start + fbc->compressed_fb.start);
+		intel_de_write(dev_priv, FBC_LL_BASE,
+			       dev_priv->dsm.start + compressed_llb->start);
 	}
 
 	DRM_DEBUG_KMS("reserved %llu bytes of contiguous stolen space for FBC, threshold: %d\n",
@@ -1364,7 +1367,8 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 
 	/* This value was pulled out of someone's hat */
 	if (INTEL_GEN(dev_priv) <= 4 && !IS_GM45(dev_priv))
-		I915_WRITE(FBC_CONTROL, 500 << FBC_CTL_INTERVAL_SHIFT);
+		intel_de_write(dev_priv, FBC_CONTROL,
+		               500 << FBC_CTL_INTERVAL_SHIFT);
 
 	/* We still don't have any sort of hardware state readout for FBC, so
 	 * deactivate it in case the BIOS activated it to make sure software
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
