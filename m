Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B287E7FA375
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 15:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86D310E2B6;
	Mon, 27 Nov 2023 14:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CCD10E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 14:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701096645; x=1732632645;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TJ357/ADtoGpV7rojIGrRLnCfp/ftYT3e+XzcFWakGM=;
 b=deQODkxGHYbqL0sV75O5CnjC0QgwrIqIRuH6wwf4UWMnUOFX1mNRX7PC
 2BMh+g0IlK2KIVmrU15FGX73pElNI4KPX6j8Kf3bSYmW0MGGIaiDXTpRn
 bTSvSsTwvHwckNLI7Bqk57yCFxlChC8IBhWF5fUIIGhRqVyExF+1DDTlv
 FMExmUUE9cZysjMsr5p4jylLU5TOnYsdvNgfoT0X921idPwtjtX4F7VdF
 t9/Jy5yjvpYG6pByS2LCSqTGkiWapxPkS01N4vud4ga7wPhNOu4zprmL9
 LlCGFMmXIEVE9WVyimRuuEAArg6MIzI45ml82QkS41SkWsmbVGJ0s2tVw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="5968541"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="5968541"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:50:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761614822"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="761614822"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2023 06:50:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Nov 2023 16:50:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Nov 2023 16:50:28 +0200
Message-ID: <20231127145028.4899-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Clean up some DISPLAY_VER checks
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

Use the >= and < operators for the DISPLAY_VER checks everywhere.
This is what most of the code does, but especially recently random
pieces of code have started doing this differently for no good reason.

Conversion done with the following cocci:
@find@
expression i915;
constant ver;
@@
(
DISPLAY_VER(i915) <= ver
|
DISPLAY_VER(i915) > ver
)

@script:python inc@
old_ver << find.ver;
new_ver;
@@
coccinelle.new_ver = str(int(old_ver) + 1)

@@
expression find.i915;
constant find.ver;
identifier inc.new_ver;
@@
(
- DISPLAY_VER(i915) <= ver
+ DISPLAY_VER(i915) < new_ver
|
- DISPLAY_VER(i915) > ver
+ DISPLAY_VER(i915) >= new_ver
)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c              | 8 ++++----
 drivers/gpu/drm/i915/display/intel_bw.c             | 7 ++++---
 drivers/gpu/drm/i915/display/intel_cdclk.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c        | 8 ++++----
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c            | 8 ++++----
 10 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index b37c0d02d500..03e8fb6caa83 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2477,7 +2477,7 @@ static unsigned int ilk_plane_wm_max(const struct drm_i915_private *dev_priv,
 		 * FIFO size is only half of the self
 		 * refresh FIFO size on ILK/SNB.
 		 */
-		if (DISPLAY_VER(dev_priv) <= 6)
+		if (DISPLAY_VER(dev_priv) < 7)
 			fifo_size /= 2;
 	}
 
@@ -2818,7 +2818,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 	usable_level = dev_priv->display.wm.num_levels - 1;
 
 	/* ILK/SNB: LP2+ watermarks only w/o sprites */
-	if (DISPLAY_VER(dev_priv) <= 6 && pipe_wm->sprites_enabled)
+	if (DISPLAY_VER(dev_priv) < 7 && pipe_wm->sprites_enabled)
 		usable_level = 1;
 
 	/* ILK/SNB/IVB: LP1+ watermarks only w/o scaling */
@@ -2961,7 +2961,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 	int last_enabled_level = num_levels - 1;
 
 	/* ILK/SNB/IVB: LP1+ watermarks only w/ single pipe */
-	if ((DISPLAY_VER(dev_priv) <= 6 || IS_IVYBRIDGE(dev_priv)) &&
+	if ((DISPLAY_VER(dev_priv) < 7 || IS_IVYBRIDGE(dev_priv)) &&
 	    config->num_pipes_active > 1)
 		last_enabled_level = 0;
 
@@ -3060,7 +3060,7 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
 		 * Always set WM_LP_SPRITE_EN when spr_val != 0, even if the
 		 * level is disabled. Doing otherwise could cause underruns.
 		 */
-		if (DISPLAY_VER(dev_priv) <= 6 && r->spr_val) {
+		if (DISPLAY_VER(dev_priv) < 7 && r->spr_val) {
 			drm_WARN_ON(&dev_priv->drm, wm_lp != 1);
 			results->wm_lp_spr[wm_lp - 1] |= WM_LP_SPRITE_ENABLE;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bef96db62c80..7f2a50b4f494 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -87,7 +87,8 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 		return ret;
 
 	dclk = val & 0xffff;
-	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0), 1000);
+	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) >= 12 ? 500 : 0),
+				1000);
 	sp->t_rp = (val & 0xff0000) >> 16;
 	sp->t_rcd = (val & 0xff000000) >> 24;
 
@@ -480,7 +481,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >= 12)
 		qi.deinterleave = max(DIV_ROUND_UP(qi.deinterleave, 2), 1);
 
-	if (DISPLAY_VER(dev_priv) > 11 && num_channels > qi.max_numchannels)
+	if (DISPLAY_VER(dev_priv) >= 12 && num_channels > qi.max_numchannels)
 		drm_warn(&dev_priv->drm, "Number of channels exceeds max number of channels.");
 	if (qi.max_numchannels != 0)
 		num_channels = min_t(u8, num_channels, qi.max_numchannels);
@@ -897,7 +898,7 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 		unsigned int idx;
 		unsigned int max_data_rate;
 
-		if (DISPLAY_VER(i915) > 11)
+		if (DISPLAY_VER(i915) >= 12)
 			idx = tgl_max_bw_index(i915, num_active_planes, i);
 		else
 			idx = icl_max_bw_index(i915, num_active_planes, i);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b93d1ad7936d..8bb6bab7c8cd 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2597,7 +2597,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 * Since PPC = 2 with bigjoiner
 		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
 		 */
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) > 13 ? 36 : 24;
+		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		int min_cdclk_bj =
 			(to_bpp_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
 			 pixel_clock) / (2 * bigjoiner_interface_bits);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 23b077f43614..9dc22fc8b3d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2627,7 +2627,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		crtc_vblank_start = 1;
 	}
 
-	if (DISPLAY_VER(dev_priv) > 3)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
 			       vsyncshift);
 
@@ -3167,7 +3167,7 @@ static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
 		break;
 	case 36:
 		/* Port output 12BPC defined for ADLP+ */
-		if (DISPLAY_VER(dev_priv) > 12)
+		if (DISPLAY_VER(dev_priv) >= 13)
 			val |= PIPE_MISC_BPC_12_ADLP;
 		break;
 	default:
@@ -3224,7 +3224,7 @@ int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc)
 	 * MIPI DSI HW readout.
 	 */
 	case PIPE_MISC_BPC_12_ADLP:
-		if (DISPLAY_VER(dev_priv) > 12)
+		if (DISPLAY_VER(dev_priv) >= 13)
 			return 36;
 		fallthrough;
 	default:
@@ -7763,7 +7763,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 	 * Cantiga+ cannot handle modes with a hsync front porch of 0.
 	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
 	 */
-	if ((DISPLAY_VER(dev_priv) > 4 || IS_G4X(dev_priv)) &&
+	if ((DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) &&
 	    mode->hsync_start == mode->hdisplay)
 		return MODE_H_ILLEGAL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4299cc452e05..79e9f1c3e241 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -49,7 +49,7 @@ struct drm_printer;
 #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
 #define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
 #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
-#define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) > 2)
+#define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
 #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
 #define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index bff4a76310c0..5a3e10e73e59 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1653,7 +1653,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	else if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_postinstall(dev_priv);
 
-	if (DISPLAY_VER(dev_priv) <= 10)
+	if (DISPLAY_VER(dev_priv) < 11)
 		de_misc_masked |= GEN8_DE_MISC_GSE;
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 147f49bd12f6..3b2482bf683f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1890,7 +1890,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 	 * Max Compressed bpp for Gen 13+ is 27bpp.
 	 * For earlier platform is 23bpp. (Bspec:49259).
 	 */
-	if (DISPLAY_VER(i915) <= 12)
+	if (DISPLAY_VER(i915) < 13)
 		return 23;
 	else
 		return 27;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b665fe6ef871..e8940acea8ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -54,7 +54,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 					  struct intel_crtc_state *crtc_state,
 					  bool dsc)
 {
-	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) <= 13 && dsc) {
+	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
 		int output_bpp = bpp;
 		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
 		int symbol_clock = crtc_state->port_clock / 32;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 958b6fd0d741..221f5c6c871b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -185,7 +185,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	/* Convert from 100ms to 100us units */
 	pps->t4 = val * 1000;
 
-	if (DISPLAY_VER(dev_priv) <= 4 &&
+	if (DISPLAY_VER(dev_priv) < 5 &&
 	    pps->t1_t2 == 0 && pps->t5 == 0 && pps->t3 == 0 && pps->tx == 0) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Panel power timings uninitialized, "
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 36e4a1e9b98f..6029bb71276c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -806,10 +806,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	if (DISPLAY_VER(dev_priv) <= 13 && !IS_ALDERLAKE_P(dev_priv))
+	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
+	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) < 13)
 		val |= EDP_Y_COORDINATE_ENABLE;
 
 	val |= EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry(intel_dp));
@@ -1094,7 +1094,7 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 		return true;
 
 	/* Not supported <13 / Wa_22012279113:adl-p */
-	if (DISPLAY_VER(dev_priv) <= 13 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
+	if (DISPLAY_VER(dev_priv) < 14 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
 		return false;
 
 	crtc_state->req_psr2_sdp_prior_scanline = true;
@@ -1221,7 +1221,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	 * over PSR2.
 	 */
 	if (crtc_state->dsc.compression_enable &&
-	    (DISPLAY_VER(dev_priv) <= 13 && !IS_ALDERLAKE_P(dev_priv))) {
+	    (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 cannot be enabled since DSC is enabled\n");
 		return false;
-- 
2.41.0

