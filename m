Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F626B9528
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4479A10E7D6;
	Tue, 14 Mar 2023 13:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D27910E7D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678798986; x=1710334986;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xOLGYdcAlNNJ62ytpU/F0jsQctBEUzRJ4cd4rVZqpz0=;
 b=PAhtY2/j2r8R5dH868H9moWI+t6T1i+B3QjeZKF4R8KcDImEXvQwMX02
 p2FFHVrZK7WMA7/LL5NAON4mI41rnZJGIVyIVuohR6hnT5EwM1re5yNVL
 LKBeofu8cFCDcMsCKlwrGv3OIfW5jUBpvnkaUwJ8S76qc58OerNu2Wrc5
 b9VRpqfr0ogj76iEXcFaZzU+9im9U0hPClnqrkb2NkkTJDiTOgXb9+/26
 unQ4O+TIH2LN9xJ8ELg+BTcgH1s+rCOb50dRHtBO1P8U5qhCiyRaEbmU0
 Sbtd7VU0zqFZ10Z1ULtAyA0v+g5mkbV3sR3ytN+n3TfLyZanDwVJC2VOF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079912"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079912"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323717"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323717"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:48 +0200
Message-Id: <20230314130255.23273-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: s/PIPEMISC/PIPE_MISC/
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This PIPEMISC vs. PIPE_MISC inconsitency is ugly. Unify
the naming (PIPE_MISC is also what bspec has always called it).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 34 ++++++------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  |  6 +--
 6 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 50dcaa895854..4ff10b00ffbd 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1500,7 +1500,7 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 
 	gen11_dsi_get_timings(encoder, pipe_config);
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
-	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
+	pipe_config->pipe_bpp = bdw_get_pipe_misc_bpp(crtc);
 
 	/* Get the details on which TE should be enabled */
 	if (is_cmd_mode(intel_dsi))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 410c84fd905c..d95817288966 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -131,7 +131,7 @@
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
-static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
+static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state);
 static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
@@ -1793,7 +1793,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_set_pipe_src_size(new_crtc_state);
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-		bdw_set_pipemisc(new_crtc_state);
+		bdw_set_pipe_misc(new_crtc_state);
 
 	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
 	    !transcoder_is_dsi(cpu_transcoder))
@@ -3074,20 +3074,20 @@ static void chv_crtc_clock_get(struct intel_crtc *crtc,
 }
 
 static enum intel_output_format
-bdw_get_pipemisc_output_format(struct intel_crtc *crtc)
+bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
 
-	if (tmp & PIPEMISC_YUV420_ENABLE) {
+	if (tmp & PIPE_MISC_YUV420_ENABLE) {
 		/* We support 4:2:0 in full blend mode only */
 		drm_WARN_ON(&dev_priv->drm,
-			    (tmp & PIPEMISC_YUV420_MODE_FULL_BLEND) == 0);
+			    (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) == 0);
 
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
-	} else if (tmp & PIPEMISC_OUTPUT_COLORSPACE_YUV) {
+	} else if (tmp & PIPE_MISC_OUTPUT_COLORSPACE_YUV) {
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
 	} else {
 		return INTEL_OUTPUT_FORMAT_RGB;
@@ -3330,7 +3330,7 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
 }
 
-static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
+static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -3338,18 +3338,18 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 
 	switch (crtc_state->pipe_bpp) {
 	case 18:
-		val |= PIPEMISC_BPC_6;
+		val |= PIPE_MISC_BPC_6;
 		break;
 	case 24:
-		val |= PIPEMISC_BPC_8;
+		val |= PIPE_MISC_BPC_8;
 		break;
 	case 30:
-		val |= PIPEMISC_BPC_10;
+		val |= PIPE_MISC_BPC_10;
 		break;
 	case 36:
 		/* Port output 12BPC defined for ADLP+ */
 		if (DISPLAY_VER(dev_priv) > 12)
-			val |= PIPEMISC_BPC_12_ADLP;
+			val |= PIPE_MISC_BPC_12_ADLP;
 		break;
 	default:
 		MISSING_CASE(crtc_state->pipe_bpp);
@@ -3357,38 +3357,38 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 	}
 
 	if (crtc_state->dither)
-		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
+		val |= PIPE_MISC_DITHER_ENABLE | PIPE_MISC_DITHER_TYPE_SP;
 
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 	    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
-		val |= PIPEMISC_OUTPUT_COLORSPACE_YUV;
+		val |= PIPE_MISC_OUTPUT_COLORSPACE_YUV;
 
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		val |= PIPEMISC_YUV420_ENABLE |
-			PIPEMISC_YUV420_MODE_FULL_BLEND;
+		val |= PIPE_MISC_YUV420_ENABLE |
+			PIPE_MISC_YUV420_MODE_FULL_BLEND;
 
 	if (DISPLAY_VER(dev_priv) >= 11 && is_hdr_mode(crtc_state))
-		val |= PIPEMISC_HDR_MODE_PRECISION;
+		val |= PIPE_MISC_HDR_MODE_PRECISION;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		val |= PIPEMISC_PIXEL_ROUNDING_TRUNC;
+		val |= PIPE_MISC_PIXEL_ROUNDING_TRUNC;
 
-	intel_de_write(dev_priv, PIPEMISC(crtc->pipe), val);
+	intel_de_write(dev_priv, PIPE_MISC(crtc->pipe), val);
 }
 
-int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
+int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
 
-	switch (tmp & PIPEMISC_BPC_MASK) {
-	case PIPEMISC_BPC_6:
+	switch (tmp & PIPE_MISC_BPC_MASK) {
+	case PIPE_MISC_BPC_6:
 		return 18;
-	case PIPEMISC_BPC_8:
+	case PIPE_MISC_BPC_8:
 		return 24;
-	case PIPEMISC_BPC_10:
+	case PIPE_MISC_BPC_10:
 		return 30;
 	/*
 	 * PORT OUTPUT 12 BPC defined for ADLP+.
@@ -3400,7 +3400,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
 	 * on older platforms, need to find a workaround for 12 BPC
 	 * MIPI DSI HW readout.
 	 */
-	case PIPEMISC_BPC_12_ADLP:
+	case PIPE_MISC_BPC_12_ADLP:
 		if (DISPLAY_VER(dev_priv) > 12)
 			return 36;
 		fallthrough;
@@ -3981,7 +3981,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	} else {
 		pipe_config->output_format =
-			bdw_get_pipemisc_output_format(crtc);
+			bdw_get_pipe_misc_output_format(crtc);
 	}
 
 	pipe_config->gamma_mode = intel_de_read(dev_priv,
@@ -6971,7 +6971,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_color_commit_arm(new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-			bdw_set_pipemisc(new_crtc_state);
+			bdw_set_pipe_misc(new_crtc_state);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 50285fb4fcf5..beef930ebfbb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -511,7 +511,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 				  struct intel_crtc_state *crtc_state);
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
 
-int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
+int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
 
 bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 8d2e6e151ba0..028965ab442d 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1072,7 +1072,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	bpp = mipi_dsi_pixel_format_to_bpp(
 			pixel_format_from_register_bits(fmt));
 
-	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
+	pipe_config->pipe_bpp = bdw_get_pipe_misc_bpp(crtc);
 
 	/* Enable Frame time stamo based scanline reporting */
 	pipe_config->mode_flags |=
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index aff3f4365b97..a383397ebeca 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3497,29 +3497,29 @@
 
 #define _PIPE_MISC_A			0x70030
 #define _PIPE_MISC_B			0x71030
-#define   PIPEMISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
-#define   PIPEMISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
-#define   PIPEMISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
-#define   PIPEMISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
-#define   PIPEMISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
+#define   PIPE_MISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
+#define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
+#define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
+#define   PIPE_MISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
+#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
 /*
  * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
  * valid values of: 6, 8, 10 BPC.
  * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
  * 6, 8, 10, 12 BPC.
  */
-#define   PIPEMISC_BPC_MASK			REG_GENMASK(7, 5)
-#define   PIPEMISC_BPC_8			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 0)
-#define   PIPEMISC_BPC_10			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 1)
-#define   PIPEMISC_BPC_6			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 2)
-#define   PIPEMISC_BPC_12_ADLP			REG_FIELD_PREP(PIPEMISC_BPC_MASK, 4) /* adlp+ */
-#define   PIPEMISC_DITHER_ENABLE		REG_BIT(4)
-#define   PIPEMISC_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
-#define   PIPEMISC_DITHER_TYPE_SP		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 0)
-#define   PIPEMISC_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 1)
-#define   PIPEMISC_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 2)
-#define   PIPEMISC_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 3)
-#define PIPEMISC(pipe)			_MMIO_PIPE(pipe, _PIPE_MISC_A, _PIPE_MISC_B)
+#define   PIPE_MISC_BPC_MASK			REG_GENMASK(7, 5)
+#define   PIPE_MISC_BPC_8			REG_FIELD_PREP(PIPE_MISC_BPC_MASK, 0)
+#define   PIPE_MISC_BPC_10			REG_FIELD_PREP(PIPE_MISC_BPC_MASK, 1)
+#define   PIPE_MISC_BPC_6			REG_FIELD_PREP(PIPE_MISC_BPC_MASK, 2)
+#define   PIPE_MISC_BPC_12_ADLP			REG_FIELD_PREP(PIPE_MISC_BPC_MASK, 4) /* adlp+ */
+#define   PIPE_MISC_DITHER_ENABLE		REG_BIT(4)
+#define   PIPE_MISC_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
+#define   PIPE_MISC_DITHER_TYPE_SP		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 0)
+#define   PIPE_MISC_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 1)
+#define   PIPE_MISC_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 2)
+#define   PIPE_MISC_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPE_MISC_DITHER_TYPE_MASK, 3)
+#define PIPE_MISC(pipe)			_MMIO_PIPE(pipe, _PIPE_MISC_A, _PIPE_MISC_B)
 
 #define _PIPE_MISC2_A					0x7002C
 #define _PIPE_MISC2_B					0x7102C
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 2b3fe469b360..091743e32e17 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -789,9 +789,9 @@ static int iterate_bdw_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_RING_D(RING_REG);
 #undef RING_REG
 
-	MMIO_D(PIPEMISC(PIPE_A));
-	MMIO_D(PIPEMISC(PIPE_B));
-	MMIO_D(PIPEMISC(PIPE_C));
+	MMIO_D(PIPE_MISC(PIPE_A));
+	MMIO_D(PIPE_MISC(PIPE_B));
+	MMIO_D(PIPE_MISC(PIPE_C));
 	MMIO_D(_MMIO(0x1c1d0));
 	MMIO_D(GEN6_MBCUNIT_SNPCR);
 	MMIO_D(GEN7_MISCCPCTL);
-- 
2.39.2

