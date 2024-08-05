Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B66FF947DAD
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A8A10E224;
	Mon,  5 Aug 2024 15:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMaZ3Q/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69BF10E224
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870468; x=1754406468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=60G/EK9iEsxIOiAaroPBS1kL7nZOEPszlyqUserKsCs=;
 b=SMaZ3Q/K6v+v0HJErpIZ2yUjkzqCFOMVXYkNFhriHf2SdlqhVtr8K7WX
 T79es6CExXmCqM/Fafultq9NQ/qmA/sDXb/xeIJC06f0Bx/dikyzI1ynJ
 K00FNACZK3HLO5fdremqfqmqJ+AEfQADTCzq9uo8HbtXakA+tEC6ijT3H
 QXG9IIMIv5cff0+eLqk6l4drXLoYXVreKWIkzKSNsOrIHdaP58sVHHLvB
 URqoohlor8hs2MSa/7ijWDiwDodl6DDayk7BdqkBMdp61kSHAxs+k7Jo3
 aPYIhpWxj3KNuIsZFKpzOgRcbF2BSGPtb6A9jPyTrVzCbXJaJ8/+K+ATo Q==;
X-CSE-ConnectionGUID: 7JN8tgPST1OIgnvY/spo8Q==
X-CSE-MsgGUID: faD0OatxRESLnUsFrrPD6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694411"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694411"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:48 -0700
X-CSE-ConnectionGUID: r/uxHk16Rai8BqB4RFH3xQ==
X-CSE-MsgGUID: VXX8PuecSEOziG+s8KShwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558869"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 2/7] drm/i915: Replace to_bpp_int() with fxp_q4_to_int()
Date: Mon,  5 Aug 2024 18:07:51 +0300
Message-ID: <20240805150802.3568970-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240805150802.3568970-1-imre.deak@intel.com>
References: <20240805150802.3568970-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Replace the to_bpp_int() helper defined by the driver with the
equivalent fxp_q4_to_int() helper defined by DRM core.

v2: Rebase on the s/drm_x16/fxp_q4 change.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c             | 9 +++++----
 drivers/gpu/drm/i915/display/intel_display.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 +------
 drivers/gpu/drm/i915/display/intel_dp.c            | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 6 +++---
 drivers/gpu/drm/i915/display/intel_fdi.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 5 +++--
 7 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ae8f6617aa70c..55dd57d1bf949 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -27,6 +27,7 @@
 
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_mipi_dsi.h>
 
 #include "i915_reg.h"
@@ -330,7 +331,7 @@ static int afe_clk(struct intel_encoder *encoder,
 	int bpp;
 
 	if (crtc_state->dsc.compression_enable)
-		bpp = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
+		bpp = fxp_q4_to_int(crtc_state->dsc.compressed_bpp_x16);
 	else
 		bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
@@ -863,7 +864,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	 * compressed and non-compressed bpp.
 	 */
 	if (crtc_state->dsc.compression_enable) {
-		mul = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
+		mul = fxp_q4_to_int(crtc_state->dsc.compressed_bpp_x16);
 		div = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 	}
 
@@ -887,7 +888,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		int bpp, line_time_us, byte_clk_period_ns;
 
 		if (crtc_state->dsc.compression_enable)
-			bpp = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
+			bpp = fxp_q4_to_int(crtc_state->dsc.compressed_bpp_x16);
 		else
 			bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
@@ -1470,7 +1471,7 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 					&pipe_config->hw.adjusted_mode;
 
 	if (pipe_config->dsc.compressed_bpp_x16) {
-		int div = to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
+		int div = fxp_q4_to_int(pipe_config->dsc.compressed_bpp_x16);
 		int mul = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
 		adjusted_mode->crtc_htotal =
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01a5faa3fea5d..8172e8e700053 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -39,6 +39,7 @@
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
@@ -4679,7 +4680,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	crtc_state->fec_enable = limits->force_fec_pipes & BIT(crtc->pipe);
 	crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
 
-	if (crtc_state->pipe_bpp > to_bpp_int(crtc_state->max_link_bpp_x16)) {
+	if (crtc_state->pipe_bpp > fxp_q4_to_int(crtc_state->max_link_bpp_x16)) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Link bpp limited to " BPP_X16_FMT "\n",
 			    crtc->base.base.id, crtc->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3df6a058a3522..5f1f3e1a9e086 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2200,18 +2200,13 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
-static inline int to_bpp_int(int bpp_x16)
-{
-	return bpp_x16 >> 4;
-}
-
 static inline int to_bpp_frac(int bpp_x16)
 {
 	return bpp_x16 & 0xf;
 }
 
 #define BPP_X16_FMT		"%d.%04d"
-#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)
 
 static inline int to_bpp_int_roundup(int bpp_x16)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c63fb59fa03cd..7355b1fd73295 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1694,8 +1694,8 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int mode_rate, link_rate, link_avail;
 
-	for (bpp = to_bpp_int(limits->link.max_bpp_x16);
-	     bpp >= to_bpp_int(limits->link.min_bpp_x16);
+	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
+	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
 	     bpp -= 2 * 3) {
 		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
@@ -2113,7 +2113,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 								adjusted_mode->hdisplay,
 								pipe_config->joiner_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
-	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
+	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
 	if (DISPLAY_VER(i915) >= 13)
 		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
@@ -2270,7 +2270,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 								pipe_config,
 								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
-	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
+	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
 	/* Compressed BPP should be less than the Input DSC bpp */
 	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c861a4263a72b..a4fbcae3139f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -309,8 +309,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	 * YUV420 is only half of the pipe bpp value.
 	 */
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
-						     to_bpp_int(limits->link.max_bpp_x16),
-						     to_bpp_int(limits->link.min_bpp_x16),
+						     fxp_q4_to_int(limits->link.max_bpp_x16),
+						     fxp_q4_to_int(limits->link.min_bpp_x16),
 						     limits,
 						     conn_state, 2 * 3, false);
 
@@ -375,7 +375,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 								  crtc_state,
 								  max_bpp / 3);
 	max_compressed_bpp = min(max_compressed_bpp,
-				 to_bpp_int(limits->link.max_bpp_x16));
+				 fxp_q4_to_int(limits->link.max_bpp_x16));
 
 	min_compressed_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
 	min_compressed_bpp = max(min_compressed_bpp,
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index d08331805d75b..222cd0e1a2bc8 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -306,7 +306,7 @@ int intel_fdi_link_freq(struct drm_i915_private *i915,
 bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
 {
 	int pipe_bpp = min(crtc_state->pipe_bpp,
-			   to_bpp_int(crtc_state->max_link_bpp_x16));
+			   fxp_q4_to_int(crtc_state->max_link_bpp_x16));
 
 	pipe_bpp = rounddown(pipe_bpp, 2 * 3);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b9687b7692b8b..99902fbfeec47 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -8,6 +8,7 @@
 #include <linux/limits.h>
 
 #include <drm/display/drm_dsc_helper.h>
+#include <drm/drm_fixed.h>
 
 #include "i915_drv.h"
 #include "intel_crtc.h"
@@ -76,7 +77,7 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
 static void
 calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 {
-	int bpp = to_bpp_int(vdsc_cfg->bits_per_pixel);
+	int bpp = fxp_q4_to_int(vdsc_cfg->bits_per_pixel);
 	int bpc = vdsc_cfg->bits_per_component;
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	int uncompressed_bpg_rate;
@@ -263,7 +264,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
-	u16 compressed_bpp = to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
+	u16 compressed_bpp = fxp_q4_to_int(pipe_config->dsc.compressed_bpp_x16);
 	int err;
 	int ret;
 
-- 
2.44.2

