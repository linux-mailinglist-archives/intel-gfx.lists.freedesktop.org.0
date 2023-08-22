Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 131AD784079
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2EF10E338;
	Tue, 22 Aug 2023 12:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A509810E340
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706428; x=1724242428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ldtgqVgPeiD9A9aFvBzlEyJJgxDwTf8GkF4Cm3F8Qss=;
 b=k0fsD+bNS3XC3xOkMX0iFEI1yePO8nvQ5plVvYxxfzHkM3BCavTbKuPq
 8nYxK8Ua4PKztJ/URfgUGWb91cLHo2m/rcvRjlMX0XhT8XpuZUUu/O9n/
 yOAqnAMngqQO8mqTWGGW8EVuXAdpbVm+wWSppf6atfcw4yTzWqX4zEUos
 ASgXxH8ltdXhWOnwujCk5CMgvB9Vk+u6bwBrcqhepM6ZsDBK8eUOP6S3x
 MJPT7nMDTAqQXhlcYh5utvsJOxwy2ozpqj8OmeJtXNyqIW2E7LISRukKS
 xrxFzAFxgmcqQsMKi0JI6OO9Jurd8acw+6c4iJuLQz4xEI6+YvQV+bWaO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230286"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230286"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335262"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335262"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:26 +0530
Message-Id: <20230822121033.597447-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed bpp in
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
Cc: manasi.d.navare@intel.com
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
 drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++-----
 drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    | 16 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 ++--
 6 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ad6488e9c2b2..81b8e97e9435 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -330,7 +330,7 @@ static int afe_clk(struct intel_encoder *encoder,
 	int bpp;
 
 	if (crtc_state->dsc.compression_enable)
-		bpp = crtc_state->dsc.compressed_bpp;
+		bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 	else
 		bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
@@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	 * compressed and non-compressed bpp.
 	 */
 	if (crtc_state->dsc.compression_enable) {
-		mul = crtc_state->dsc.compressed_bpp;
+		mul = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 		div = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 	}
 
@@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		int bpp, line_time_us, byte_clk_period_ns;
 
 		if (crtc_state->dsc.compression_enable)
-			bpp = crtc_state->dsc.compressed_bpp;
+			bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 		else
 			bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
@@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
 
-	if (pipe_config->dsc.compressed_bpp) {
-		int div = pipe_config->dsc.compressed_bpp;
+	if (dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)) {
+		int div = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 		int mul = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
 		adjusted_mode->crtc_htotal =
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3d9c9b4f27f8..93969b63cdd8 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
 	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
-	vdsc_bpp = crtc_state->dsc.compressed_bpp;
+	vdsc_bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
 	cdclk = i915->display.cdclk.hw.cdclk;
 	/* fec= 0.972261, using rounding multiplier of 1000000 */
 	fec_coeff = 972261;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 858c959f7bab..fe1e376c4ba7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3385,7 +3385,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	crtc_state->pipe_bpp = bpc * 3;
 
 	crtc_state->dsc.compressed_bpp = min(crtc_state->pipe_bpp,
-					     VBT_DSC_MAX_BPP(dsc->max_bpp));
+					     VBT_DSC_MAX_BPP(dsc->max_bpp)) << 4;
 
 	/*
 	 * FIXME: This is ugly, and slice count should take DSC engine
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..f749dc4e70df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1353,7 +1353,7 @@ struct intel_crtc_state {
 	struct {
 		bool compression_enable;
 		bool dsc_split;
-		u16 compressed_bpp;
+		u16 compressed_bpp; /* U6.4 format (first 4 bits for fractional part) */
 		u8 slice_count;
 		struct drm_dsc_config config;
 	} dsc;
@@ -2108,4 +2108,18 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index 5b48bfe09d0e..32d0bee11f53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      compressed_bpp,
 					      timeslots);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp = compressed_bpp;
+			pipe_config->dsc.compressed_bpp = compressed_bpp << 4;
 			return 0;
 		}
 	}
@@ -2171,17 +2171,19 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
@@ -2260,15 +2262,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
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
@@ -2700,7 +2703,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
 	if (pipe_config->dsc.compression_enable)
-		link_bpp = pipe_config->dsc.compressed_bpp;
+		link_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 	else
 		link_bpp = intel_dp_output_bpp(pipe_config->output_format,
 					       pipe_config->pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index e4c395b4dc46..2dc6ea82c024 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
-	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
+	u16 compressed_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
 	int err;
 	int ret;
 
@@ -1040,7 +1040,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (pps0 & DSC_NATIVE_420_ENABLE)
 		vdsc_cfg->bits_per_pixel >>= 1;
 
-	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
+	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel;
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 }
-- 
2.40.1

