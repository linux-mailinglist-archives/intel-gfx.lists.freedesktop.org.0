Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A2D64417A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBB810E325;
	Tue,  6 Dec 2022 10:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD3810E318
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323546; x=1701859546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V8/se/yB3oTsOeiSVcGT5jlLT23/Y9V/RO+yOrTHPRE=;
 b=J3cK0duJXqgKdeec72toxXGJ2zE+jru3o8daYsQtzOJuJs/mEtDofhcQ
 gVtQ9v8Bi89K/eRgBttvmUbVztLMgRg1ghUrFQMek4BJSmYajPr+7a52C
 FZGY9wY9kWYaiMT6F1zQB0IRQYbti9vjk+f2DjdnU76/3RTUt6+LnWSg/
 E0epCg104YaRrj9SdPkVCbrDxyhR51p1e0FAr8PbE0SuipoCF4t1WCOA6
 E3IYBKVi6yckjAx5nGFDcsJvTgf9Vy8ktcxxXTUojS99kLkJ1h0p+t1nu
 kpjPjnmD+F7kbXpoomcOGwqzs4x0HtBXonS1Dnn/lyx15DQwc08lUE+hQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735390"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735390"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714757990"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714757990"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:24 +0530
Message-Id: <20221206104630.1263525-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 06/12] drm/i915/display: Store compressed bpp
 in U6.4 format
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

DSC parameter bits_per_pixel is stored in U6.4 format.
The 4 bits represent the fractional part of the bpp.
Currently we use compressed_bpp member of dsc structure to store
only the integral part of the bits_per_pixel.
To store the full bits_per_pixel along with the fractional part,
compressed_bpp is changed to store bpp in U6.4 formats. Intergral
part is retrieved by simply right shifting the member compressed_bpp by 4.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++----
 drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    | 16 +++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +--
 6 files changed, 38 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d16b30a2dded..f2f094330697 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -343,7 +343,7 @@ static int afe_clk(struct intel_encoder *encoder,
 	int bpp;
 
 	if (crtc_state->dsc.compression_enable)
-		bpp = crtc_state->dsc.compressed_bpp;
+		bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 	else
 		bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
@@ -903,7 +903,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	 * compressed and non-compressed bpp.
 	 */
 	if (crtc_state->dsc.compression_enable) {
-		mul = crtc_state->dsc.compressed_bpp;
+		mul = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 		div = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 	}
 
@@ -927,7 +927,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		int bpp, line_time_us, byte_clk_period_ns;
 
 		if (crtc_state->dsc.compression_enable)
-			bpp = crtc_state->dsc.compressed_bpp;
+			bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 		else
 			bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
@@ -1500,8 +1500,8 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
 
-	if (pipe_config->dsc.compressed_bpp) {
-		int div = pipe_config->dsc.compressed_bpp;
+	if (dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)) {
+		int div = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 		int mul = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
 		adjusted_mode->crtc_htotal =
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 626c47e96a6d..a73cf477b5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -517,7 +517,7 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
 	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
-	vdsc_bpp = crtc_state->dsc.compressed_bpp;
+	vdsc_bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 	cdclk = i915->display.cdclk.hw.cdclk;
 	/* fec= 0.972261, using rounding multiplier of 1000000 */
 	fec_coeff = 972261;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 572a4e3769f3..9045373974ee 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3455,7 +3455,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	crtc_state->pipe_bpp = bpc * 3;
 
 	crtc_state->dsc.compressed_bpp = min(crtc_state->pipe_bpp,
-					     VBT_DSC_MAX_BPP(dsc->max_bpp));
+					     VBT_DSC_MAX_BPP(dsc->max_bpp)) << 4;
 
 	/*
 	 * FIXME: This is ugly, and slice count should take DSC engine
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ff3ef37d099e..86d6d51e7f8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1283,7 +1283,7 @@ struct intel_crtc_state {
 	struct {
 		bool compression_enable;
 		bool dsc_split;
-		u16 compressed_bpp;
+		u16 compressed_bpp; /* U6.4 format (first 4 bits for fractional part) */
 		u8 slice_count;
 		struct drm_dsc_config config;
 	} dsc;
@@ -2054,4 +2054,18 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
+/* Returns integral part of the compressed bpp given in U6.4 format */
+static inline int
+dsc_integral_compressed_bpp(u16 compressed_bpp)
+{
+	return compressed_bpp >> 4;
+}
+
+/* Returns fractional part of the compressed bpp given in U6.4 format */
+static inline int
+dsc_fractional_compressed_bpp(u16 compressed_bpp)
+{
+	return ((compressed_bpp & 0xF) * 10000 / 16);
+}
+
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8b55da34a8f1..009a3dc72d05 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1591,7 +1591,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					      pipe_bpp,
 					      compressed_bpp);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp = compressed_bpp;
+			pipe_config->dsc.compressed_bpp = compressed_bpp << 4;
 			return 0;
 		}
 	}
@@ -1695,8 +1695,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		pipe_config->lane_count = limits->max_lane_count;
 
 		pipe_config->dsc.compressed_bpp =
-			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
-			      pipe_config->pipe_bpp);
+			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd),
+			      pipe_config->pipe_bpp << 4);
 		pipe_config->dsc.slice_count =
 			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
 							true);
@@ -1749,17 +1749,19 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (ret < 0) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Cannot compute valid DSC parameters for Input Bpp = %d "
-			    "Compressed BPP = %d\n",
+			    "Compressed BPP = %d.%d\n",
 			    pipe_config->pipe_bpp,
-			    pipe_config->dsc.compressed_bpp);
+			    dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp),
+			    dsc_fractional_compressed_bpp(pipe_config->dsc.compressed_bpp));
 		return ret;
 	}
 
 	pipe_config->dsc.compression_enable = true;
 	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp = %d "
-		    "Compressed Bpp = %d Slice Count = %d\n",
+		    "Compressed Bpp = %d.%d Slice Count = %d\n",
 		    pipe_config->pipe_bpp,
-		    pipe_config->dsc.compressed_bpp,
+		    dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp),
+		    dsc_fractional_compressed_bpp(pipe_config->dsc.compressed_bpp),
 		    pipe_config->dsc.slice_count);
 
 	return 0;
@@ -1838,15 +1840,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
 	if (pipe_config->dsc.compression_enable) {
 		drm_dbg_kms(&i915->drm,
-			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",
+			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d.%d\n",
 			    pipe_config->lane_count, pipe_config->port_clock,
 			    pipe_config->pipe_bpp,
-			    pipe_config->dsc.compressed_bpp);
+			    dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp),
+			    dsc_fractional_compressed_bpp(pipe_config->dsc.compressed_bpp));
 
 		drm_dbg_kms(&i915->drm,
 			    "DP link rate required %i available %i\n",
 			    intel_dp_link_required(adjusted_mode->crtc_clock,
-						   pipe_config->dsc.compressed_bpp),
+						   dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)),
 			    intel_dp_max_data_rate(pipe_config->port_clock,
 						   pipe_config->lane_count));
 	} else {
@@ -2272,7 +2275,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
 	if (pipe_config->dsc.compression_enable)
-		output_bpp = pipe_config->dsc.compressed_bpp;
+		output_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 	else
 		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
 						 pipe_config->pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 207b2a648d32..ed5c85229414 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -452,7 +452,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
-	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
+	u16 compressed_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 	const struct rc_parameters *rc_params;
 	struct rc_parameters *rc = NULL;
 	u8 i = 0;
@@ -1210,7 +1210,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		val = intel_de_read(dev_priv,
 				    ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
 	vdsc_cfg->bits_per_pixel = val;
-	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
+	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel;
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 }
-- 
2.25.1

