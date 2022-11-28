Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DD463A5EE
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:18:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549AB10E2CD;
	Mon, 28 Nov 2022 10:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC1F10E2C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669630720; x=1701166720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kZqSdehwnx1Rf5rGJ5m95gb1gUhdUMm3s5rCQa/3COA=;
 b=f+DLDZZhNbQpbN7wOPvAZE+bDchUqrI082A/D80qzyHeINjTUeCslwlp
 0m4wxsFOjdFmvOQY+T6g66mPYkktOmEOISmfAMZJK2QX0dBTF3CS9dnBM
 Ni42gWKCaJ6ZvRMuwFbtRB7rycVFyb+ZeM8zR7R0s6JTcX6B5PxjY8b6l
 wYHQg8XdghnQ2s6eG/hYQNsd8kR48LsQQFzkrmizUI8/+OaXZlGQiIFZo
 b/aCz8+SAMbfOhBJOXvNi3d//oSmUM90cdSENOtG/M/Zf2GjRNpM7C0r8
 s8H29NLaMFLX7E6CXznmpy1e50uBowuzJm8nsVNQAa9wbD16ykfD8MRlE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="294500136"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="294500136"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="749319780"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="749319780"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:49:16 +0530
Message-Id: <20221128101922.217217-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/display: Store compressed bpp in
 U6.4 format
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
index 98c3322b4549..f63d5824aca2 100644
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
index c2987f2c2b2e..74fbc1265450 100644
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
index f07395065a69..d6b071e79075 100644
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
@@ -2052,4 +2052,18 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index 10f9292e1e0d..5f61abb8a0e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1588,7 +1588,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					      pipe_bpp,
 					      compressed_bpp);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp = compressed_bpp;
+			pipe_config->dsc.compressed_bpp = compressed_bpp << 4;
 			return 0;
 		}
 	}
@@ -1692,8 +1692,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		pipe_config->lane_count = limits->max_lane_count;
 
 		pipe_config->dsc.compressed_bpp =
-			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
-			      pipe_config->pipe_bpp);
+			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd),
+			      pipe_config->pipe_bpp << 4);
 		pipe_config->dsc.slice_count =
 			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
 							true);
@@ -1746,17 +1746,19 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
@@ -1835,15 +1837,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
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
@@ -2252,7 +2255,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
 	if (pipe_config->dsc.compression_enable)
-		output_bpp = pipe_config->dsc.compressed_bpp;
+		output_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 	else
 		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
 						 pipe_config->pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9d3b77b41b5c..73f9ea266533 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -455,7 +455,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
-	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
+	u16 compressed_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 	const struct rc_parameters *rc_params;
 	struct rc_parameters *rc = NULL;
 	u8 i = 0;
@@ -1213,7 +1213,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
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

