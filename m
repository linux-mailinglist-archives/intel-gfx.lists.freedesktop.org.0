Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2A5188660
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0A26E139;
	Tue, 17 Mar 2020 13:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D261A6E139
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 13:52:23 +0000 (UTC)
IronPort-SDR: trnIu/EzFuVSlObwtKqkYellEpmUFdT7K7kAfr0/zW20SpnkP7TDjGhhu+Muh0h/3y2M14lufu
 y5SNqJ8S6QTQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:52:23 -0700
IronPort-SDR: ru7U+P7jc55lmVV5h/SUVOkUuiJJDIsC/RK+3Tf5RGSxjXf5Ns+kopN4ZkbNqCuhEDK/SJxDze
 pbT/6BG6LbCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="263038526"
Received: from unknown (HELO linux-X299-AORUS-Gaming-3-Pro.iind.intel.com)
 ([10.223.34.130])
 by orsmga002.jf.intel.com with ESMTP; 17 Mar 2020 06:52:20 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Mar 2020 19:27:36 +0530
Message-Id: <20200317135736.14305-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9] drm/i915/color: Extract icl_read_luts()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For icl+, have hw read out to create hw blob of gamma
lut values. icl+ platforms supports multi segmented gamma
mode by default, add hw lut creation for this mode.

This will be used to validate gamma programming using dsb
(display state buffer) which is a tgl specific feature.

v2: -readout code for multisegmented gamma has to come
     up with some intermediate entries that aren't preserved
     in hardware (Jani N)
    -linear interpolation (Ville)
    -moved common code to check gamma_enable to specific funcs,
     since icl doesn't support that
v3: -use u16 instead of __u16 [Jani N]
    -used single lut [Jani N]
    -improved and more readable for loops [Jani N]
    -read values directly to actual locations and then fill gaps [Jani N]
    -moved cleaning to patch 1 [Jani N]
    -renamed icl_read_lut_multi_seg() to icl_read_lut_multi_segment to
     make it similar to icl_load_luts()
    -renamed icl_compute_interpolated_gamma_blob() to
     icl_compute_interpolated_gamma_lut_values() more sensible, I guess
v4: -removed interpolated func for creating gamma lut values
    -removed readouts of fine and coarse segments, failure to read PAL_PREC_DATA
     correctly
v5: -added gamma_enable check inside read_luts()
v6: -renamed intel_color_lut_entry_equal() to intel_color_lut_entries_equal() [Ville]
    -changed if-else to switch [Ville]
    -removed intel_color_lut_entry_multi_equal() [Ville]
v7: -checkpatch warnings
v8: -rebased
v9: -rebased, aligned with Ville's style of gamma cleanup

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 121 ++++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h            |   6 +
 2 files changed, 109 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index c1cce93a1c25..98ece9cd7cdd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -460,6 +460,16 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
 	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MASK, val), 10);
 }
 
+static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
+{
+	entry->red = REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6 |
+				   REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
+	entry->green = REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) << 6 |
+				     REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
+	entry->blue = REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) << 6 |
+				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
+}
+
 static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -893,7 +903,7 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_state,
 	struct intel_dsb *dsb = intel_dsb_get(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	/* Fixme: LUT entries are 16 bit only, so we can prog 0xFFFF max */
+	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
 	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 0), color->red);
 	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 1), color->green);
 	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 2), color->blue);
@@ -1630,6 +1640,24 @@ static int glk_gamma_precision(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static int icl_gamma_precision(const struct intel_crtc_state *crtc_state)
+{
+	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
+		return 0;
+
+	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 10;
+	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
+		return 16;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		return 0;
+	}
+}
+
 int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1641,7 +1669,9 @@ int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_stat
 		else
 			return i9xx_gamma_precision(crtc_state);
 	} else {
-		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
+		if (INTEL_GEN(dev_priv) >= 11)
+			return icl_gamma_precision(crtc_state);
+		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
 			return glk_gamma_precision(crtc_state);
 		else if (IS_IRONLAKE(dev_priv))
 			return ilk_gamma_precision(crtc_state);
@@ -1658,9 +1688,9 @@ static bool err_check(struct drm_color_lut *lut1,
 		((abs((long)lut2->green - lut1->green)) <= err);
 }
 
-static bool intel_color_lut_entry_equal(struct drm_color_lut *lut1,
-					struct drm_color_lut *lut2,
-					int lut_size, u32 err)
+static bool intel_color_lut_entries_equal(struct drm_color_lut *lut1,
+					  struct drm_color_lut *lut2,
+					  int lut_size, u32 err)
 {
 	int i;
 
@@ -1690,16 +1720,8 @@ bool intel_color_lut_equal(struct drm_property_blob *blob1,
 	lut_size2 = drm_color_lut_size(blob2);
 
 	/* check sw and hw lut size */
-	switch (gamma_mode) {
-	case GAMMA_MODE_MODE_8BIT:
-	case GAMMA_MODE_MODE_10BIT:
-		if (lut_size1 != lut_size2)
-			return false;
-		break;
-	default:
-		MISSING_CASE(gamma_mode);
-			return false;
-	}
+	if (lut_size1 != lut_size2)
+		return false;
 
 	lut1 = blob1->data;
 	lut2 = blob2->data;
@@ -1707,11 +1729,16 @@ bool intel_color_lut_equal(struct drm_property_blob *blob1,
 	err = 0xffff >> bit_precision;
 
 	/* check sw and hw lut entry to be equal */
-	switch (gamma_mode) {
+	switch (gamma_mode & GAMMA_MODE_MODE_MASK) {
 	case GAMMA_MODE_MODE_8BIT:
 	case GAMMA_MODE_MODE_10BIT:
-		if (!intel_color_lut_entry_equal(lut1, lut2,
-						 lut_size2, err))
+		if (!intel_color_lut_entries_equal(lut1, lut2,
+						   lut_size2, err))
+			return false;
+		break;
+	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
+		if (!intel_color_lut_entries_equal(lut1, lut2,
+						   9, err))
 			return false;
 		break;
 	default:
@@ -1946,6 +1973,63 @@ static void glk_read_luts(struct intel_crtc_state *crtc_state)
 		crtc_state->hw.gamma_lut = glk_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
 }
 
+static struct drm_property_blob *
+icl_read_lut_multi_segment(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int i, lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
+	enum pipe pipe = crtc->pipe;
+	struct drm_property_blob *blob;
+	struct drm_color_lut *lut;
+
+	blob = drm_property_create_blob(&dev_priv->drm,
+					sizeof(struct drm_color_lut) * lut_size,
+					NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	lut = blob->data;
+
+	intel_de_write(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe),
+		       PAL_PREC_AUTO_INCREMENT);
+
+	for (i = 0; i < 9; i++) {
+		u32 ldw = intel_de_read(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
+		u32 udw = intel_de_read(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
+
+		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
+	}
+
+	intel_de_write(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
+
+	/*
+	 * FIXME readouts from PAL_PREC_DATA register aren't giving
+	 * correct values in the case of fine and coarse segments.
+	 * Restricting readouts only for super fine segment as of now.
+	 */
+
+	return blob;
+}
+
+static void icl_read_luts(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
+		return;
+
+	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
+	case GAMMA_MODE_MODE_8BIT:
+		crtc_state->hw.gamma_lut = ilk_read_lut_8(crtc);
+		break;
+	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
+		crtc_state->hw.gamma_lut = icl_read_lut_multi_segment(crtc);
+		break;
+	default:
+		crtc_state->hw.gamma_lut = glk_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
+	}
+}
+
 void intel_color_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1989,6 +2073,7 @@ void intel_color_init(struct intel_crtc *crtc)
 
 		if (INTEL_GEN(dev_priv) >= 11) {
 			dev_priv->display.load_luts = icl_load_luts;
+			dev_priv->display.read_luts = icl_read_luts;
 		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
 			dev_priv->display.load_luts = glk_load_luts;
 			dev_priv->display.read_luts = glk_read_luts;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 309cb7d96b35..758ce731c12c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10739,6 +10739,12 @@ enum skl_power_gate {
 
 #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
 #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
+#define  PAL_PREC_MULTI_SEG_RED_LDW_MASK   REG_GENMASK(29, 24)
+#define  PAL_PREC_MULTI_SEG_RED_UDW_MASK   REG_GENMASK(29, 20)
+#define  PAL_PREC_MULTI_SEG_GREEN_LDW_MASK REG_GENMASK(19, 14)
+#define  PAL_PREC_MULTI_SEG_GREEN_UDW_MASK REG_GENMASK(19, 10)
+#define  PAL_PREC_MULTI_SEG_BLUE_LDW_MASK  REG_GENMASK(9, 4)
+#define  PAL_PREC_MULTI_SEG_BLUE_UDW_MASK  REG_GENMASK(9, 0)
 
 #define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
 					_PAL_PREC_MULTI_SEG_INDEX_A, \
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
