Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF49342A94
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Mar 2021 05:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 255636EB1E;
	Sat, 20 Mar 2021 04:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74B26EB30
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Mar 2021 04:42:56 +0000 (UTC)
IronPort-SDR: ZZk7RKBXZLVO58NHe60qiwT+GNEm+6LL9BSrPRtGlvryiCha2kpeC3+cvRPYOL9azPGbEcFpoi
 CBpxvt5em9ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="275080362"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="275080362"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 21:42:56 -0700
IronPort-SDR: vWjywrxRmFX0R71i9OJEKSh3naDb1AbUXMREHz3U1DeESe75LVYHRYY8TNrER9YlgkDclT0rjE
 ExVRCHD39j6w==
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="440326957"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 21:42:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 21:42:42 -0700
Message-Id: <20210320044245.3920043-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210320044245.3920043-1-matthew.d.roper@intel.com>
References: <20210320044245.3920043-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/display: Eliminate most usage of
 INTEL_GEN()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use Coccinelle to convert most of the usage of INTEL_GEN() and IS_GEN()
in the display code to use DISPLAY_VER() comparisons instead.  The
following semantic patch was used:

        @@ expression dev_priv, E; @@
        - INTEL_GEN(dev_priv) == E
        + IS_DISPLAY_VER(dev_priv, E)

        @@ expression dev_priv; @@
        - INTEL_GEN(dev_priv)
        + DISPLAY_VER(dev_priv)

        @@ expression dev_priv; expression E; @@
        - IS_GEN(dev_priv, E)
        + IS_DISPLAY_VER(dev_priv, E)

        @@
        expression dev_priv;
        expression from, until;
        @@
        - IS_GEN_RANGE(dev_priv, from, until)
        + IS_DISPLAY_RANGE(dev_priv, from, until)

There are still some display-related uses of INTEL_GEN() in intel_pm.c
(watermark code) and i915_irq.c.  Those will be updated separately.

v2:
 - Use new IS_DISPLAY_RANGE and IS_DISPLAY_VER helpers.  (Jani)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by(v1): Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  52 ++--
 drivers/gpu/drm/i915/display/icl_dsi.c        |  14 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  18 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  58 ++---
 drivers/gpu/drm/i915/display/intel_color.c    |  28 +--
 .../gpu/drm/i915/display/intel_combo_phy.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  12 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  20 +-
 drivers/gpu/drm/i915/display/intel_csr.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 104 ++++----
 .../drm/i915/display/intel_ddi_buf_trans.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 236 +++++++++---------
 .../drm/i915/display/intel_display_debugfs.c  |  44 ++--
 .../drm/i915/display/intel_display_power.c    |  52 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  46 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  10 +-
 .../drm/i915/display/intel_dp_link_training.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  20 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  20 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  56 ++---
 .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  28 +--
 drivers/gpu/drm/i915/display/intel_lvds.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  18 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  12 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  46 ++--
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   4 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   8 +-
 .../drm/i915/display/skl_universal_plane.c    |  67 ++---
 43 files changed, 568 insertions(+), 567 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 95933cc13d58..6919ede20b19 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -128,7 +128,7 @@ static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
 	else if (IS_IVYBRIDGE(dev_priv))
 		return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B ||
 			i9xx_plane == PLANE_C;
-	else if (INTEL_GEN(dev_priv) >= 4)
+	else if (DISPLAY_VER(dev_priv) >= 4)
 		return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B;
 	else
 		return i9xx_plane == PLANE_A;
@@ -141,9 +141,9 @@ static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 
 	if (IS_CHERRYVIEW(dev_priv))
 		return i9xx_plane == PLANE_B;
-	else if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		return false;
-	else if (IS_GEN(dev_priv, 4))
+	else if (IS_DISPLAY_VER(dev_priv, 4))
 		return i9xx_plane == PLANE_C;
 	else
 		return i9xx_plane == PLANE_B ||
@@ -210,7 +210,7 @@ static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
 		return 0;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 4 &&
+	if (DISPLAY_VER(dev_priv) >= 4 &&
 	    fb->modifier == I915_FORMAT_MOD_X_TILED)
 		dspcntr |= DISPPLANE_TILED;
 
@@ -249,7 +249,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 
 	intel_add_fb_offsets(&src_x, &src_y, plane_state, 0);
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		offset = intel_plane_compute_aligned_offset(&src_x, &src_y,
 							    plane_state, 0);
 	else
@@ -266,7 +266,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 	 * Linear surfaces seem to work just fine, even on hsw/bdw
 	 * despite them not using the linear offset anymore.
 	 */
-	if (INTEL_GEN(dev_priv) >= 4 && fb->modifier == I915_FORMAT_MOD_X_TILED) {
+	if (DISPLAY_VER(dev_priv) >= 4 && fb->modifier == I915_FORMAT_MOD_X_TILED) {
 		u32 alignment = intel_surf_alignment(fb, 0);
 		int cpp = fb->format->cpp[0];
 
@@ -305,7 +305,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		drm_WARN_ON(&dev_priv->drm, src_x > 8191 || src_y > 4095);
-	} else if (INTEL_GEN(dev_priv) >= 4 &&
+	} else if (DISPLAY_VER(dev_priv) >= 4 &&
 		   fb->modifier == I915_FORMAT_MOD_X_TILED) {
 		drm_WARN_ON(&dev_priv->drm, src_x > 4095 || src_y > 4095);
 	}
@@ -363,7 +363,7 @@ static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->csc_enable)
 		dspcntr |= DISPPLANE_PIPE_CSC_ENABLE;
 
-	if (INTEL_GEN(dev_priv) < 5)
+	if (DISPLAY_VER(dev_priv) < 5)
 		dspcntr |= DISPPLANE_SEL_PIPE(crtc->pipe);
 
 	return dspcntr;
@@ -437,7 +437,7 @@ static void i9xx_update_plane(struct intel_plane *plane,
 
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		dspaddr_offset = plane_state->color_plane[0].offset;
 	else
 		dspaddr_offset = linear_offset;
@@ -447,7 +447,7 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
 			  plane_state->color_plane[0].stride);
 
-	if (INTEL_GEN(dev_priv) < 4) {
+	if (DISPLAY_VER(dev_priv) < 4) {
 		/*
 		 * PLANE_A doesn't actually have a full window
 		 * generator but let's assume we still need to
@@ -468,7 +468,7 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
 				  (y << 16) | x);
-	} else if (INTEL_GEN(dev_priv) >= 4) {
+	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
 				  linear_offset);
 		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
@@ -481,7 +481,7 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
@@ -514,7 +514,7 @@ static void i9xx_disable_plane(struct intel_plane *plane,
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
@@ -669,7 +669,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 
 	ret = val & DISPLAY_PLANE_ENABLE;
 
-	if (INTEL_GEN(dev_priv) >= 5)
+	if (DISPLAY_VER(dev_priv) >= 5)
 		*pipe = plane->pipe;
 	else
 		*pipe = (val & DISPPLANE_SEL_PIPE_MASK) >>
@@ -729,7 +729,7 @@ i9xx_plane_max_stride(struct intel_plane *plane,
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 
-	if (INTEL_GEN(dev_priv) >= 3) {
+	if (DISPLAY_VER(dev_priv) >= 3) {
 		if (modifier == I915_FORMAT_MOD_X_TILED)
 			return 8*1024;
 		else
@@ -779,7 +779,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
 	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
 	 */
-	if (HAS_FBC(dev_priv) && INTEL_GEN(dev_priv) < 4 &&
+	if (HAS_FBC(dev_priv) && DISPLAY_VER(dev_priv) < 4 &&
 	    INTEL_NUM_PIPES(dev_priv) == 2)
 		plane->i9xx_plane = (enum i9xx_plane_id) !pipe;
 	else
@@ -797,7 +797,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		formats = vlv_primary_formats;
 		num_formats = ARRAY_SIZE(vlv_primary_formats);
-	} else if (INTEL_GEN(dev_priv) >= 4) {
+	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		/*
 		 * WaFP16GammaEnabling:ivb
 		 * "Workaround : When using the 64-bit format, the plane
@@ -823,7 +823,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		num_formats = ARRAY_SIZE(i8xx_primary_formats);
 	}
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		plane_funcs = &i965_plane_funcs;
 	else
 		plane_funcs = &i8xx_plane_funcs;
@@ -838,7 +838,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->min_cdclk = i9xx_plane_min_cdclk;
 
 	if (HAS_GMCH(dev_priv)) {
-		if (INTEL_GEN(dev_priv) >= 4)
+		if (DISPLAY_VER(dev_priv) >= 4)
 			plane->max_stride = i965_plane_max_stride;
 		else
 			plane->max_stride = i9xx_plane_max_stride;
@@ -863,17 +863,17 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = bdw_primary_enable_flip_done;
 		plane->disable_flip_done = bdw_primary_disable_flip_done;
-	} else if (INTEL_GEN(dev_priv) >= 7) {
+	} else if (DISPLAY_VER(dev_priv) >= 7) {
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = ivb_primary_enable_flip_done;
 		plane->disable_flip_done = ivb_primary_disable_flip_done;
-	} else if (INTEL_GEN(dev_priv) >= 5) {
+	} else if (DISPLAY_VER(dev_priv) >= 5) {
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = ilk_primary_enable_flip_done;
 		plane->disable_flip_done = ilk_primary_disable_flip_done;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
 					       0, plane_funcs,
 					       formats, num_formats,
@@ -895,14 +895,14 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		supported_rotations =
 			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
 			DRM_MODE_REFLECT_X;
-	} else if (INTEL_GEN(dev_priv) >= 4) {
+	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		supported_rotations =
 			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
 	} else {
 		supported_rotations = DRM_MODE_ROTATE_0;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		drm_plane_create_rotation_property(&plane->base,
 						   DRM_MODE_ROTATE_0,
 						   supported_rotations);
@@ -985,7 +985,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		if (val & DISPPLANE_TILED) {
 			plane_config->tiling = I915_TILING_X;
 			fb->modifier = I915_FORMAT_MOD_X_TILED;
@@ -1006,7 +1006,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
 		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
-	} else if (INTEL_GEN(dev_priv) >= 4) {
+	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		if (plane_config->tiling)
 			offset = intel_de_read(dev_priv,
 					       DSPTILEOFF(i9xx_plane));
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 7f2abc088a66..9282978060b0 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -457,7 +457,7 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
 
 		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
-		if (IS_JSL_EHL(dev_priv) || (INTEL_GEN(dev_priv) >= 12)) {
+		if (IS_JSL_EHL(dev_priv) || (DISPLAY_VER(dev_priv) >= 12)) {
 			tmp = intel_de_read(dev_priv,
 					    ICL_PORT_PCS_DW1_AUX(phy));
 			tmp &= ~LATENCY_OPTIM_MASK;
@@ -592,7 +592,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	 * a value '0' inside TA_PARAM_REGISTERS otherwise
 	 * leave all fields at HW default values.
 	 */
-	if (IS_GEN(dev_priv, 11)) {
+	if (IS_DISPLAY_VER(dev_priv, 11)) {
 		if (afe_clk(encoder, crtc_state) <= 800000) {
 			for_each_dsi_port(port, intel_dsi->ports) {
 				tmp = intel_de_read(dev_priv,
@@ -692,7 +692,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		if (INTEL_GEN(dev_priv) >= 12)
+		if (DISPLAY_VER(dev_priv) >= 12)
 			val |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 		else
 			val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
@@ -774,7 +774,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 			}
 		}
 
-		if (INTEL_GEN(dev_priv) >= 12) {
+		if (DISPLAY_VER(dev_priv) >= 12) {
 			if (is_vid_mode(intel_dsi))
 				tmp |= BLANKING_PACKET_ENABLE;
 		}
@@ -1020,7 +1020,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	/* program TRANS_VBLANK register, should be same as vtotal programmed */
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
 			intel_de_write(dev_priv, VBLANK(dsi_trans),
@@ -1158,7 +1158,7 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 	gen11_dsi_configure_transcoder(encoder, crtc_state);
 
 	/* Step 4l: Gate DDI clocks */
-	if (IS_GEN(dev_priv, 11))
+	if (IS_DISPLAY_VER(dev_priv, 11))
 		gen11_dsi_gate_clocks(encoder);
 }
 
@@ -1534,7 +1534,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
-	int dsc_max_bpc = INTEL_GEN(dev_priv) >= 12 ? 12 : 10;
+	int dsc_max_bpc = DISPLAY_VER(dev_priv) >= 12 ? 12 : 10;
 	bool use_dsc;
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 27f7d7109ca3..2b928795755e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -332,7 +332,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 	    plane_state->hw.fb->format->is_yuv &&
 	    plane_state->hw.fb->format->num_planes > 1) {
 		struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-		if (IS_GEN(dev_priv, 9) &&
+		if (IS_DISPLAY_VER(dev_priv, 9) &&
 		    !IS_GEMINILAKE(dev_priv)) {
 			mode = SKL_PS_SCALER_MODE_NV12;
 		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
@@ -351,7 +351,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 			if (linked)
 				mode |= PS_PLANE_Y_SEL(linked->id);
 		}
-	} else if (INTEL_GEN(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)) {
 		mode = PS_SCALER_MODE_NORMAL;
 	} else if (num_scalers_need == 1 && intel_crtc->num_scalers > 1) {
 		/*
@@ -460,7 +460,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 				 * isn't necessary to change between HQ and dyn mode
 				 * on those platforms.
 				 */
-				if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+				if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 					continue;
 
 				plane = drm_plane_from_index(&dev_priv->drm, i);
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f7de55707746..7ab9d1669f09 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -248,7 +248,7 @@ static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_sta
 			break;
 	}
 
-	if (INTEL_GEN(dev_priv) < 12 && adjusted_mode->crtc_clock > 148500)
+	if (DISPLAY_VER(dev_priv) < 12 && adjusted_mode->crtc_clock > 148500)
 		i = ARRAY_SIZE(hdmi_audio_clock);
 
 	if (i == ARRAY_SIZE(hdmi_audio_clock)) {
@@ -586,14 +586,14 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 	unsigned int hblank_early_prog, samples_room;
 	unsigned int val;
 
-	if (INTEL_GEN(i915) < 11)
+	if (DISPLAY_VER(i915) < 11)
 		return;
 
 	val = intel_de_read(i915, AUD_CONFIG_BE);
 
-	if (INTEL_GEN(i915) == 11)
+	if (IS_DISPLAY_VER(i915, 11))
 		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
-	else if (INTEL_GEN(i915) >= 12)
+	else if (DISPLAY_VER(i915) >= 12)
 		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
 
 	if (crtc_state->dsc.compression_enable &&
@@ -933,7 +933,7 @@ void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
 		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
-	} else if (IS_HASWELL(dev_priv) || INTEL_GEN(dev_priv) >= 8) {
+	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
 		dev_priv->display.audio_codec_enable = hsw_audio_codec_enable;
 		dev_priv->display.audio_codec_disable = hsw_audio_codec_disable;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
@@ -1010,7 +1010,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);
 
 	if (dev_priv->audio_power_refcount++ == 0) {
-		if (INTEL_GEN(dev_priv) >= 9) {
+		if (DISPLAY_VER(dev_priv) >= 9) {
 			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
 				       dev_priv->audio_freq_cntrl);
 			drm_dbg_kms(&dev_priv->drm,
@@ -1022,7 +1022,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, true);
 
-		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
 				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
 	}
@@ -1050,7 +1050,7 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	unsigned long cookie;
 	u32 tmp;
 
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		return;
 
 	cookie = i915_audio_component_get_power(kdev);
@@ -1296,7 +1296,7 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 9) {
 		dev_priv->audio_freq_cntrl = intel_de_read(dev_priv,
 							   AUD_FREQ_CNTRL);
 		drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 63bc8cdc1d98..182db9de03c3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -544,7 +544,7 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
 static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
 				    bool alternate)
 {
-	switch (INTEL_GEN(i915)) {
+	switch (DISPLAY_VER(i915)) {
 	case 2:
 		return alternate ? 66667 : 48000;
 	case 3:
@@ -610,7 +610,7 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 	 * Only parse SDVO mappings on gens that could have SDVO. This isn't
 	 * accurate and doesn't have to be, as long as it's not too strict.
 	 */
-	if (!IS_GEN_RANGE(i915, 3, 7)) {
+	if (!IS_DISPLAY_RANGE(i915, 3, 7)) {
 		drm_dbg_kms(&i915->drm, "Skipping SDVO device mapping\n");
 		return;
 	}
@@ -684,7 +684,7 @@ parse_driver_features(struct drm_i915_private *i915,
 	if (!driver)
 		return;
 
-	if (INTEL_GEN(i915) >= 5) {
+	if (DISPLAY_VER(i915) >= 5) {
 		/*
 		 * Note that we consider BDB_DRIVER_FEATURE_INT_SDVO_LVDS
 		 * to mean "eDP". The VBT spec doesn't agree with that
@@ -918,7 +918,7 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	 */
 	if (bdb->version >= 205 &&
 	    (IS_GEN9_BC(i915) || IS_GEMINILAKE(i915) ||
-	     INTEL_GEN(i915) >= 10)) {
+	     DISPLAY_VER(i915) >= 10)) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
 			i915->vbt.psr.tp1_wakeup_time_us = 500;
@@ -1806,7 +1806,7 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 	struct drm_i915_private *i915 = devdata->i915;
 	bool is_hdmi;
 
-	if (port != PORT_A || INTEL_GEN(i915) >= 12)
+	if (port != PORT_A || DISPLAY_VER(i915) >= 12)
 		return;
 
 	if (!(devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING))
@@ -2647,8 +2647,8 @@ bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
 		dvo_port = child->dvo_port;
 
 		if (dvo_port == DVO_PORT_MIPIA ||
-		    (dvo_port == DVO_PORT_MIPIB && INTEL_GEN(i915) >= 11) ||
-		    (dvo_port == DVO_PORT_MIPIC && INTEL_GEN(i915) < 11)) {
+		    (dvo_port == DVO_PORT_MIPIB && DISPLAY_VER(i915) >= 11) ||
+		    (dvo_port == DVO_PORT_MIPIC && DISPLAY_VER(i915) < 11)) {
 			if (port)
 				*port = dvo_port - DVO_PORT_MIPIA;
 			return true;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d122b9965532..584ab5ce4106 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -77,7 +77,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 
 	qi->num_points = dram_info->num_qgv_points;
 
-	if (IS_GEN(dev_priv, 12))
+	if (IS_DISPLAY_VER(dev_priv, 12))
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = 4;
@@ -89,7 +89,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->t_bl = 16;
 			break;
 		}
-	else if (IS_GEN(dev_priv, 11))
+	else if (IS_DISPLAY_VER(dev_priv, 11))
 		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
 
 	if (drm_WARN_ON(&dev_priv->drm,
@@ -271,9 +271,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 		icl_get_bw_info(dev_priv, &adls_sa_info);
 	else if (IS_ROCKETLAKE(dev_priv))
 		icl_get_bw_info(dev_priv, &rkl_sa_info);
-	else if (IS_GEN(dev_priv, 12))
+	else if (IS_DISPLAY_VER(dev_priv, 12))
 		icl_get_bw_info(dev_priv, &tgl_sa_info);
-	else if (IS_GEN(dev_priv, 11))
+	else if (IS_DISPLAY_VER(dev_priv, 11))
 		icl_get_bw_info(dev_priv, &icl_sa_info);
 }
 
@@ -533,7 +533,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	u32 mask = (1 << num_qgv_points) - 1;
 
 	/* FIXME earlier gens need some checks too */
-	if (INTEL_GEN(dev_priv) < 11)
+	if (DISPLAY_VER(dev_priv) < 11)
 		return 0;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 83678feb8897..4be848d0d156 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1375,7 +1375,7 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 {
 	u32 val, ratio;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_readout_refclk(dev_priv, cdclk_config);
 	else if (IS_CANNONLAKE(dev_priv))
 		cnl_readout_refclk(dev_priv, cdclk_config);
@@ -1397,7 +1397,7 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 	 * CNL+ have the ratio directly in the PLL enable register, gen9lp had
 	 * it in a separate PLL control register.
 	 */
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		ratio = val & CNL_CDCLK_PLL_RATIO_MASK;
 	else
 		ratio = intel_de_read(dev_priv, BXT_DE_PLL_CTL) & BXT_DE_PLL_RATIO_MASK;
@@ -1413,9 +1413,9 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 
 	bxt_de_pll_readout(dev_priv, cdclk_config);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		cdclk_config->bypass = cdclk_config->ref / 2;
-	else if (INTEL_GEN(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		cdclk_config->bypass = 50000;
 	else
 		cdclk_config->bypass = cdclk_config->ref;
@@ -1433,7 +1433,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		break;
 	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
 		drm_WARN(&dev_priv->drm,
-			 IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 10,
+			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 10,
 			 "Unsupported divider\n");
 		div = 3;
 		break;
@@ -1441,7 +1441,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		div = 4;
 		break;
 	case BXT_CDCLK_CD2X_DIV_SEL_4:
-		drm_WARN(&dev_priv->drm, INTEL_GEN(dev_priv) >= 10,
+		drm_WARN(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 10,
 			 "Unsupported divider\n");
 		div = 8;
 		break;
@@ -1530,12 +1530,12 @@ static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 
 static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (pipe == INVALID_PIPE)
 			return TGL_CDCLK_CD2X_PIPE_NONE;
 		else
 			return TGL_CDCLK_CD2X_PIPE(pipe);
-	} else if (INTEL_GEN(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		if (pipe == INVALID_PIPE)
 			return ICL_CDCLK_CD2X_PIPE_NONE;
 		else
@@ -1558,7 +1558,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	int ret;
 
 	/* Inform power controller of upcoming frequency change. */
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
 					SKL_CDCLK_PREPARE_FOR_CHANGE,
 					SKL_CDCLK_READY_FOR_CHANGE,
@@ -1591,7 +1591,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		break;
 	case 3:
 		drm_WARN(&dev_priv->drm,
-			 IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 10,
+			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 10,
 			 "Unsupported divider\n");
 		divider = BXT_CDCLK_CD2X_DIV_SEL_1_5;
 		break;
@@ -1599,13 +1599,13 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		divider = BXT_CDCLK_CD2X_DIV_SEL_2;
 		break;
 	case 8:
-		drm_WARN(&dev_priv->drm, INTEL_GEN(dev_priv) >= 10,
+		drm_WARN(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 10,
 			 "Unsupported divider\n");
 		divider = BXT_CDCLK_CD2X_DIV_SEL_4;
 		break;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 10) {
+	if (DISPLAY_VER(dev_priv) >= 10) {
 		if (dev_priv->cdclk.hw.vco != 0 &&
 		    dev_priv->cdclk.hw.vco != vco)
 			cnl_cdclk_pll_disable(dev_priv);
@@ -1636,7 +1636,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	if (pipe != INVALID_PIPE)
 		intel_wait_for_vblank(dev_priv, pipe);
 
-	if (INTEL_GEN(dev_priv) >= 10) {
+	if (DISPLAY_VER(dev_priv) >= 10) {
 		ret = sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
 					      cdclk_config->voltage_level);
 	} else {
@@ -1661,7 +1661,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	intel_update_cdclk(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		/*
 		 * Can't read out the voltage level :(
 		 * Let's just assume everything is as expected.
@@ -1795,7 +1795,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
  */
 void intel_cdclk_init_hw(struct drm_i915_private *i915)
 {
-	if (IS_GEN9_LP(i915) || INTEL_GEN(i915) >= 10)
+	if (IS_GEN9_LP(i915) || DISPLAY_VER(i915) >= 10)
 		bxt_cdclk_init_hw(i915);
 	else if (IS_GEN9_BC(i915))
 		skl_cdclk_init_hw(i915);
@@ -1810,7 +1810,7 @@ void intel_cdclk_init_hw(struct drm_i915_private *i915)
  */
 void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 10 || IS_GEN9_LP(i915))
+	if (DISPLAY_VER(i915) >= 10 || IS_GEN9_LP(i915))
 		bxt_cdclk_uninit_hw(i915);
 	else if (IS_GEN9_BC(i915))
 		skl_cdclk_uninit_hw(i915);
@@ -1850,7 +1850,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
 					const struct intel_cdclk_config *b)
 {
 	/* Older hw doesn't have the capability */
-	if (INTEL_GEN(dev_priv) < 10 && !IS_GEN9_LP(dev_priv))
+	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEN9_LP(dev_priv))
 		return false;
 
 	return a->cdclk != b->cdclk &&
@@ -1998,9 +1998,9 @@ static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int pixel_rate = crtc_state->pixel_rate;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		return DIV_ROUND_UP(pixel_rate, 2);
-	else if (IS_GEN(dev_priv, 9) ||
+	else if (IS_DISPLAY_VER(dev_priv, 9) ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		return pixel_rate;
 	else if (IS_CHERRYVIEW(dev_priv))
@@ -2051,7 +2051,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
 			/* Display WA #1145: glk,cnl */
 			min_cdclk = max(316800, min_cdclk);
-		} else if (IS_GEN(dev_priv, 9) || IS_BROADWELL(dev_priv)) {
+		} else if (IS_DISPLAY_VER(dev_priv, 9) || IS_BROADWELL(dev_priv)) {
 			/* Display WA #1144: skl,bxt */
 			min_cdclk = max(432000, min_cdclk);
 		}
@@ -2061,7 +2061,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * According to BSpec, "The CD clock frequency must be at least twice
 	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
 	 */
-	if (crtc_state->has_audio && INTEL_GEN(dev_priv) >= 9)
+	if (crtc_state->has_audio && DISPLAY_VER(dev_priv) >= 9)
 		min_cdclk = max(2 * 96000, min_cdclk);
 
 	/*
@@ -2588,14 +2588,14 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 {
 	int max_cdclk_freq = dev_priv->max_cdclk_freq;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		return 2 * max_cdclk_freq;
-	else if (IS_GEN(dev_priv, 9) ||
+	else if (IS_DISPLAY_VER(dev_priv, 9) ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		return max_cdclk_freq;
 	else if (IS_CHERRYVIEW(dev_priv))
 		return max_cdclk_freq*95/100;
-	else if (INTEL_GEN(dev_priv) < 4)
+	else if (DISPLAY_VER(dev_priv) < 4)
 		return 2*max_cdclk_freq*90/100;
 	else
 		return max_cdclk_freq*90/100;
@@ -2616,7 +2616,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 			dev_priv->max_cdclk_freq = 552000;
 		else
 			dev_priv->max_cdclk_freq = 556800;
-	} else if (INTEL_GEN(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		if (dev_priv->cdclk.hw.ref == 24000)
 			dev_priv->max_cdclk_freq = 648000;
 		else
@@ -2831,7 +2831,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 		freq = pch_rawclk(dev_priv);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		freq = vlv_hrawclk(dev_priv);
-	else if (INTEL_GEN(dev_priv) >= 3)
+	else if (DISPLAY_VER(dev_priv) >= 3)
 		freq = i9xx_hrawclk(dev_priv);
 	else
 		/* no rawclk on other platforms, or no need to know it */
@@ -2852,7 +2852,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
 		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
 		dev_priv->cdclk.table = rkl_cdclk_table;
-	} else if (INTEL_GEN(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		dev_priv->display.set_cdclk = bxt_set_cdclk;
 		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
 		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
@@ -2864,7 +2864,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
 		dev_priv->display.calc_voltage_level = ehl_calc_voltage_level;
 		dev_priv->cdclk.table = icl_cdclk_table;
-	} else if (INTEL_GEN(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		dev_priv->display.set_cdclk = bxt_set_cdclk;
 		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
 		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
@@ -2906,7 +2906,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEN9_LP(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEN9_LP(dev_priv))
 		dev_priv->display.get_cdclk = bxt_get_cdclk;
 	else if (IS_GEN9_BC(dev_priv))
 		dev_priv->display.get_cdclk = skl_get_cdclk;
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ff7dcb7088bf..37e275509a36 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -173,7 +173,7 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
 		       coeff[6] << 16 | coeff[7]);
 	intel_de_write(dev_priv, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
 
-	if (INTEL_GEN(dev_priv) >= 7) {
+	if (DISPLAY_VER(dev_priv) >= 7) {
 		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_HI(pipe),
 			       postoff[0]);
 		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_ME(pipe),
@@ -225,7 +225,7 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 	 */
 	return crtc_state->limited_color_range &&
 		(IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
-		 IS_GEN_RANGE(dev_priv, 9, 10));
+		 IS_DISPLAY_RANGE(dev_priv, 9, 10));
 }
 
 static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
@@ -530,7 +530,7 @@ static void skl_color_commit(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_load_csc_matrix(crtc_state);
 	else
 		ilk_load_csc_matrix(crtc_state);
@@ -737,7 +737,7 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 	 * ToDo: Extend the ABI to be able to program values
 	 * from 3.0 to 7.0
 	 */
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
 				    1 << 16);
 		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
@@ -1222,7 +1222,7 @@ static bool need_plane_update(struct intel_plane *plane,
 	 * We have to reconfigure that even if the plane is inactive.
 	 */
 	return crtc_state->active_planes & BIT(plane->id) ||
-		(INTEL_GEN(dev_priv) < 9 &&
+		(DISPLAY_VER(dev_priv) < 9 &&
 		 plane->id == PLANE_PRIMARY);
 }
 
@@ -1709,7 +1709,7 @@ int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_stat
 		else
 			return i9xx_gamma_precision(crtc_state);
 	} else {
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (DISPLAY_VER(dev_priv) >= 11)
 			return icl_gamma_precision(crtc_state);
 		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
 			return glk_gamma_precision(crtc_state);
@@ -2105,7 +2105,7 @@ void intel_color_init(struct intel_crtc *crtc)
 			dev_priv->display.color_commit = i9xx_color_commit;
 			dev_priv->display.load_luts = chv_load_luts;
 			dev_priv->display.read_luts = chv_read_luts;
-		} else if (INTEL_GEN(dev_priv) >= 4) {
+		} else if (DISPLAY_VER(dev_priv) >= 4) {
 			dev_priv->display.color_check = i9xx_color_check;
 			dev_priv->display.color_commit = i9xx_color_commit;
 			dev_priv->display.load_luts = i965_load_luts;
@@ -2117,31 +2117,31 @@ void intel_color_init(struct intel_crtc *crtc)
 			dev_priv->display.read_luts = i9xx_read_luts;
 		}
 	} else {
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (DISPLAY_VER(dev_priv) >= 11)
 			dev_priv->display.color_check = icl_color_check;
-		else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 			dev_priv->display.color_check = glk_color_check;
-		else if (INTEL_GEN(dev_priv) >= 7)
+		else if (DISPLAY_VER(dev_priv) >= 7)
 			dev_priv->display.color_check = ivb_color_check;
 		else
 			dev_priv->display.color_check = ilk_color_check;
 
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			dev_priv->display.color_commit = skl_color_commit;
 		else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 			dev_priv->display.color_commit = hsw_color_commit;
 		else
 			dev_priv->display.color_commit = ilk_color_commit;
 
-		if (INTEL_GEN(dev_priv) >= 11) {
+		if (DISPLAY_VER(dev_priv) >= 11) {
 			dev_priv->display.load_luts = icl_load_luts;
 			dev_priv->display.read_luts = icl_read_luts;
 		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
 			dev_priv->display.load_luts = glk_load_luts;
 			dev_priv->display.read_luts = glk_read_luts;
-		} else if (INTEL_GEN(dev_priv) >= 8) {
+		} else if (DISPLAY_VER(dev_priv) >= 8) {
 			dev_priv->display.load_luts = bdw_load_luts;
-		} else if (INTEL_GEN(dev_priv) >= 7) {
+		} else if (DISPLAY_VER(dev_priv) >= 7) {
 			dev_priv->display.load_luts = ivb_load_luts;
 		} else {
 			dev_priv->display.load_luts = ilk_load_luts;
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index c55813c6194a..5df57d16a401 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -278,7 +278,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 	if (!icl_combo_phy_enabled(dev_priv, phy))
 		return false;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
@@ -401,7 +401,7 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
 
 skip_phy_misc:
-		if (INTEL_GEN(dev_priv) >= 12) {
+		if (DISPLAY_VER(dev_priv) >= 12) {
 			val = intel_de_read(dev_priv, ICL_PORT_TX_DW8_LN0(phy));
 			val &= ~ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK;
 			val |= ICL_PORT_TX_DW8_ODCC_CLK_SEL;
@@ -473,7 +473,7 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 
 void intel_combo_phy_init(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11)
+	if (DISPLAY_VER(i915) >= 11)
 		icl_combo_phys_init(i915);
 	else if (IS_CANNONLAKE(i915))
 		cnl_combo_phys_init(i915);
@@ -481,7 +481,7 @@ void intel_combo_phy_init(struct drm_i915_private *i915)
 
 void intel_combo_phy_uninit(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11)
+	if (DISPLAY_VER(i915) >= 11)
 		icl_combo_phys_uninit(i915);
 	else if (IS_CANNONLAKE(i915))
 		cnl_combo_phys_uninit(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 7f3d11c5ce3e..580d652c3276 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -165,7 +165,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 adpa;
 
-	if (INTEL_GEN(dev_priv) >= 5)
+	if (DISPLAY_VER(dev_priv) >= 5)
 		adpa = ADPA_HOTPLUG_BITS;
 	else
 		adpa = 0;
@@ -356,7 +356,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 		 * DAC limit supposedly 355 MHz.
 		 */
 		max_clock = 270000;
-	else if (IS_GEN_RANGE(dev_priv, 3, 4))
+	else if (IS_DISPLAY_RANGE(dev_priv, 3, 4))
 		max_clock = 400000;
 	else
 		max_clock = 350000;
@@ -711,7 +711,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 	/* Set the border color to purple. */
 	intel_uncore_write(uncore, bclrpat_reg, 0x500050);
 
-	if (!IS_GEN(dev_priv, 2)) {
+	if (!IS_DISPLAY_VER(dev_priv, 2)) {
 		u32 pipeconf = intel_uncore_read(uncore, pipeconf_reg);
 		intel_uncore_write(uncore,
 				   pipeconf_reg,
@@ -890,7 +890,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (ret > 0) {
 		if (intel_crt_detect_ddc(connector))
 			status = connector_status_connected;
-		else if (INTEL_GEN(dev_priv) < 4)
+		else if (DISPLAY_VER(dev_priv) < 4)
 			status = intel_crt_load_detect(crt,
 				to_intel_crtc(connector->state->crtc)->pipe);
 		else if (dev_priv->params.load_detect_test)
@@ -949,7 +949,7 @@ void intel_crt_reset(struct drm_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 	struct intel_crt *crt = intel_encoder_to_crt(to_intel_encoder(encoder));
 
-	if (INTEL_GEN(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5) {
 		u32 adpa;
 
 		adpa = intel_de_read(dev_priv, crt->adpa_reg);
@@ -1047,7 +1047,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	else
 		crt->base.pipe_mask = ~0;
 
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		connector->interlace_allowed = 0;
 	else
 		connector->interlace_allowed = 1;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 3248f49999bb..004ace523970 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -70,9 +70,9 @@ u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
 	    (crtc_state->output_types & BIT(INTEL_OUTPUT_TVOUT)))
 		return 0;
 
-	if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		return 0xffffffff; /* full 32 bit counter */
-	else if (INTEL_GEN(dev_priv) >= 3)
+	else if (DISPLAY_VER(dev_priv) >= 3)
 		return 0xffffff; /* only 24 bits of frame count */
 	else
 		return 0; /* Gen2 doesn't have a hardware frame counter */
@@ -265,7 +265,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	crtc->pipe = pipe;
 	crtc->num_scalers = RUNTIME_INFO(dev_priv)->num_scalers[pipe];
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		primary = skl_universal_plane_create(dev_priv, pipe,
 						     PLANE_PRIMARY);
 	else
@@ -279,7 +279,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	for_each_sprite(dev_priv, pipe, sprite) {
 		struct intel_plane *plane;
 
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			plane = skl_universal_plane_create(dev_priv, pipe,
 							   PLANE_SPRITE0 + sprite);
 		else
@@ -302,16 +302,16 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 		if (IS_CHERRYVIEW(dev_priv) ||
 		    IS_VALLEYVIEW(dev_priv) || IS_G4X(dev_priv))
 			funcs = &g4x_crtc_funcs;
-		else if (IS_GEN(dev_priv, 4))
+		else if (IS_DISPLAY_VER(dev_priv, 4))
 			funcs = &i965_crtc_funcs;
 		else if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
 			funcs = &i915gm_crtc_funcs;
-		else if (IS_GEN(dev_priv, 3))
+		else if (IS_DISPLAY_VER(dev_priv, 3))
 			funcs = &i915_crtc_funcs;
 		else
 			funcs = &i8xx_crtc_funcs;
 	} else {
-		if (INTEL_GEN(dev_priv) >= 8)
+		if (DISPLAY_VER(dev_priv) >= 8)
 			funcs = &bdw_crtc_funcs;
 		else
 			funcs = &ilk_crtc_funcs;
@@ -327,7 +327,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	       dev_priv->pipe_to_crtc_mapping[pipe] != NULL);
 	dev_priv->pipe_to_crtc_mapping[pipe] = crtc;
 
-	if (INTEL_GEN(dev_priv) < 9) {
+	if (DISPLAY_VER(dev_priv) < 9) {
 		enum i9xx_plane_id i9xx_plane = primary->i9xx_plane;
 
 		BUG_ON(i9xx_plane >= ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||
@@ -335,7 +335,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 		dev_priv->plane_to_crtc_mapping[i9xx_plane] = crtc;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		drm_crtc_create_scaling_filter_property(&crtc->base,
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
@@ -546,7 +546,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	 * Incase of mipi dsi command mode, we need to set frame update
 	 * request for every commit.
 	 */
-	if (INTEL_GEN(dev_priv) >= 11 &&
+	if (DISPLAY_VER(dev_priv) >= 11 &&
 	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
 		icl_dsi_frame_update(new_crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 42005c1b5f0e..794efcc3ca08 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -705,11 +705,11 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 		csr->fw_path = RKL_CSR_PATH;
 		csr->required_version = RKL_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
-	} else if (INTEL_GEN(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		csr->fw_path = TGL_CSR_PATH;
 		csr->required_version = TGL_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
-	} else if (IS_GEN(dev_priv, 11)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
 		csr->fw_path = ICL_CSR_PATH;
 		csr->required_version = ICL_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = ICL_CSR_MAX_FW_SIZE;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 3057179dd4eb..0132ed3cb09d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -338,7 +338,7 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 cntl = 0;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		return cntl;
 
 	if (crtc_state->gamma_enable)
@@ -347,7 +347,7 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->csc_enable)
 		cntl |= MCURSOR_PIPE_CSC_ENABLE;
 
-	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
+	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 		cntl |= MCURSOR_PIPE_SELECT(crtc->pipe);
 
 	return cntl;
@@ -527,7 +527,7 @@ static void i9xx_update_cursor(struct intel_plane *plane,
 	 * the CURCNTR write arms the update.
 	 */
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_write_cursor_wm(plane, crtc_state);
 
 	if (!intel_crtc_needs_modeset(crtc_state))
@@ -583,7 +583,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 
 	ret = val & MCURSOR_MODE;
 
-	if (INTEL_GEN(dev_priv) >= 5 || IS_G4X(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		*pipe = plane->pipe;
 	else
 		*pipe = (val & MCURSOR_PIPE_SELECT_MASK) >>
@@ -783,7 +783,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	if (ret)
 		goto fail;
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		drm_plane_create_rotation_property(&cursor->base,
 						   DRM_MODE_ROTATE_0,
 						   DRM_MODE_ROTATE_0 |
@@ -792,7 +792,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	zpos = RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
 	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		drm_plane_enable_fb_damage_clips(&cursor->base);
 
 	drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6438e102ad1e..953de42e277c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -174,7 +174,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 				      enum port port)
 {
 	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
-	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
 		usleep_range(518, 1000);
 		return;
 	}
@@ -390,7 +390,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 
 	/* Enable TRANS_DDI_FUNC_CTL for the pipe to work in HDMI mode */
 	temp = TRANS_DDI_FUNC_ENABLE;
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		temp |= TGL_TRANS_DDI_SELECT_PORT(port);
 	else
 		temp |= TRANS_DDI_SELECT_PORT(port);
@@ -458,7 +458,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 		temp |= TRANS_DDI_MODE_SELECT_DP_MST;
 		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
 
-		if (INTEL_GEN(dev_priv) >= 12) {
+		if (DISPLAY_VER(dev_priv) >= 12) {
 			enum transcoder master;
 
 			master = crtc_state->mst_master_transcoder;
@@ -471,7 +471,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
 	}
 
-	if (IS_GEN_RANGE(dev_priv, 8, 10) &&
+	if (IS_DISPLAY_RANGE(dev_priv, 8, 10) &&
 	    crtc_state->master_transcoder != INVALID_TRANSCODER) {
 		u8 master_select =
 			bdw_trans_port_sync_master_select(crtc_state->master_transcoder);
@@ -490,7 +490,7 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		enum transcoder master_transcoder = crtc_state->master_transcoder;
 		u32 ctl2 = 0;
 
@@ -536,7 +536,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 ctl;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		intel_de_write(dev_priv,
 			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
 
@@ -546,11 +546,11 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 
 	ctl &= ~TRANS_DDI_FUNC_ENABLE;
 
-	if (IS_GEN_RANGE(dev_priv, 8, 10))
+	if (IS_DISPLAY_RANGE(dev_priv, 8, 10))
 		ctl &= ~(TRANS_DDI_PORT_SYNC_ENABLE |
 			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (!intel_dp_mst_is_master_trans(crtc_state)) {
 			ctl &= ~(TGL_TRANS_DDI_PORT_MASK |
 				 TRANS_DDI_MODE_SELECT_MASK);
@@ -714,7 +714,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		if (!trans_wakeref)
 			continue;
 
-		if (INTEL_GEN(dev_priv) >= 12) {
+		if (DISPLAY_VER(dev_priv) >= 12) {
 			port_mask = TGL_TRANS_DDI_PORT_MASK;
 			ddi_select = TGL_TRANS_DDI_SELECT_PORT(port);
 		} else {
@@ -854,7 +854,7 @@ void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (cpu_transcoder != TRANSCODER_EDP) {
-		if (INTEL_GEN(dev_priv) >= 12)
+		if (DISPLAY_VER(dev_priv) >= 12)
 			intel_de_write(dev_priv,
 				       TRANS_CLK_SEL(cpu_transcoder),
 				       TGL_TRANS_CLK_SEL_PORT(port));
@@ -871,7 +871,7 @@ void intel_ddi_disable_pipe_clock(const struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (cpu_transcoder != TRANSCODER_EDP) {
-		if (INTEL_GEN(dev_priv) >= 12)
+		if (DISPLAY_VER(dev_priv) >= 12)
 			intel_de_write(dev_priv,
 				       TRANS_CLK_SEL(cpu_transcoder),
 				       TGL_TRANS_CLK_SEL_DISABLED);
@@ -971,12 +971,12 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int n_entries;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
 			tgl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
 		else
 			tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
-	} else if (INTEL_GEN(dev_priv) == 11) {
+	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
 		if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))
 			jsl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
 		else if (IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
@@ -1147,7 +1147,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	int n_entries, ln;
 	u32 val;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		ddi_translations = tgl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
 	else if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))
 		ddi_translations = jsl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
@@ -2210,7 +2210,7 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	    dig_port->tc_mode == TC_PORT_TBT_ALT)
 		return;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
 			       HIP_INDEX_VAL(tc_port, 0x0));
 		ln0 = intel_de_read(dev_priv, DKL_DP_MODE(tc_port));
@@ -2276,7 +2276,7 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		MISSING_CASE(pin_assignment);
 	}
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
 			       HIP_INDEX_VAL(tc_port, 0x0));
 		intel_de_write(dev_priv, DKL_DP_MODE(tc_port), ln0);
@@ -2303,7 +2303,7 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		return TGL_DP_TP_CTL(tgl_dp_tp_transcoder(crtc_state));
 	else
 		return DP_TP_CTL(encoder->port);
@@ -2314,7 +2314,7 @@ i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		return TGL_DP_TP_STATUS(tgl_dp_tp_transcoder(crtc_state));
 	else
 		return DP_TP_STATUS(encoder->port);
@@ -2621,7 +2621,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int level = intel_ddi_dp_level(intel_dp);
 
-	if (INTEL_GEN(dev_priv) < 11)
+	if (DISPLAY_VER(dev_priv) < 11)
 		drm_WARN_ON(&dev_priv->drm,
 			    is_mst && (port == PORT_A || port == PORT_E));
 	else
@@ -2644,7 +2644,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_ddi_vswing_sequence(encoder, crtc_state, level);
 	else if (IS_CANNONLAKE(dev_priv))
 		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
@@ -2663,7 +2663,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 					      true);
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
 	intel_dp_start_link_train(intel_dp, crtc_state);
-	if ((port != PORT_A || INTEL_GEN(dev_priv) >= 9) &&
+	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
 	    !is_trans_port_sync_mode(crtc_state))
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 
@@ -2683,7 +2683,7 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
 	else
 		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
@@ -2818,7 +2818,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	 */
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (is_mst) {
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 			u32 val;
@@ -2843,7 +2843,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	 * Configure Transcoder Clock select to direct no clock to the
 	 * transcoder"
 	 */
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_ddi_disable_pipe_clock(old_crtc_state);
 
 	intel_pps_vdd_on(intel_dp);
@@ -2904,7 +2904,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 
 		intel_dsc_disable(old_crtc_state);
 
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_scaler_disable(old_crtc_state);
 		else
 			ilk_pfit_disable(old_crtc_state);
@@ -3035,7 +3035,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
 
-	if (port == PORT_A && INTEL_GEN(dev_priv) < 9)
+	if (port == PORT_A && DISPLAY_VER(dev_priv) < 9)
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 
 	intel_edp_backlight_on(crtc_state, conn_state);
@@ -3064,7 +3064,7 @@ gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
 		[PORT_E] = TRANSCODER_A,
 	};
 
-	drm_WARN_ON(&dev_priv->drm, INTEL_GEN(dev_priv) < 9);
+	drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) < 9);
 
 	if (drm_WARN_ON(&dev_priv->drm, port < PORT_A || port > PORT_E))
 		port = PORT_A;
@@ -3090,9 +3090,9 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\n",
 			    connector->base.id, connector->name);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
-	else if (INTEL_GEN(dev_priv) == 11)
+	else if (IS_DISPLAY_VER(dev_priv, 11))
 		icl_ddi_vswing_sequence(encoder, crtc_state, level);
 	else if (IS_CANNONLAKE(dev_priv))
 		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
@@ -3424,7 +3424,7 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 	 * In this case there is requirement to wait for a minimum number of
 	 * idle patterns to be sent.
 	 */
-	if (port == PORT_A && INTEL_GEN(dev_priv) < 12)
+	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
 		return;
 
 	if (intel_de_wait_for_set(dev_priv,
@@ -3450,11 +3450,11 @@ static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
 void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 					 struct intel_crtc_state *crtc_state)
 {
-	if (INTEL_GEN(dev_priv) >= 12 && crtc_state->port_clock > 594000)
+	if (DISPLAY_VER(dev_priv) >= 12 && crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 2;
 	else if (IS_JSL_EHL(dev_priv) && crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 3;
-	else if (INTEL_GEN(dev_priv) >= 11 && crtc_state->port_clock > 594000)
+	else if (DISPLAY_VER(dev_priv) >= 11 && crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 1;
 	else if (IS_CANNONLAKE(dev_priv) && crtc_state->port_clock > 594000)
 		crtc_state->min_voltage_level = 2;
@@ -3465,7 +3465,7 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
 {
 	u32 master_select;
 
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		u32 ctl2 = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder));
 
 		if ((ctl2 & PORT_SYNC_MODE_ENABLE) == 0)
@@ -3589,7 +3589,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 		intel_dp_get_m_n(intel_crtc, pipe_config);
 
-		if (INTEL_GEN(dev_priv) >= 11) {
+		if (DISPLAY_VER(dev_priv) >= 11) {
 			i915_reg_t dp_tp_ctl = dp_tp_ctl_reg(encoder, pipe_config);
 
 			pipe_config->fec_enable =
@@ -3613,7 +3613,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		pipe_config->lane_count =
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
-		if (INTEL_GEN(dev_priv) >= 12)
+		if (DISPLAY_VER(dev_priv) >= 12)
 			pipe_config->mst_master_transcoder =
 					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
 
@@ -3700,7 +3700,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 			     HDMI_INFOFRAME_TYPE_DRM,
 			     &pipe_config->infoframes.drm);
 
-	if (INTEL_GEN(dev_priv) >= 8)
+	if (DISPLAY_VER(dev_priv) >= 8)
 		bdw_get_trans_port_sync_config(pipe_config);
 
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
@@ -3943,7 +3943,7 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 	 * We don't enable port sync on BDW due to missing w/as and
 	 * due to not having adjusted the modeset sequence appropriately.
 	 */
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		return 0;
 
 	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
@@ -4047,9 +4047,9 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		dig_port->dp.set_signal_levels = tgl_set_signal_levels;
-	else if (INTEL_GEN(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		dig_port->dp.set_signal_levels = icl_set_signal_levels;
 	else if (IS_CANNONLAKE(dev_priv))
 		dig_port->dp.set_signal_levels = cnl_set_signal_levels;
@@ -4318,7 +4318,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 	enum port port = dig_port->base.port;
 	int max_lanes = 4;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
@@ -4420,9 +4420,9 @@ static enum hpd_pin skl_hpd_pin(struct drm_i915_private *dev_priv, enum port por
 
 static bool intel_ddi_is_tc(struct drm_i915_private *i915, enum port port)
 {
-	if (INTEL_GEN(i915) >= 12)
+	if (DISPLAY_VER(i915) >= 12)
 		return port >= PORT_TC1;
-	else if (INTEL_GEN(i915) >= 11)
+	else if (DISPLAY_VER(i915) >= 11)
 		return port >= PORT_C;
 	else
 		return false;
@@ -4489,7 +4489,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
 
 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
@@ -4499,7 +4499,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 				 port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
 				 tc_port != TC_PORT_NONE ? "TC" : "",
 				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
-	} else if (INTEL_GEN(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
 
 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
@@ -4568,7 +4568,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			encoder->is_clock_enabled = icl_ddi_combo_is_clock_enabled;
 			encoder->get_config = icl_ddi_combo_get_config;
 		}
-	} else if (INTEL_GEN(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		if (intel_ddi_is_tc(dev_priv, port)) {
 			encoder->enable_clock = icl_ddi_tc_enable_clock;
 			encoder->disable_clock = icl_ddi_tc_disable_clock;
@@ -4604,20 +4604,20 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
 	else if (IS_ROCKETLAKE(dev_priv))
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
-	else if (INTEL_GEN(dev_priv) >= 12)
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
 	else if (IS_JSL_EHL(dev_priv))
 		encoder->hpd_pin = ehl_hpd_pin(dev_priv, port);
-	else if (IS_GEN(dev_priv, 11))
+	else if (IS_DISPLAY_VER(dev_priv, 11))
 		encoder->hpd_pin = icl_hpd_pin(dev_priv, port);
-	else if (IS_GEN(dev_priv, 10))
+	else if (IS_DISPLAY_VER(dev_priv, 10))
 		encoder->hpd_pin = cnl_hpd_pin(dev_priv, port);
-	else if (IS_GEN(dev_priv, 9))
+	else if (IS_DISPLAY_VER(dev_priv, 9))
 		encoder->hpd_pin = skl_hpd_pin(dev_priv, port);
 	else
 		encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		dig_port->saved_port_bits =
 			intel_de_read(dev_priv, DDI_BUF_CTL(port))
 			& DDI_BUF_PORT_REVERSAL;
@@ -4666,12 +4666,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			goto err;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		if (intel_phy_is_tc(dev_priv, phy))
 			dig_port->connected = intel_tc_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
-	} else if (INTEL_GEN(dev_priv) >= 8) {
+	} else if (DISPLAY_VER(dev_priv) >= 8) {
 		if (port == PORT_A || IS_GEN9_LP(dev_priv))
 			dig_port->connected = bdw_digital_port_connected;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index f65c2b35461c..5d9ce6042e87 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1355,13 +1355,13 @@ int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	int n_entries;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
 			tgl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);
 		else
 			tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, &n_entries);
 		*default_entry = n_entries - 1;
-	} else if (INTEL_GEN(dev_priv) == 11) {
+	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
 		if (intel_phy_is_combo(dev_priv, phy))
 			icl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a17b4030d645..8a5014f4b3f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -229,7 +229,7 @@ static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
 	u32 line1, line2;
 	u32 line_mask;
 
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		line_mask = DSL_LINEMASK_GEN2;
 	else
 		line_mask = DSL_LINEMASK_GEN3;
@@ -269,7 +269,7 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 		i915_reg_t reg = PIPECONF(cpu_transcoder);
 
@@ -857,7 +857,7 @@ void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state)
 
 static unsigned int intel_tile_size(const struct drm_i915_private *dev_priv)
 {
-	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
+	return IS_DISPLAY_VER(dev_priv, 2) ? 2048 : 4096;
 }
 
 static bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
@@ -893,7 +893,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 	case DRM_FORMAT_MOD_LINEAR:
 		return intel_tile_size(dev_priv);
 	case I915_FORMAT_MOD_X_TILED:
-		if (IS_GEN(dev_priv, 2))
+		if (IS_DISPLAY_VER(dev_priv, 2))
 			return 128;
 		else
 			return 512;
@@ -908,7 +908,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 64;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED:
-		if (IS_GEN(dev_priv, 2) || HAS_128_BYTE_Y_TILING(dev_priv))
+		if (IS_DISPLAY_VER(dev_priv, 2) || HAS_128_BYTE_Y_TILING(dev_priv))
 			return 128;
 		else
 			return 512;
@@ -1026,12 +1026,12 @@ static unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_pr
 
 static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		return 256 * 1024;
 	else if (IS_I965G(dev_priv) || IS_I965GM(dev_priv) ||
 		 IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return 128 * 1024;
-	else if (INTEL_GEN(dev_priv) >= 4)
+	else if (DISPLAY_VER(dev_priv) >= 4)
 		return 4 * 1024;
 	else
 		return 0;
@@ -1039,7 +1039,7 @@ static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_pr
 
 static bool has_async_flips(struct drm_i915_private *i915)
 {
-	return INTEL_GEN(i915) >= 5;
+	return DISPLAY_VER(i915) >= 5;
 }
 
 unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
@@ -1048,7 +1048,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	struct drm_i915_private *dev_priv = to_i915(fb->dev);
 
 	/* AUX_DIST needs only 4K alignment */
-	if ((INTEL_GEN(dev_priv) < 12 && is_aux_plane(fb, color_plane)) ||
+	if ((DISPLAY_VER(dev_priv) < 12 && is_aux_plane(fb, color_plane)) ||
 	    is_ccs_plane(fb, color_plane))
 		return 4096;
 
@@ -1069,7 +1069,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED:
-		if (INTEL_GEN(dev_priv) >= 12 &&
+		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    is_semiplanar_uv_plane(fb, color_plane))
 			return intel_tile_row_size(fb, color_plane);
 		fallthrough;
@@ -1086,7 +1086,7 @@ static bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 
-	return INTEL_GEN(dev_priv) < 4 ||
+	return DISPLAY_VER(dev_priv) < 4 ||
 		(plane->has_fbc &&
 		 plane_state->view.type == I915_GGTT_VIEW_NORMAL);
 }
@@ -1169,7 +1169,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 		 * mode that matches the user configuration.
 		 */
 		ret = i915_vma_pin_fence(vma);
-		if (ret != 0 && INTEL_GEN(dev_priv) < 4) {
+		if (ret != 0 && DISPLAY_VER(dev_priv) < 4) {
 			i915_vma_unpin(vma);
 			vma = ERR_PTR(ret);
 			goto err;
@@ -1419,7 +1419,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	unsigned int height;
 	u32 alignment;
 
-	if (INTEL_GEN(dev_priv) >= 12 &&
+	if (DISPLAY_VER(dev_priv) >= 12 &&
 	    is_semiplanar_uv_plane(fb, color_plane))
 		alignment = intel_tile_row_size(fb, color_plane);
 	else if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
@@ -1639,9 +1639,9 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 * The new CCS hash mode makes remapping impossible
 	 */
 	if (!is_ccs_modifier(modifier)) {
-		if (INTEL_GEN(dev_priv) >= 7)
+		if (DISPLAY_VER(dev_priv) >= 7)
 			return 256*1024;
-		else if (INTEL_GEN(dev_priv) >= 4)
+		else if (DISPLAY_VER(dev_priv) >= 4)
 			return 128*1024;
 	}
 
@@ -1681,13 +1681,13 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 		 * require the entire fb to accommodate that to avoid
 		 * potential runtime errors at plane configuration time.
 		 */
-		if (IS_GEN(dev_priv, 9) && color_plane == 0 && fb->width > 3840)
+		if (IS_DISPLAY_VER(dev_priv, 9) && color_plane == 0 && fb->width > 3840)
 			tile_width *= 4;
 		/*
 		 * The main surface pitch must be padded to a multiple of four
 		 * tile widths.
 		 */
-		else if (INTEL_GEN(dev_priv) >= 12)
+		else if (DISPLAY_VER(dev_priv) >= 12)
 			tile_width *= 4;
 	}
 	return tile_width;
@@ -1710,7 +1710,7 @@ bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	 * Would also need to deal with the fence POT alignment
 	 * and gen2 2KiB GTT tile size.
 	 */
-	if (INTEL_GEN(dev_priv) < 4)
+	if (DISPLAY_VER(dev_priv) < 4)
 		return false;
 
 	/*
@@ -2396,7 +2396,7 @@ static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 * Gen2 reports pipe underruns whenever all planes are disabled.
 	 * So disable underrun reporting before all the planes get disabled.
 	 */
-	if (IS_GEN(dev_priv, 2) && !crtc_state->active_planes)
+	if (IS_DISPLAY_VER(dev_priv, 2) && !crtc_state->active_planes)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 
 	intel_disable_plane(plane, crtc_state);
@@ -3259,7 +3259,7 @@ static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
 		return false;
 
 	/* WA Display #0827: Gen9:all */
-	if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
+	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
 		return true;
 
 	return false;
@@ -3270,7 +3270,7 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
 	/* Wa_2006604312:icl,ehl */
-	if (crtc_state->scaler_state.scaler_users > 0 && IS_GEN(dev_priv, 11))
+	if (crtc_state->scaler_state.scaler_users > 0 && IS_DISPLAY_VER(dev_priv, 11))
 		return true;
 
 	return false;
@@ -3470,7 +3470,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * chance of catching underruns with the intermediate watermarks
 	 * vs. the old plane configuration.
 	 */
-	if (IS_GEN(dev_priv, 2) && planes_disabling(old_crtc_state, new_crtc_state))
+	if (IS_DISPLAY_VER(dev_priv, 2) && planes_disabling(old_crtc_state, new_crtc_state))
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
 	/*
@@ -3868,7 +3868,7 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc)
 
 	val = MBUS_DBOX_A_CREDIT(2);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(12);
 	} else {
@@ -3966,7 +3966,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	}
 
 	intel_set_pipe_src_size(new_crtc_state);
-	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipemisc(new_crtc_state);
 
 	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
@@ -3994,7 +3994,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (psl_clkgate_wa)
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_pfit_enable(new_crtc_state);
 	else
 		ilk_pfit_enable(new_crtc_state);
@@ -4006,18 +4006,18 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_color_load_luts(new_crtc_state);
 	intel_color_commit(new_crtc_state);
 	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		intel_disable_primary_plane(new_crtc_state);
 
 	hsw_set_linetime_wm(new_crtc_state);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_set_pipe_chicken(crtc);
 
 	if (dev_priv->display.initial_watermarks)
 		dev_priv->display.initial_watermarks(state, crtc);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_pipe_mbus_enable(crtc);
 
 	if (new_crtc_state->bigjoiner_slave)
@@ -4158,7 +4158,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 		return phy <= PHY_D;
 	else if (IS_JSL_EHL(dev_priv))
 		return phy <= PHY_C;
-	else if (INTEL_GEN(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		return phy <= PHY_B;
 	else
 		return false;
@@ -4191,7 +4191,7 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
 	if (!intel_phy_is_tc(dev_priv, intel_port_to_phy(dev_priv, port)))
 		return TC_PORT_NONE;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		return TC_PORT_1 + port - PORT_TC1;
 	else
 		return TC_PORT_1 + port - PORT_C;
@@ -4443,7 +4443,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 
 	crtc->active = true;
 
-	if (!IS_GEN(dev_priv, 2))
+	if (!IS_DISPLAY_VER(dev_priv, 2))
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
 
 	intel_encoders_pre_enable(state, crtc);
@@ -4468,7 +4468,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	/* prevents spurious underruns */
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		intel_wait_for_vblank(dev_priv, pipe);
 }
 
@@ -4499,7 +4499,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	 * On gen2 planes are double buffered but the pipe isn't, so we must
 	 * wait for planes to fully turn off before disabling the pipe.
 	 */
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		intel_wait_for_vblank(dev_priv, pipe);
 
 	intel_encoders_disable(state, crtc);
@@ -4523,7 +4523,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	if (!IS_GEN(dev_priv, 2))
+	if (!IS_DISPLAY_VER(dev_priv, 2))
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
 	if (!dev_priv->display.initial_watermarks)
@@ -4762,7 +4762,7 @@ static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 	const struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	/* GDG double wide on either pipe, otherwise pipe A only */
-	return INTEL_GEN(dev_priv) < 4 &&
+	return DISPLAY_VER(dev_priv) < 4 &&
 		(crtc->pipe == PIPE_A || IS_I915G(dev_priv));
 }
 
@@ -4930,7 +4930,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
-	if (INTEL_GEN(dev_priv) < 4) {
+	if (DISPLAY_VER(dev_priv) < 4) {
 		clock_limit = dev_priv->max_cdclk_freq * 9 / 10;
 
 		/*
@@ -4976,7 +4976,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	/* Cantiga+ cannot handle modes with a hsync front porch of 0.
 	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
 	 */
-	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
+	if ((DISPLAY_VER(dev_priv) > 4 || IS_G4X(dev_priv)) &&
 	    pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
 		return -EINVAL;
 
@@ -5087,7 +5087,7 @@ static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 	 * Strictly speaking some registers are available before
 	 * gen7, but we only support DRRS on gen7+
 	 */
-	return IS_GEN(dev_priv, 7) || IS_CHERRYVIEW(dev_priv);
+	return IS_DISPLAY_VER(dev_priv, 7) || IS_CHERRYVIEW(dev_priv);
 }
 
 static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
@@ -5099,7 +5099,7 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 	enum pipe pipe = crtc->pipe;
 	enum transcoder transcoder = crtc_state->cpu_transcoder;
 
-	if (INTEL_GEN(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5) {
 		intel_de_write(dev_priv, PIPE_DATA_M1(transcoder),
 			       TU_SIZE(m_n->tu) | m_n->gmch_m);
 		intel_de_write(dev_priv, PIPE_DATA_N1(transcoder),
@@ -5187,7 +5187,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			vsyncshift += adjusted_mode->crtc_htotal;
 	}
 
-	if (INTEL_GEN(dev_priv) > 3)
+	if (DISPLAY_VER(dev_priv) > 3)
 		intel_de_write(dev_priv, VSYNCSHIFT(cpu_transcoder),
 		               vsyncshift);
 
@@ -5234,10 +5234,10 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		return false;
 
-	if (INTEL_GEN(dev_priv) >= 9 ||
+	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK_HSW;
 	else
@@ -5341,7 +5341,7 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	}
 
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
-		if (INTEL_GEN(dev_priv) < 4 ||
+		if (DISPLAY_VER(dev_priv) < 4 ||
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
 			pipeconf |= PIPECONF_INTERLACE_W_FIELD_INDICATION;
 		else
@@ -5367,7 +5367,7 @@ static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
 	if (IS_I830(dev_priv))
 		return false;
 
-	return INTEL_GEN(dev_priv) >= 4 ||
+	return DISPLAY_VER(dev_priv) >= 4 ||
 		IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
 }
 
@@ -5385,7 +5385,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
 		return;
 
 	/* Check whether the pfit is attached to our pipe. */
-	if (INTEL_GEN(dev_priv) < 4) {
+	if (DISPLAY_VER(dev_priv) < 4) {
 		if (crtc->pipe != PIPE_B)
 			return;
 	} else {
@@ -5553,7 +5553,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
-	if (INTEL_GEN(dev_priv) < 4)
+	if (DISPLAY_VER(dev_priv) < 4)
 		pipe_config->double_wide = tmp & PIPECONF_DOUBLE_WIDE;
 
 	intel_get_transcoder_timings(crtc, pipe_config);
@@ -5561,7 +5561,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	i9xx_get_pfit_config(pipe_config);
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		/* No way to read it out on pipes B and C */
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
 			tmp = dev_priv->chv_dpll_md[crtc->pipe];
@@ -6241,12 +6241,12 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 		val |= PIPEMISC_YUV420_ENABLE |
 			PIPEMISC_YUV420_MODE_FULL_BLEND;
 
-	if (INTEL_GEN(dev_priv) >= 11 &&
+	if (DISPLAY_VER(dev_priv) >= 11 &&
 	    (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
 					   BIT(PLANE_CURSOR))) == 0)
 		val |= PIPEMISC_HDR_MODE_PRECISION;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		val |= PIPEMISC_PIXEL_ROUNDING_TRUNC;
 
 	intel_de_write(dev_priv, PIPEMISC(crtc->pipe), val);
@@ -6309,7 +6309,7 @@ static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (INTEL_GEN(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5) {
 		m_n->link_m = intel_de_read(dev_priv,
 					    PIPE_LINK_M1(transcoder));
 		m_n->link_n = intel_de_read(dev_priv,
@@ -6429,7 +6429,7 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 	 * ivb/hsw (since we don't use the higher upscaling modes which
 	 * differentiates them) so just WARN about this case for now.
 	 */
-	drm_WARN_ON(&dev_priv->drm, IS_GEN(dev_priv, 7) &&
+	drm_WARN_ON(&dev_priv->drm, IS_DISPLAY_VER(dev_priv, 7) &&
 		    (ctl & PF_PIPE_SEL_MASK_IVB) != PF_PIPE_SEL_IVB(crtc->pipe));
 }
 
@@ -6564,7 +6564,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	enum transcoder panel_transcoder;
 	u32 tmp;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		panel_transcoder_mask |=
 			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
 
@@ -6703,7 +6703,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
 		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
 			return;
-		if (INTEL_GEN(dev_priv) >= 12)
+		if (DISPLAY_VER(dev_priv) >= 12)
 			port = TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
 		else
 			port = TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
@@ -6714,7 +6714,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	 * DDI E. So just check whether this pipe is wired to DDI E and whether
 	 * the PCH transcoder is on.
 	 */
-	if (INTEL_GEN(dev_priv) < 9 &&
+	if (DISPLAY_VER(dev_priv) < 9 &&
 	    (port == PORT_E) && intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) {
 		pipe_config->has_pch_encoder = true;
 
@@ -6761,7 +6761,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		/* we cannot read out most state, so don't bother.. */
 		pipe_config->quirks |= PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE;
 	} else if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
-	    INTEL_GEN(dev_priv) >= 11) {
+	    DISPLAY_VER(dev_priv) >= 11) {
 		hsw_get_ddi_port_state(crtc, pipe_config);
 		intel_get_transcoder_timings(crtc, pipe_config);
 	}
@@ -6790,7 +6790,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->csc_mode = intel_de_read(dev_priv,
 					      PIPE_CSC_MODE(crtc->pipe));
 
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 9) {
 		tmp = intel_de_read(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe));
 
 		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
@@ -6812,7 +6812,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	if (intel_display_power_get_in_set_if_enabled(dev_priv, &power_domain_set,
 						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_get_pfit_config(pipe_config);
 		else
 			ilk_get_pfit_config(pipe_config);
@@ -7112,7 +7112,7 @@ static int i9xx_pll_refclk(struct drm_device *dev,
 		return dev_priv->vbt.lvds_ssc_freq;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		return 120000;
-	else if (!IS_GEN(dev_priv, 2))
+	else if (!IS_DISPLAY_VER(dev_priv, 2))
 		return 96000;
 	else
 		return 48000;
@@ -7145,7 +7145,7 @@ static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 		clock.m2 = (fp & FP_M2_DIV_MASK) >> FP_M2_DIV_SHIFT;
 	}
 
-	if (!IS_GEN(dev_priv, 2)) {
+	if (!IS_DISPLAY_VER(dev_priv, 2)) {
 		if (IS_PINEVIEW(dev_priv))
 			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW) >>
 				DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW);
@@ -7342,7 +7342,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 	bool turn_off, turn_on, visible, was_visible;
 	int ret;
 
-	if (INTEL_GEN(dev_priv) >= 9 && plane->id != PLANE_CURSOR) {
+	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_CURSOR) {
 		ret = skl_update_scaler_plane(crtc_state, plane_state);
 		if (ret)
 			return ret;
@@ -7383,21 +7383,21 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 		       turn_off, turn_on, mode_changed);
 
 	if (turn_on) {
-		if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
+		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 			crtc_state->update_wm_pre = true;
 
 		/* must disable cxsr around plane enable/disable */
 		if (plane->id != PLANE_CURSOR)
 			crtc_state->disable_cxsr = true;
 	} else if (turn_off) {
-		if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
+		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 			crtc_state->update_wm_post = true;
 
 		/* must disable cxsr around plane enable/disable */
 		if (plane->id != PLANE_CURSOR)
 			crtc_state->disable_cxsr = true;
 	} else if (intel_wm_need_update(old_plane_state, plane_state)) {
-		if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
 			/* FIXME bollocks */
 			crtc_state->update_wm_pre = true;
 			crtc_state->update_wm_post = true;
@@ -7514,7 +7514,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 	struct intel_plane_state *plane_state;
 	int i;
 
-	if (INTEL_GEN(dev_priv) < 11)
+	if (DISPLAY_VER(dev_priv) < 11)
 		return 0;
 
 	/*
@@ -7676,7 +7676,7 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_cdclk_state *cdclk_state;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		crtc_state->linetime = skl_linetime_wm(crtc_state);
 	else
 		crtc_state->linetime = hsw_linetime_wm(crtc_state);
@@ -7703,7 +7703,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	bool mode_changed = intel_crtc_needs_modeset(crtc_state);
 	int ret;
 
-	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv) &&
+	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv) &&
 	    mode_changed && !crtc_state->hw.active)
 		crtc_state->update_wm_post = true;
 
@@ -7757,7 +7757,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		}
 	}
 
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 9) {
 		if (mode_changed || crtc_state->update_pipe) {
 			ret = skl_update_scaler_crtc(crtc_state);
 			if (ret)
@@ -7775,7 +7775,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 9 ||
+	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
 		ret = hsw_compute_linetime_wm(state, crtc);
 		if (ret)
@@ -7880,7 +7880,7 @@ compute_baseline_pipe_bpp(struct intel_crtc *crtc,
 	if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
 	    IS_CHERRYVIEW(dev_priv)))
 		bpp = 10*3;
-	else if (INTEL_GEN(dev_priv) >= 5)
+	else if (DISPLAY_VER(dev_priv) >= 5)
 		bpp = 12*3;
 	else
 		bpp = 8*3;
@@ -8149,7 +8149,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	drm_dbg_kms(&dev_priv->drm, "linetime: %d, ips linetime: %d\n",
 		    pipe_config->linetime, pipe_config->ips_linetime);
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		drm_dbg_kms(&dev_priv->drm,
 			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
 			    crtc->num_scalers,
@@ -8725,7 +8725,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 		return dev_priv->params.fastboot;
 
 	/* Enable fastboot by default on Skylake and newer */
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		return true;
 
 	/* Enable fastboot by default on VLV and CHV */
@@ -8937,7 +8937,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (INTEL_GEN(dev_priv) < 8) {
+	if (DISPLAY_VER(dev_priv) < 8) {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
 
 		if (current_config->has_drrs)
@@ -8996,7 +8996,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_I(output_format);
 	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
-	if ((INTEL_GEN(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
+	if ((DISPLAY_VER(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
 	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		PIPE_CONF_CHECK_BOOL(limited_color_range);
 
@@ -9011,7 +9011,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
 	/* pfit ratios are autocomputed by the hw on gen4+ */
-	if (INTEL_GEN(dev_priv) < 4)
+	if (DISPLAY_VER(dev_priv) < 4)
 		PIPE_CONF_CHECK_X(gmch_pfit.pgm_ratios);
 	PIPE_CONF_CHECK_X(gmch_pfit.lvds_border_bits);
 
@@ -9095,7 +9095,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 		PIPE_CONF_CHECK_X(dsi_pll.div);
 
-		if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >= 5)
+		if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 			PIPE_CONF_CHECK_I(pipe_bpp);
 
 		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
@@ -9181,7 +9181,7 @@ static void verify_wm_state(struct intel_crtc *crtc,
 	struct intel_plane *plane;
 	u8 hw_enabled_slices;
 
-	if (INTEL_GEN(dev_priv) < 9 || !new_crtc_state->hw.active)
+	if (DISPLAY_VER(dev_priv) < 9 || !new_crtc_state->hw.active)
 		return;
 
 	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
@@ -9194,7 +9194,7 @@ static void verify_wm_state(struct intel_crtc *crtc,
 
 	hw_enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 11 &&
+	if (DISPLAY_VER(dev_priv) >= 11 &&
 	    hw_enabled_slices != dev_priv->dbuf.enabled_slices)
 		drm_err(&dev_priv->drm,
 			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
@@ -9574,7 +9574,7 @@ intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 	 * However if queried just before the start of vblank we'll get an
 	 * answer that's slightly in the future.
 	 */
-	if (IS_GEN(dev_priv, 2)) {
+	if (IS_DISPLAY_VER(dev_priv, 2)) {
 		int vtotal;
 
 		vtotal = adjusted_mode.crtc_vtotal;
@@ -9781,7 +9781,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 	/* See {hsw,vlv,ivb}_plane_ratio() */
 	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
 		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >= 11);
+		IS_IVYBRIDGE(dev_priv) || (DISPLAY_VER(dev_priv) >= 11);
 }
 
 static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *state,
@@ -10457,7 +10457,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!IS_GEN(dev_priv, 2) || crtc_state->active_planes)
+	if (!IS_DISPLAY_VER(dev_priv, 2) || crtc_state->active_planes)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
 
 	if (crtc_state->has_pch_encoder) {
@@ -10485,7 +10485,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	intel_set_pipe_src_size(new_crtc_state);
 
 	/* on skylake this is done by detaching scalers */
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 9) {
 		skl_detach_scalers(new_crtc_state);
 
 		if (new_crtc_state->pch_pfit.enabled)
@@ -10505,11 +10505,11 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	 * HSW/BDW only really need this here for fastboot, after
 	 * that the value should not change without a full modeset.
 	 */
-	if (INTEL_GEN(dev_priv) >= 9 ||
+	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		hsw_set_linetime_wm(new_crtc_state);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_set_pipe_chicken(crtc);
 }
 
@@ -10532,10 +10532,10 @@ static void commit_pipe_config(struct intel_atomic_state *state,
 		    new_crtc_state->update_pipe)
 			intel_color_commit(new_crtc_state);
 
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_detach_scalers(new_crtc_state);
 
-		if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 			bdw_set_pipemisc(new_crtc_state);
 
 		if (new_crtc_state->update_pipe)
@@ -10601,7 +10601,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	commit_pipe_config(state, crtc);
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_update_planes_on_crtc(state, crtc);
 	else
 		i9xx_update_planes_on_crtc(state, crtc);
@@ -11075,7 +11075,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * chance of catching underruns with the intermediate watermarks
 		 * vs. the new plane configuration.
 		 */
-		if (IS_GEN(dev_priv, 2) && planes_enabling(old_crtc_state, new_crtc_state))
+		if (IS_DISPLAY_VER(dev_priv, 2) && planes_enabling(old_crtc_state, new_crtc_state))
 			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
 
 		if (dev_priv->display.optimize_watermarks)
@@ -11211,7 +11211,7 @@ static int intel_atomic_commit(struct drm_device *dev,
 	 * FIXME doing watermarks and fb cleanup from a vblank worker
 	 * (assuming we had any) would solve these problems.
 	 */
-	if (INTEL_GEN(dev_priv) < 9 && state->base.legacy_cursor_update) {
+	if (DISPLAY_VER(dev_priv) < 9 && state->base.legacy_cursor_update) {
 		struct intel_crtc_state *new_crtc_state;
 		struct intel_crtc *crtc;
 		int i;
@@ -11308,7 +11308,7 @@ static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
 	if (!dma_fence_is_i915(fence))
 		return;
 
-	if (INTEL_GEN(to_i915(crtc->dev)) < 6)
+	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
 		return;
 
 	if (drm_crtc_vblank_get(crtc))
@@ -11609,7 +11609,7 @@ static bool ilk_has_edp_a(struct drm_i915_private *dev_priv)
 
 static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		return false;
 
 	if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
@@ -11650,7 +11650,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_TC1);
 		intel_ddi_init(dev_priv, PORT_TC2);
-	} else if (INTEL_GEN(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_TC1);
@@ -11666,7 +11666,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_C);
 		intel_ddi_init(dev_priv, PORT_D);
 		icl_dsi_init(dev_priv);
-	} else if (IS_GEN(dev_priv, 11)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
@@ -11823,7 +11823,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	} else if (IS_PINEVIEW(dev_priv)) {
 		intel_lvds_init(dev_priv);
 		intel_crt_init(dev_priv);
-	} else if (IS_GEN_RANGE(dev_priv, 3, 4)) {
+	} else if (IS_DISPLAY_RANGE(dev_priv, 3, 4)) {
 		bool found = false;
 
 		if (IS_MOBILE(dev_priv))
@@ -11867,7 +11867,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		if (SUPPORTS_TV(dev_priv))
 			intel_tv_init(dev_priv);
-	} else if (IS_GEN(dev_priv, 2)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 2)) {
 		if (IS_I85X(dev_priv))
 			intel_lvds_init(dev_priv);
 
@@ -11987,7 +11987,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	 * gen2/3 display engine uses the fence if present,
 	 * so the tiling mode must match the fb modifier exactly.
 	 */
-	if (INTEL_GEN(dev_priv) < 4 &&
+	if (DISPLAY_VER(dev_priv) < 4 &&
 	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "tiling_mode must match fb modifier exactly on gen2/3\n");
@@ -12132,18 +12132,18 @@ intel_mode_valid(struct drm_device *dev,
 		return MODE_BAD;
 
 	/* Transcoder timing limits */
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		hdisplay_max = 16384;
 		vdisplay_max = 8192;
 		htotal_max = 16384;
 		vtotal_max = 8192;
-	} else if (INTEL_GEN(dev_priv) >= 9 ||
+	} else if (DISPLAY_VER(dev_priv) >= 9 ||
 		   IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
 		hdisplay_max = 8192; /* FDI max 4096 handled elsewhere */
 		vdisplay_max = 4096;
 		htotal_max = 8192;
 		vtotal_max = 8192;
-	} else if (INTEL_GEN(dev_priv) >= 3) {
+	} else if (DISPLAY_VER(dev_priv) >= 3) {
 		hdisplay_max = 4096;
 		vdisplay_max = 4096;
 		htotal_max = 8192;
@@ -12167,7 +12167,7 @@ intel_mode_valid(struct drm_device *dev,
 	    mode->vtotal > vtotal_max)
 		return MODE_V_ILLEGAL;
 
-	if (INTEL_GEN(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5) {
 		if (mode->hdisplay < 64 ||
 		    mode->htotal - mode->hdisplay < 32)
 			return MODE_H_ILLEGAL;
@@ -12196,7 +12196,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * intel_mode_valid() should be
 	 * sufficient on older platforms.
 	 */
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		return MODE_OK;
 
 	/*
@@ -12204,7 +12204,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane_width_max = 5120 << bigjoiner;
 		plane_height_max = 4320;
 	} else {
@@ -12244,7 +12244,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 
 	intel_dpll_init_clock_hook(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 9) {
 		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
 		dev_priv->display.crtc_enable = hsw_crtc_enable;
 		dev_priv->display.crtc_disable = hsw_crtc_disable;
@@ -12269,7 +12269,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 
 	intel_fdi_init_hook(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 9) {
 		dev_priv->display.commit_modeset_enables = skl_commit_modeset_enables;
 		dev_priv->display.get_initial_plane_config = skl_get_initial_plane_config;
 	} else {
@@ -12525,13 +12525,13 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 	 * Maximum framebuffer dimensions, chosen to match
 	 * the maximum render engine surface size on gen4+.
 	 */
-	if (INTEL_GEN(i915) >= 7) {
+	if (DISPLAY_VER(i915) >= 7) {
 		mode_config->max_width = 16384;
 		mode_config->max_height = 16384;
-	} else if (INTEL_GEN(i915) >= 4) {
+	} else if (DISPLAY_VER(i915) >= 4) {
 		mode_config->max_width = 8192;
 		mode_config->max_height = 8192;
-	} else if (IS_GEN(i915, 3)) {
+	} else if (IS_DISPLAY_VER(i915, 3)) {
 		mode_config->max_width = 4096;
 		mode_config->max_height = 4096;
 	} else {
@@ -12874,7 +12874,7 @@ intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
 {
 	struct intel_crtc *crtc;
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		return;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -12933,7 +12933,7 @@ static void intel_sanitize_frame_start_delay(const struct intel_crtc_state *crtc
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (INTEL_GEN(dev_priv) >= 9 ||
+	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
 		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
 		u32 val;
@@ -13005,7 +13005,7 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 		 * Disable any background color set by the BIOS, but enable the
 		 * gamma and CSC to match how we program our planes.
 		 */
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			intel_de_write(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe),
 				       SKL_BOTTOM_COLOR_GAMMA_ENABLE | SKL_BOTTOM_COLOR_CSC_ENABLE);
 	}
@@ -13330,7 +13330,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			 */
 			if (plane_state->uapi.visible && plane->min_cdclk) {
 				if (crtc_state->double_wide ||
-				    INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+				    DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 					crtc_state->min_cdclk[plane->id] =
 						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
 				else
@@ -13421,7 +13421,7 @@ static void intel_early_display_was(struct drm_i915_private *dev_priv)
 	 * Display WA #1185 WaDisableDARBFClkGating:cnl,glk,icl,ehl,tgl
 	 * Also known as Wa_14010480278.
 	 */
-	if (IS_GEN_RANGE(dev_priv, 10, 12) || IS_GEMINILAKE(dev_priv))
+	if (IS_DISPLAY_RANGE(dev_priv, 10, 12) || IS_GEMINILAKE(dev_priv))
 		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
 			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
 
@@ -13576,7 +13576,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_wm_get_hw_state(dev_priv);
 		vlv_wm_sanitize(dev_priv);
-	} else if (INTEL_GEN(dev_priv) >= 9) {
+	} else if (DISPLAY_VER(dev_priv) >= 9) {
 		skl_wm_get_hw_state(dev_priv);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_wm_get_hw_state(dev_priv);
@@ -13845,16 +13845,16 @@ intel_display_capture_error_state(struct drm_i915_private *dev_priv)
 
 		error->plane[i].control = intel_de_read(dev_priv, DSPCNTR(i));
 		error->plane[i].stride = intel_de_read(dev_priv, DSPSTRIDE(i));
-		if (INTEL_GEN(dev_priv) <= 3) {
+		if (DISPLAY_VER(dev_priv) <= 3) {
 			error->plane[i].size = intel_de_read(dev_priv,
 							     DSPSIZE(i));
 			error->plane[i].pos = intel_de_read(dev_priv,
 							    DSPPOS(i));
 		}
-		if (INTEL_GEN(dev_priv) <= 7 && !IS_HASWELL(dev_priv))
+		if (DISPLAY_VER(dev_priv) <= 7 && !IS_HASWELL(dev_priv))
 			error->plane[i].addr = intel_de_read(dev_priv,
 							     DSPADDR(i));
-		if (INTEL_GEN(dev_priv) >= 4) {
+		if (DISPLAY_VER(dev_priv) >= 4) {
 			error->plane[i].surface = intel_de_read(dev_priv,
 								DSPSURF(i));
 			error->plane[i].tile_offset = intel_de_read(dev_priv,
@@ -13928,13 +13928,13 @@ intel_display_print_error_state(struct drm_i915_error_state_buf *m,
 		err_printf(m, "Plane [%d]:\n", i);
 		err_printf(m, "  CNTR: %08x\n", error->plane[i].control);
 		err_printf(m, "  STRIDE: %08x\n", error->plane[i].stride);
-		if (INTEL_GEN(dev_priv) <= 3) {
+		if (DISPLAY_VER(dev_priv) <= 3) {
 			err_printf(m, "  SIZE: %08x\n", error->plane[i].size);
 			err_printf(m, "  POS: %08x\n", error->plane[i].pos);
 		}
-		if (INTEL_GEN(dev_priv) <= 7 && !IS_HASWELL(dev_priv))
+		if (DISPLAY_VER(dev_priv) <= 7 && !IS_HASWELL(dev_priv))
 			err_printf(m, "  ADDR: %08x\n", error->plane[i].addr);
-		if (INTEL_GEN(dev_priv) >= 4) {
+		if (DISPLAY_VER(dev_priv) >= 4) {
 			err_printf(m, "  SURF: %08x\n", error->plane[i].surface);
 			err_printf(m, "  TILEOFF: %08x\n", error->plane[i].tile_offset);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 20194ccfec05..1666aa23092b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -58,11 +58,11 @@ static int i915_fbc_status(struct seq_file *m, void *unused)
 	if (intel_fbc_is_active(dev_priv)) {
 		u32 mask;
 
-		if (INTEL_GEN(dev_priv) >= 8)
+		if (DISPLAY_VER(dev_priv) >= 8)
 			mask = intel_de_read(dev_priv, IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
-		else if (INTEL_GEN(dev_priv) >= 7)
+		else if (DISPLAY_VER(dev_priv) >= 7)
 			mask = intel_de_read(dev_priv, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
-		else if (INTEL_GEN(dev_priv) >= 5)
+		else if (DISPLAY_VER(dev_priv) >= 5)
 			mask = intel_de_read(dev_priv, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
 		else if (IS_G4X(dev_priv))
 			mask = intel_de_read(dev_priv, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
@@ -83,7 +83,7 @@ static int i915_fbc_false_color_get(void *data, u64 *val)
 {
 	struct drm_i915_private *dev_priv = data;
 
-	if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
+	if (DISPLAY_VER(dev_priv) < 7 || !HAS_FBC(dev_priv))
 		return -ENODEV;
 
 	*val = dev_priv->fbc.false_color;
@@ -96,7 +96,7 @@ static int i915_fbc_false_color_set(void *data, u64 val)
 	struct drm_i915_private *dev_priv = data;
 	u32 reg;
 
-	if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
+	if (DISPLAY_VER(dev_priv) < 7 || !HAS_FBC(dev_priv))
 		return -ENODEV;
 
 	mutex_lock(&dev_priv->fbc.lock);
@@ -128,7 +128,7 @@ static int i915_ips_status(struct seq_file *m, void *unused)
 	seq_printf(m, "Enabled by kernel parameter: %s\n",
 		   yesno(dev_priv->params.enable_ips));
 
-	if (INTEL_GEN(dev_priv) >= 8) {
+	if (DISPLAY_VER(dev_priv) >= 8) {
 		seq_puts(m, "Currently: unknown\n");
 	} else {
 		if (intel_de_read(dev_priv, IPS_CTL) & IPS_ENABLE)
@@ -150,7 +150,7 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		/* no global SR status; inspect per-plane WM */;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		sr_enabled = intel_de_read(dev_priv, WM1_LP_ILK) & WM1_LP_SR_EN;
@@ -550,7 +550,7 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 	seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(csr->version),
 		   CSR_VERSION_MINOR(csr->version));
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (IS_DGFX(dev_priv)) {
 			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
 		} else {
@@ -1190,7 +1190,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 	struct skl_ddb_entry *entry;
 	struct intel_crtc *crtc;
 
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		return -ENODEV;
 
 	drm_modeset_lock_all(dev);
@@ -1339,7 +1339,7 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 
-	switch (INTEL_GEN(i915)) {
+	switch (DISPLAY_VER(i915)) {
 	case 12:
 	case 11:
 		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
@@ -1616,7 +1616,7 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 		 * - WM1+ latency values in 0.5us units
 		 * - latencies are in us on gen9/vlv/chv
 		 */
-		if (INTEL_GEN(dev_priv) >= 9 ||
+		if (DISPLAY_VER(dev_priv) >= 9 ||
 		    IS_VALLEYVIEW(dev_priv) ||
 		    IS_CHERRYVIEW(dev_priv) ||
 		    IS_G4X(dev_priv))
@@ -1636,7 +1636,7 @@ static int pri_wm_latency_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 	const u16 *latencies;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		latencies = dev_priv->wm.skl_latency;
 	else
 		latencies = dev_priv->wm.pri_latency;
@@ -1651,7 +1651,7 @@ static int spr_wm_latency_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 	const u16 *latencies;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		latencies = dev_priv->wm.skl_latency;
 	else
 		latencies = dev_priv->wm.spr_latency;
@@ -1666,7 +1666,7 @@ static int cur_wm_latency_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 	const u16 *latencies;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		latencies = dev_priv->wm.skl_latency;
 	else
 		latencies = dev_priv->wm.cur_latency;
@@ -1680,7 +1680,7 @@ static int pri_wm_latency_open(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *dev_priv = inode->i_private;
 
-	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
+	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 		return -ENODEV;
 
 	return single_open(file, pri_wm_latency_show, dev_priv);
@@ -1759,7 +1759,7 @@ static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
 	struct drm_i915_private *dev_priv = m->private;
 	u16 *latencies;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		latencies = dev_priv->wm.skl_latency;
 	else
 		latencies = dev_priv->wm.pri_latency;
@@ -1774,7 +1774,7 @@ static ssize_t spr_wm_latency_write(struct file *file, const char __user *ubuf,
 	struct drm_i915_private *dev_priv = m->private;
 	u16 *latencies;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		latencies = dev_priv->wm.skl_latency;
 	else
 		latencies = dev_priv->wm.spr_latency;
@@ -1789,7 +1789,7 @@ static ssize_t cur_wm_latency_write(struct file *file, const char __user *ubuf,
 	struct drm_i915_private *dev_priv = m->private;
 	u16 *latencies;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		latencies = dev_priv->wm.skl_latency;
 	else
 		latencies = dev_priv->wm.cur_latency;
@@ -1986,7 +1986,7 @@ static int i915_drrs_ctl_set(void *data, u64 val)
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_crtc *crtc;
 
-	if (INTEL_GEN(dev_priv) < 7)
+	if (DISPLAY_VER(dev_priv) < 7)
 		return -ENODEV;
 
 	for_each_intel_crtc(dev, crtc) {
@@ -2244,7 +2244,7 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 	if (connector->status != connector_status_connected)
 		return -ENODEV;
 
-	switch (INTEL_GEN(i915)) {
+	switch (DISPLAY_VER(i915)) {
 	case 12:
 		/*
 		 * Actually TGL can drive LPSP on port till DDI_C
@@ -2416,7 +2416,7 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 				    connector, &i915_hdcp_sink_capability_fops);
 	}
 
-	if (INTEL_GEN(dev_priv) >= 10 &&
+	if (DISPLAY_VER(dev_priv) >= 10 &&
 	    ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
 	      !to_intel_connector(connector)->mst_port) ||
 	     connector->connector_type == DRM_MODE_CONNECTOR_eDP))
@@ -2424,7 +2424,7 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 				    connector, &i915_dsc_fec_support_fops);
 
 	/* Legacy panels doesn't lpsp on any platform */
-	if ((INTEL_GEN(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
+	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
 	     IS_BROADWELL(dev_priv)) &&
 	     (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
 	     connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7e0eaa872350..1eb16bad677a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -408,7 +408,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 	if (power_well->desc->hsw.has_fuses) {
 		enum skl_power_gate pg;
 
-		pg = INTEL_GEN(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
+		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
 						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
 		/*
 		 * For PW1 we have to wait both for the PW0/PG0 fuse state
@@ -441,7 +441,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 	if (power_well->desc->hsw.has_fuses) {
 		enum skl_power_gate pg;
 
-		pg = INTEL_GEN(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
+		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
 						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
 		gen9_wait_for_power_well_fuses(dev_priv, pg);
 	}
@@ -484,7 +484,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, regs->driver,
 		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
 
-	if (INTEL_GEN(dev_priv) < 12) {
+	if (DISPLAY_VER(dev_priv) < 12) {
 		val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
 		intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
 			       val | ICL_LANE_ENABLE_AUX);
@@ -550,7 +550,7 @@ static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
 		return;
 
-	if (INTEL_GEN(dev_priv) == 11 && dig_port->tc_legacy_port)
+	if (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port)
 		return;
 
 	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
@@ -619,14 +619,14 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	 * exit sequence.
 	 */
 	timeout_expected = is_tbt;
-	if (INTEL_GEN(dev_priv) == 11 && dig_port->tc_legacy_port) {
+	if (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port) {
 		icl_tc_cold_exit(dev_priv);
 		timeout_expected = true;
 	}
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well, timeout_expected);
 
-	if (INTEL_GEN(dev_priv) >= 12 && !is_tbt) {
+	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
 		enum tc_port tc_port;
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(power_well->desc->hsw.idx);
@@ -709,7 +709,7 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 	 * BIOS's own request bits, which are forced-on for these power wells
 	 * when exiting DC5/6.
 	 */
-	if (IS_GEN(dev_priv, 9) && !IS_GEN9_LP(dev_priv) &&
+	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEN9_LP(dev_priv) &&
 	    (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
 		val |= intel_de_read(dev_priv, regs->bios);
 
@@ -804,10 +804,10 @@ static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
 
 	mask = DC_STATE_EN_UPTO_DC5;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
 					  | DC_STATE_EN_DC9;
-	else if (IS_GEN(dev_priv, 11))
+	else if (IS_DISPLAY_VER(dev_priv, 11))
 		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
 	else if (IS_GEN9_LP(dev_priv))
 		mask |= DC_STATE_EN_DC9;
@@ -1035,7 +1035,7 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
 	enum i915_power_well_id high_pg;
 
 	/* Power wells at this level and above must be disabled for DC5 entry */
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		high_pg = ICL_DISP_PW_3;
 	else
 		high_pg = SKL_DISP_PW_2;
@@ -1192,7 +1192,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (IS_GEN9_LP(dev_priv))
 		bxt_verify_ddi_phy_power_wells(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		/*
 		 * DMC retains HW context only for port A, the other combo
 		 * PHY's HW context for port B is lost after DC transitions,
@@ -4535,9 +4535,9 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 
 	if (IS_DG1(dev_priv))
 		max_dc = 3;
-	else if (INTEL_GEN(dev_priv) >= 12)
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		max_dc = 4;
-	else if (INTEL_GEN(dev_priv) >= 10 || IS_GEN9_BC(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEN9_BC(dev_priv))
 		max_dc = 2;
 	else if (IS_GEN9_LP(dev_priv))
 		max_dc = 1;
@@ -4549,7 +4549,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	 * not depending on the DMC firmware. It's needed by system
 	 * suspend/resume, so allow it unconditionally.
 	 */
-	mask = IS_GEN9_LP(dev_priv) || INTEL_GEN(dev_priv) >= 11 ?
+	mask = IS_GEN9_LP(dev_priv) || DISPLAY_VER(dev_priv) >= 11 ?
 	       DC_STATE_EN_DC9 : 0;
 
 	if (!dev_priv->params.disable_power_well)
@@ -4678,9 +4678,9 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		err = set_power_wells(power_domains, rkl_power_wells);
-	} else if (IS_GEN(dev_priv, 12)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 12)) {
 		err = set_power_wells(power_domains, tgl_power_wells);
-	} else if (IS_GEN(dev_priv, 11)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
 		err = set_power_wells(power_domains, icl_power_wells);
 	} else if (IS_CNL_WITH_PORT_F(dev_priv)) {
 		err = set_power_wells(power_domains, cnl_power_wells);
@@ -4837,7 +4837,7 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 	 * expect us to program the abox_ctl0 register as well, even though
 	 * we don't have to program other instance-0 registers like BW_BUDDY.
 	 */
-	if (IS_GEN(dev_priv, 12))
+	if (IS_DISPLAY_VER(dev_priv, 12))
 		abox_regs |= BIT(0);
 
 	for_each_set_bit(i, &abox_regs, sizeof(abox_regs))
@@ -5396,7 +5396,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		gen12_dbuf_slices_config(dev_priv);
 
 	/* 5. Enable DBUF. */
@@ -5406,14 +5406,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	icl_mbus_init(dev_priv);
 
 	/* 7. Program arbiter BW_BUDDY registers */
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_bw_buddy_init(dev_priv);
 
 	if (resume && dev_priv->csr.dmc_payload)
 		intel_csr_load_program(dev_priv);
 
 	/* Wa_14011508470 */
-	if (IS_GEN(dev_priv, 12)) {
+	if (IS_DISPLAY_VER(dev_priv, 12)) {
 		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
 		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
@@ -5619,7 +5619,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 
 	power_domains->initializing = true;
 
-	if (INTEL_GEN(i915) >= 11) {
+	if (DISPLAY_VER(i915) >= 11) {
 		icl_display_core_init(i915, resume);
 	} else if (IS_CANNONLAKE(i915)) {
 		cnl_display_core_init(i915, resume);
@@ -5780,7 +5780,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	intel_display_power_flush_work(i915);
 	intel_power_domains_verify_state(i915);
 
-	if (INTEL_GEN(i915) >= 11)
+	if (DISPLAY_VER(i915) >= 11)
 		icl_display_core_uninit(i915);
 	else if (IS_CANNONLAKE(i915))
 		cnl_display_core_uninit(i915);
@@ -5908,7 +5908,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 void intel_display_power_suspend_late(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
+	if (DISPLAY_VER(i915) >= 11 || IS_GEN9_LP(i915)) {
 		bxt_enable_dc9(i915);
 		/* Tweaked Wa_14010685332:icp,jsp,mcc */
 		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
@@ -5921,7 +5921,7 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
 
 void intel_display_power_resume_early(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
+	if (DISPLAY_VER(i915) >= 11 || IS_GEN9_LP(i915)) {
 		gen9_sanitize_dc_state(i915);
 		bxt_disable_dc9(i915);
 		/* Tweaked Wa_14010685332:icp,jsp,mcc */
@@ -5935,7 +5935,7 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 
 void intel_display_power_suspend(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11) {
+	if (DISPLAY_VER(i915) >= 11) {
 		icl_display_core_uninit(i915);
 		bxt_enable_dc9(i915);
 	} else if (IS_GEN9_LP(i915)) {
@@ -5948,7 +5948,7 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
 
 void intel_display_power_resume(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11) {
+	if (DISPLAY_VER(i915) >= 11) {
 		bxt_disable_dc9(i915);
 		icl_display_core_init(i915, true);
 		if (i915->csr.dmc_payload) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 85d2aacd1b4f..4ba5e37f17d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -214,8 +214,8 @@ bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &intel_dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	return INTEL_GEN(dev_priv) >= 12 ||
-		(INTEL_GEN(dev_priv) == 11 &&
+	return DISPLAY_VER(dev_priv) >= 12 ||
+		(IS_DISPLAY_VER(dev_priv, 11) &&
 		 encoder->port != PORT_A);
 }
 
@@ -292,10 +292,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (INTEL_GEN(dev_priv) >= 10) {
+	if (DISPLAY_VER(dev_priv) >= 10) {
 		source_rates = cnl_rates;
 		size = ARRAY_SIZE(cnl_rates);
-		if (IS_GEN(dev_priv, 10))
+		if (IS_DISPLAY_VER(dev_priv, 10))
 			max_rate = cnl_max_source_rate(intel_dp);
 		else if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
@@ -483,7 +483,7 @@ u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 static int
 small_joiner_ram_size_bits(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11)
+	if (DISPLAY_VER(i915) >= 11)
 		return 7680 * 8;
 	else
 		return 6144 * 8;
@@ -776,7 +776,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
 	 * integer value since we support only integer values of bpp.
 	 */
-	if ((INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) &&
+	if ((DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
@@ -913,10 +913,10 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	/* On TGL, FEC is supported on all Pipes */
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		return true;
 
-	if (IS_GEN(dev_priv, 11) && pipe_config->cpu_transcoder != TRANSCODER_A)
+	if (IS_DISPLAY_VER(dev_priv, 11) && pipe_config->cpu_transcoder != TRANSCODER_A)
 		return true;
 
 	return false;
@@ -1235,7 +1235,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
 	else
 		dsc_max_bpc = min_t(u8, 10,
@@ -1474,7 +1474,7 @@ static bool intel_dp_port_has_audio(struct drm_i915_private *dev_priv,
 {
 	if (IS_G4X(dev_priv))
 		return false;
-	if (INTEL_GEN(dev_priv) < 12 && port == PORT_A)
+	if (DISPLAY_VER(dev_priv) < 12 && port == PORT_A)
 		return false;
 
 	return true;
@@ -2523,7 +2523,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp_set_common_rates(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	/*
@@ -3702,7 +3702,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 			to_intel_crtc_state(crtc->base.state);
 
 		/* retrain on the MST master transcoder */
-		if (INTEL_GEN(dev_priv) >= 12 &&
+		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
 		    !intel_dp_mst_is_master_trans(crtc_state))
 			continue;
@@ -3806,7 +3806,7 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 			to_intel_crtc_state(crtc->base.state);
 
 		/* test on the MST master transcoder */
-		if (INTEL_GEN(dev_priv) >= 12 &&
+		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
 		    !intel_dp_mst_is_master_trans(crtc_state))
 			continue;
@@ -4137,7 +4137,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV |
 								 DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
 
-	if (INTEL_GEN(i915) >= 11) {
+	if (DISPLAY_VER(i915) >= 11) {
 		/* Let PCON convert from RGB->YCbCr if possible */
 		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
 			intel_dp->dfp.rgb_to_ycbcr = true;
@@ -4255,7 +4255,7 @@ intel_dp_detect(struct drm_connector *connector,
 	}
 
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	intel_dp_configure_mst(intel_dp);
@@ -4601,7 +4601,7 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 	 * We don't enable port sync on BDW due to missing w/as and
 	 * due to not having adjusted the modeset sequence appropriately.
 	 */
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		return 0;
 
 	if (!intel_connector_needs_modeset(state, conn))
@@ -4684,10 +4684,10 @@ bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
 	 * eDP not supported on g4x. so bail out early just
 	 * for a bit extra safety in case the VBT is bonkers.
 	 */
-	if (INTEL_GEN(dev_priv) < 5)
+	if (DISPLAY_VER(dev_priv) < 5)
 		return false;
 
-	if (INTEL_GEN(dev_priv) < 9 && port == PORT_A)
+	if (DISPLAY_VER(dev_priv) < 9 && port == PORT_A)
 		return true;
 
 	return intel_bios_is_port_edp(dev_priv, port);
@@ -4708,7 +4708,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 	intel_attach_broadcast_rgb_property(connector);
 	if (HAS_GMCH(dev_priv))
 		drm_connector_attach_max_bpc_property(connector, 6, 10);
-	else if (INTEL_GEN(dev_priv) >= 5)
+	else if (DISPLAY_VER(dev_priv) >= 5)
 		drm_connector_attach_max_bpc_property(connector, 6, 12);
 
 	/* Register HDMI colorspace for case of lspcon */
@@ -4719,7 +4719,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 11)
+	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
 		drm_object_attach_property(&connector->base,
 					   connector->dev->mode_config.hdr_output_metadata_property,
 					   0);
@@ -4800,7 +4800,7 @@ static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
 		switch (index) {
 		case DRRS_HIGH_RR:
 			intel_dp_set_m_n(crtc_state, M1_N1);
@@ -4813,7 +4813,7 @@ static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
 			drm_err(&dev_priv->drm,
 				"Unsupported refreshrate type\n");
 		}
-	} else if (INTEL_GEN(dev_priv) > 6) {
+	} else if (DISPLAY_VER(dev_priv) > 6) {
 		i915_reg_t reg = PIPECONF(crtc_state->cpu_transcoder);
 		u32 val;
 
@@ -5141,7 +5141,7 @@ intel_dp_drrs_init(struct intel_connector *connector,
 	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_edp_drrs_downclock_work);
 	mutex_init(&dev_priv->drrs.mutex);
 
-	if (INTEL_GEN(dev_priv) <= 6) {
+	if (DISPLAY_VER(dev_priv) <= 6) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "DRRS supported for Gen7 and above\n");
 		return NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index a1a0e98c1853..7e83bc2cc34a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -654,10 +654,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &dig_port->base;
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_dp->aux_ch_ctl_reg = tgl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = tgl_aux_data_reg;
-	} else if (INTEL_GEN(dev_priv) >= 9) {
+	} else if (DISPLAY_VER(dev_priv) >= 9) {
 		intel_dp->aux_ch_ctl_reg = skl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = skl_aux_data_reg;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
@@ -668,7 +668,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		intel_dp->get_aux_clock_divider = skl_get_aux_clock_divider;
 	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		intel_dp->get_aux_clock_divider = hsw_get_aux_clock_divider;
@@ -677,7 +677,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	else
 		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
 	else
 		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
@@ -685,7 +685,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	drm_dp_aux_init(&intel_dp->aux);
 
 	/* Failure to allocate our preferred name is not critical */
-	if (INTEL_GEN(dev_priv) >= 12 && aux_ch >= AUX_CH_USBC1)
+	if (DISPLAY_VER(dev_priv) >= 12 && aux_ch >= AUX_CH_USBC1)
 		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
 					       aux_ch - AUX_CH_USBC1 + '1',
 					       encoder->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 7f3979577fce..5e9c3c74310c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -96,7 +96,7 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp)
 	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
 	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
 	 */
-	if (INTEL_GEN(i915) < 10)
+	if (DISPLAY_VER(i915) < 10)
 		return false;
 
 	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 906860ad8eb8..2daa3f67791e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -177,7 +177,7 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
 	u8 transcoders = 0;
 	int i;
 
-	if (INTEL_GEN(dev_priv) < 12)
+	if (DISPLAY_VER(dev_priv) < 12)
 		return 0;
 
 	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
@@ -228,7 +228,7 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
 	struct drm_connector_list_iter connector_list_iter;
 	struct intel_connector *connector_iter;
 
-	if (INTEL_GEN(dev_priv) < 12)
+	if (DISPLAY_VER(dev_priv) < 12)
 		return  0;
 
 	if (!intel_connector_needs_modeset(state, &connector->base))
@@ -390,7 +390,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	intel_dp->active_mst_links--;
 	last_mst_stream = intel_dp->active_mst_links == 0;
 	drm_WARN_ON(&dev_priv->drm,
-		    INTEL_GEN(dev_priv) >= 12 && last_mst_stream &&
+		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -414,7 +414,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_scaler_disable(old_crtc_state);
 	else
 		ilk_pfit_disable(old_crtc_state);
@@ -440,7 +440,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 * From older GENs spec: "Configure Transcoder Clock Select to direct
 	 * no clock to the transcoder"
 	 */
-	if (INTEL_GEN(dev_priv) < 12 || !last_mst_stream)
+	if (DISPLAY_VER(dev_priv) < 12 || !last_mst_stream)
 		intel_ddi_disable_pipe_clock(old_crtc_state);
 
 
@@ -488,7 +488,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	intel_mst->connector = connector;
 	first_mst_stream = intel_dp->active_mst_links == 0;
 	drm_WARN_ON(&dev_priv->drm,
-		    INTEL_GEN(dev_priv) >= 12 && first_mst_stream &&
+		    DISPLAY_VER(dev_priv) >= 12 && first_mst_stream &&
 		    !intel_dp_mst_is_master_trans(pipe_config));
 
 	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
@@ -521,7 +521,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	 * first MST stream, so it's done on the DDI for the first stream and
 	 * here for the following ones.
 	 */
-	if (INTEL_GEN(dev_priv) < 12 || !first_mst_stream)
+	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_pipe_clock(encoder, pipe_config);
 
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
@@ -831,7 +831,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	intel_attach_force_audio_property(connector);
 	intel_attach_broadcast_rgb_property(connector);
 
-	if (INTEL_GEN(dev_priv) <= 12) {
+	if (DISPLAY_VER(dev_priv) <= 12) {
 		ret = intel_dp_init_hdcp(dig_port, intel_connector);
 		if (ret)
 			drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
@@ -945,10 +945,10 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
 		return 0;
 
-	if (INTEL_GEN(i915) < 12 && port == PORT_A)
+	if (DISPLAY_VER(i915) < 12 && port == PORT_A)
 		return 0;
 
-	if (INTEL_GEN(i915) < 11 && port == PORT_E)
+	if (DISPLAY_VER(i915) < 11 && port == PORT_E)
 		return 0;
 
 	intel_dp->mst_mgr.cbs = &mst_cbs;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 166e9a3a8c09..3e3c5eed1600 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -847,7 +847,7 @@ static void i9xx_compute_dpll(struct intel_crtc *crtc,
 		dpll |= DPLLB_LVDS_P2_CLOCK_DIV_14;
 		break;
 	}
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		dpll |= (6 << PLL_LOAD_PULSE_PHASE_SHIFT);
 
 	if (crtc_state->sdvo_tv_clock)
@@ -861,7 +861,7 @@ static void i9xx_compute_dpll(struct intel_crtc *crtc,
 	dpll |= DPLL_VCO_ENABLE;
 	crtc_state->dpll_hw_state.dpll = dpll;
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		u32 dpll_md = (crtc_state->pixel_multiplier - 1)
 			<< DPLL_MD_UDI_MULTIPLIER_SHIFT;
 		crtc_state->dpll_hw_state.dpll_md = dpll_md;
@@ -926,7 +926,7 @@ static int hsw_crtc_compute_clock(struct intel_crtc *crtc,
 		to_intel_atomic_state(crtc_state->uapi.state);
 
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) ||
-	    INTEL_GEN(dev_priv) >= 11) {
+	    DISPLAY_VER(dev_priv) >= 11) {
 		struct intel_encoder *encoder =
 			intel_get_crtc_new_encoder(state, crtc_state);
 
@@ -1346,7 +1346,7 @@ static int i8xx_crtc_compute_clock(struct intel_crtc *crtc,
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) >= 9 || HAS_DDI(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
 		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		dev_priv->display.crtc_compute_clock = ilk_crtc_compute_clock;
@@ -1358,7 +1358,7 @@ intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 		dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
 	else if (IS_PINEVIEW(dev_priv))
 		dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
-	else if (!IS_GEN(dev_priv, 2))
+	else if (!IS_DISPLAY_VER(dev_priv, 2))
 		dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
 	else
 		dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
@@ -1398,7 +1398,7 @@ void i9xx_enable_pll(struct intel_crtc *crtc,
 	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		intel_de_write(dev_priv, DPLL_MD(crtc->pipe),
 			       crtc_state->dpll_hw_state.dpll_md);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 756c53ac6ec2..1ae158d12c07 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -247,7 +247,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	unsigned int pipe_mask = BIT(crtc->pipe);
 
 	/* PCH only available on ILK+ */
-	if (INTEL_GEN(dev_priv) < 5)
+	if (DISPLAY_VER(dev_priv) < 5)
 		return;
 
 	if (pll == NULL)
@@ -3017,7 +3017,7 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		switch (dev_priv->dpll.ref_clks.nssc) {
 		default:
 			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
@@ -3112,7 +3112,7 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 			    DPLL_CFGCR1_KDIV(pll_params->kdiv) |
 			    DPLL_CFGCR1_PDIV(pll_params->pdiv);
 
-	if (INTEL_GEN(i915) >= 12)
+	if (DISPLAY_VER(i915) >= 12)
 		pll_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
 	else
 		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
@@ -3222,7 +3222,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	u64 tmp;
 	bool use_ssc = false;
 	bool is_dp = !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
-	bool is_dkl = INTEL_GEN(dev_priv) >= 12;
+	bool is_dkl = DISPLAY_VER(dev_priv) >= 12;
 
 	memset(pll_state, 0, sizeof(*pll_state));
 
@@ -3422,7 +3422,7 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
 
 	ref_clock = dev_priv->dpll.ref_clks.nssc;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
 		m1 = m1 >> DKL_PLL_DIV0_FBPREDIV_SHIFT;
 		m2_int = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
@@ -3884,7 +3884,7 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 						 RKL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(dev_priv,
 						 RKL_DPLL_CFGCR1(id));
-	} else if (INTEL_GEN(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		hw_state->cfgcr0 = intel_de_read(dev_priv,
 						 TGL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(dev_priv,
@@ -3941,7 +3941,7 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		cfgcr0_reg = RKL_DPLL_CFGCR0(id);
 		cfgcr1_reg = RKL_DPLL_CFGCR1(id);
-	} else if (INTEL_GEN(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		cfgcr0_reg = TGL_DPLL_CFGCR0(id);
 		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
 	} else {
@@ -4172,7 +4172,7 @@ static void mg_pll_enable(struct drm_i915_private *dev_priv,
 
 	icl_pll_power_enable(dev_priv, pll, enable_reg);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		dkl_pll_write(dev_priv, pll);
 	else
 		icl_mg_pll_write(dev_priv, pll);
@@ -4433,11 +4433,11 @@ void intel_shared_dpll_init(struct drm_device *dev)
 		dpll_mgr = &dg1_pll_mgr;
 	else if (IS_ROCKETLAKE(dev_priv))
 		dpll_mgr = &rkl_pll_mgr;
-	else if (INTEL_GEN(dev_priv) >= 12)
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
 	else if (IS_JSL_EHL(dev_priv))
 		dpll_mgr = &ehl_pll_mgr;
-	else if (INTEL_GEN(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		dpll_mgr = &icl_pll_mgr;
 	else if (IS_CANNONLAKE(dev_priv))
 		dpll_mgr = &cnl_pll_mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index e349caef1926..c2a2cd1f84dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -203,7 +203,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 		break;
 	}
 
-	if (INTEL_GEN(dev_priv) < 11)
+	if (DISPLAY_VER(dev_priv) < 11)
 		vlv_dsi_wait_for_fifo_empty(intel_dsi, port);
 
 out:
@@ -380,7 +380,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	/* pull up/down */
 	value = *data++ & 1;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		icl_exec_gpio(dev_priv, gpio_source, gpio_index, value);
 	else if (IS_VALLEYVIEW(dev_priv))
 		vlv_exec_gpio(dev_priv, gpio_source, gpio_number, value);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index c7beda2e35bc..58f603066700 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -67,9 +67,9 @@ static int intel_fbc_calculate_cfb_size(struct drm_i915_private *dev_priv,
 	int lines;
 
 	intel_fbc_get_plane_source_size(cache, NULL, &lines);
-	if (IS_GEN(dev_priv, 7))
+	if (IS_DISPLAY_VER(dev_priv, 7))
 		lines = min(lines, 2048);
-	else if (INTEL_GEN(dev_priv) >= 8)
+	else if (DISPLAY_VER(dev_priv) >= 8)
 		lines = min(lines, 2560);
 
 	/* Hardware needs the full buffer stride, not just the active area. */
@@ -109,7 +109,7 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 		cfb_pitch = params->fb.stride;
 
 	/* FBC_CTL wants 32B or 64B units */
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		cfb_pitch = (cfb_pitch / 32) - 1;
 	else
 		cfb_pitch = (cfb_pitch / 64) - 1;
@@ -118,7 +118,7 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 	for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
 		intel_de_write(dev_priv, FBC_TAG(i), 0);
 
-	if (IS_GEN(dev_priv, 4)) {
+	if (IS_DISPLAY_VER(dev_priv, 4)) {
 		u32 fbc_ctl2;
 
 		/* Set it up... */
@@ -222,9 +222,9 @@ static void snb_fbc_recompress(struct drm_i915_private *dev_priv)
 
 static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) >= 6)
+	if (DISPLAY_VER(dev_priv) >= 6)
 		snb_fbc_recompress(dev_priv);
-	else if (INTEL_GEN(dev_priv) >= 4)
+	else if (DISPLAY_VER(dev_priv) >= 4)
 		i965_fbc_recompress(dev_priv);
 	else
 		i8xx_fbc_recompress(dev_priv);
@@ -354,7 +354,7 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 
 static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) >= 5)
+	if (DISPLAY_VER(dev_priv) >= 5)
 		return ilk_fbc_is_active(dev_priv);
 	else if (IS_GM45(dev_priv))
 		return g4x_fbc_is_active(dev_priv);
@@ -371,9 +371,9 @@ static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
 	fbc->active = true;
 	fbc->activated = true;
 
-	if (INTEL_GEN(dev_priv) >= 7)
+	if (DISPLAY_VER(dev_priv) >= 7)
 		gen7_fbc_activate(dev_priv);
-	else if (INTEL_GEN(dev_priv) >= 5)
+	else if (DISPLAY_VER(dev_priv) >= 5)
 		ilk_fbc_activate(dev_priv);
 	else if (IS_GM45(dev_priv))
 		g4x_fbc_activate(dev_priv);
@@ -389,7 +389,7 @@ static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
 
 	fbc->active = false;
 
-	if (INTEL_GEN(dev_priv) >= 5)
+	if (DISPLAY_VER(dev_priv) >= 5)
 		ilk_fbc_deactivate(dev_priv);
 	else if (IS_GM45(dev_priv))
 		g4x_fbc_deactivate(dev_priv);
@@ -426,7 +426,7 @@ static void intel_fbc_deactivate(struct drm_i915_private *dev_priv,
 
 static u64 intel_fbc_cfb_base_max(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 5 || IS_G4X(i915))
+	if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
 		return BIT_ULL(28);
 	else
 		return BIT_ULL(32);
@@ -473,7 +473,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 
 	ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size >>= 1,
 						   4096, 0, end);
-	if (ret && INTEL_GEN(dev_priv) <= 4) {
+	if (ret && DISPLAY_VER(dev_priv) <= 4) {
 		return 0;
 	} else if (ret) {
 		compression_threshold <<= 1;
@@ -504,7 +504,7 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 
 	fbc->threshold = ret;
 
-	if (INTEL_GEN(dev_priv) >= 5)
+	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_de_write(dev_priv, ILK_DPFC_CB_BASE,
 			       fbc->compressed_fb.start);
 	else if (IS_GM45(dev_priv)) {
@@ -590,14 +590,14 @@ static bool stride_is_valid(struct drm_i915_private *dev_priv,
 	if (stride < 512)
 		return false;
 
-	if (IS_GEN(dev_priv, 2) || IS_GEN(dev_priv, 3))
+	if (IS_DISPLAY_VER(dev_priv, 2) || IS_DISPLAY_VER(dev_priv, 3))
 		return stride == 4096 || stride == 8192;
 
-	if (IS_GEN(dev_priv, 4) && !IS_G4X(dev_priv) && stride < 2048)
+	if (IS_DISPLAY_VER(dev_priv, 4) && !IS_G4X(dev_priv) && stride < 2048)
 		return false;
 
 	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
-	if (IS_GEN(dev_priv, 9) &&
+	if (IS_DISPLAY_VER(dev_priv, 9) &&
 	    modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
 		return false;
 
@@ -617,7 +617,7 @@ static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
 	case DRM_FORMAT_XRGB1555:
 	case DRM_FORMAT_RGB565:
 		/* 16bpp not supported on gen2 */
-		if (IS_GEN(dev_priv, 2))
+		if (IS_DISPLAY_VER(dev_priv, 2))
 			return false;
 		/* WaFbcOnly1to1Ratio:ctg */
 		if (IS_G4X(dev_priv))
@@ -631,10 +631,10 @@ static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
 static bool rotation_is_valid(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, unsigned int rotation)
 {
-	if (INTEL_GEN(dev_priv) >= 9 && pixel_format == DRM_FORMAT_RGB565 &&
+	if (DISPLAY_VER(dev_priv) >= 9 && pixel_format == DRM_FORMAT_RGB565 &&
 	    drm_rotation_90_or_270(rotation))
 		return false;
-	else if (INTEL_GEN(dev_priv) <= 4 && !IS_G4X(dev_priv) &&
+	else if (DISPLAY_VER(dev_priv) <= 4 && !IS_G4X(dev_priv) &&
 		 rotation != DRM_MODE_ROTATE_0)
 		return false;
 
@@ -653,13 +653,13 @@ static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	unsigned int effective_w, effective_h, max_w, max_h;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 		max_w = 5120;
 		max_h = 4096;
-	} else if (INTEL_GEN(dev_priv) >= 8 || IS_HASWELL(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) {
 		max_w = 4096;
 		max_h = 4096;
-	} else if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >= 5) {
+	} else if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5) {
 		max_w = 4096;
 		max_h = 2048;
 	} else {
@@ -680,7 +680,7 @@ static bool tiling_is_valid(struct drm_i915_private *dev_priv,
 {
 	switch (modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
-		if (INTEL_GEN(dev_priv) >= 9)
+		if (DISPLAY_VER(dev_priv) >= 9)
 			return true;
 		return false;
 	case I915_FORMAT_MOD_X_TILED:
@@ -844,7 +844,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * For now this will effectively disable FBC with 90/270 degree
 	 * rotation.
 	 */
-	if (INTEL_GEN(dev_priv) < 9 && cache->fence_id < 0) {
+	if (DISPLAY_VER(dev_priv) < 9 && cache->fence_id < 0) {
 		fbc->no_fbc_reason = "framebuffer not tiled or fenced";
 		return false;
 	}
@@ -903,14 +903,14 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
 	 * and screen flicker.
 	 */
-	if (INTEL_GEN(dev_priv) >= 9 &&
+	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    (fbc->state_cache.plane.adjusted_y & 3)) {
 		fbc->no_fbc_reason = "plane Y offset is misaligned";
 		return false;
 	}
 
 	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
-	if (INTEL_GEN(dev_priv) >= 11 &&
+	if (DISPLAY_VER(dev_priv) >= 11 &&
 	    (cache->plane.src_h + cache->plane.adjusted_y) % 4) {
 		fbc->no_fbc_reason = "plane height + offset is non-modulo of 4";
 		return false;
@@ -1036,7 +1036,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 		 * if at least one frame has already passed.
 		 */
 		if (fbc->activated &&
-		    (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
+		    (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
 			need_vblank_wait = true;
 		fbc->activated = false;
 	}
@@ -1445,7 +1445,7 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *dev_priv)
 	if (!HAS_FBC(dev_priv))
 		return 0;
 
-	if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >= 9)
+	if (IS_BROADWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 9)
 		return 1;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index d2ce9596036a..9605a1064366 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -271,9 +271,9 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
 	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
 		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
-	else if (IS_GEN(dev_priv, 7))
+	else if (IS_DISPLAY_VER(dev_priv, 7))
 		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
-	else if (INTEL_GEN(dev_priv) >= 8)
+	else if (DISPLAY_VER(dev_priv) >= 8)
 		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
 
 	return old;
@@ -432,7 +432,7 @@ void intel_check_cpu_fifo_underruns(struct drm_i915_private *dev_priv)
 
 		if (HAS_GMCH(dev_priv))
 			i9xx_check_fifo_underruns(crtc);
-		else if (IS_GEN(dev_priv, 7))
+		else if (IS_DISPLAY_VER(dev_priv, 7))
 			ivb_check_fifo_underruns(crtc);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0c952e1d720e..8ddc20daef64 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -392,7 +392,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 
 static unsigned int gmbus_max_xfer_size(struct drm_i915_private *dev_priv)
 {
-	return INTEL_GEN(dev_priv) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
+	return DISPLAY_VER(dev_priv) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
 	       GMBUS_BYTE_COUNT_MAX;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ae1371c36a32..d418fe796263 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -318,7 +318,7 @@ static
 u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
 				enum transcoder cpu_transcoder, enum port port)
 {
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		switch (cpu_transcoder) {
 		case TRANSCODER_A:
 			return HDCP_TRANSA_REP_PRESENT |
@@ -1089,7 +1089,7 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
 {
 	return INTEL_INFO(dev_priv)->display.has_hdcp &&
-			(INTEL_GEN(dev_priv) >= 12 || port < PORT_E);
+			(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
 }
 
 static int
@@ -2137,7 +2137,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 
-	if (INTEL_GEN(dev_priv) < 12)
+	if (DISPLAY_VER(dev_priv) < 12)
 		data->fw_ddi = intel_get_mei_fw_ddi_index(port);
 	else
 		/*
@@ -2176,7 +2176,7 @@ static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
 		return false;
 
-	return (INTEL_GEN(dev_priv) >= 10 ||
+	return (DISPLAY_VER(dev_priv) >= 10 ||
 		IS_GEMINILAKE(dev_priv) ||
 		IS_KABYLAKE(dev_priv) ||
 		IS_COFFEELAKE(dev_priv) ||
@@ -2288,7 +2288,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 		hdcp->stream_transcoder = INVALID_TRANSCODER;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ca38044eb6af..ef766a7b6c71 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -181,7 +181,7 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
 	case DP_SDP_PPS:
 		return VIDEO_DIP_PPS_DATA_SIZE;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (DISPLAY_VER(dev_priv) >= 11)
 			return VIDEO_DIP_GMP_DATA_SIZE;
 		else
 			return VIDEO_DIP_DATA_SIZE;
@@ -564,7 +564,7 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
 
 	return val & mask;
@@ -820,7 +820,7 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int ret;
 
-	if (!(INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
+	if (!(DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
 		return true;
 
 	if (!crtc_state->has_infoframe)
@@ -1775,11 +1775,11 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_tmds_clock, vbt_max_tmds_clock;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		max_tmds_clock = 594000;
-	else if (INTEL_GEN(dev_priv) >= 8 || IS_HASWELL(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv))
 		max_tmds_clock = 300000;
-	else if (INTEL_GEN(dev_priv) >= 5)
+	else if (DISPLAY_VER(dev_priv) >= 5)
 		max_tmds_clock = 225000;
 	else
 		max_tmds_clock = 165000;
@@ -1902,7 +1902,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 						       true, has_hdmi_sink);
 
 		/* if we can't do 8,12bpc we may still be able to do 10bpc */
-		if (status != MODE_OK && INTEL_GEN(dev_priv) >= 11)
+		if (status != MODE_OK && DISPLAY_VER(dev_priv) >= 11)
 			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
 						       true, has_hdmi_sink);
 	}
@@ -1965,7 +1965,7 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
 	if (HAS_GMCH(dev_priv))
 		return false;
 
-	if (bpc == 10 && INTEL_GEN(dev_priv) < 11)
+	if (bpc == 10 && DISPLAY_VER(dev_priv) < 11)
 		return false;
 
 	/*
@@ -1977,7 +1977,7 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
 
 	/* Display Wa_1405510057:icl,ehl */
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
-	    bpc == 10 && IS_GEN(dev_priv, 11) &&
+	    bpc == 10 && IS_DISPLAY_VER(dev_priv, 11) &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
 		return false;
@@ -2164,7 +2164,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->lane_count = 4;
 
-	if (scdc->scrambling.supported && (INTEL_GEN(dev_priv) >= 10 ||
+	if (scdc->scrambling.supported && (DISPLAY_VER(dev_priv) >= 10 ||
 					   IS_GEMINILAKE(dev_priv))) {
 		if (scdc->scrambling.low_rates)
 			pipe_config->hdmi_scrambling = true;
@@ -2323,7 +2323,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
 
-	if (INTEL_GEN(dev_priv) >= 11 &&
+	if (DISPLAY_VER(dev_priv) >= 11 &&
 	    !intel_digital_port_connected(encoder))
 		goto out;
 
@@ -2460,7 +2460,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 	intel_attach_hdmi_colorspace_property(connector);
 	drm_connector_attach_content_type_property(connector);
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		drm_object_attach_property(&connector->base,
 			connector->dev->mode_config.hdr_output_metadata_property, 0);
 
@@ -2793,7 +2793,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		    "Adding HDMI connector on [ENCODER:%d:%s]\n",
 		    intel_encoder->base.base.id, intel_encoder->base.name);
 
-	if (INTEL_GEN(dev_priv) < 12 && drm_WARN_ON(dev, port == PORT_A))
+	if (DISPLAY_VER(dev_priv) < 12 && drm_WARN_ON(dev, port == PORT_A))
 		return;
 
 	if (drm_WARN(dev, dig_port->max_lanes < 4,
@@ -2815,7 +2815,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	connector->doublescan_allowed = 0;
 	connector->stereo_allowed = 1;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		connector->ycbcr_420_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index c6c7c0b9989b..f31a368f34c5 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -136,12 +136,12 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 
 	pipe_config->hw.adjusted_mode.flags |= flags;
 
-	if (INTEL_GEN(dev_priv) < 5)
+	if (DISPLAY_VER(dev_priv) < 5)
 		pipe_config->gmch_pfit.lvds_border_bits =
 			tmp & LVDS_BORDER_ENABLE;
 
 	/* gen2/3 store dither state in pfit control, needs to match */
-	if (INTEL_GEN(dev_priv) < 4) {
+	if (DISPLAY_VER(dev_priv) < 4) {
 		tmp = intel_de_read(dev_priv, PFIT_CONTROL);
 
 		pipe_config->gmch_pfit.control |= tmp & PANEL_8TO6_DITHER_ENABLE;
@@ -179,7 +179,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	/* Convert from 100ms to 100us units */
 	pps->t4 = val * 1000;
 
-	if (INTEL_GEN(dev_priv) <= 4 &&
+	if (DISPLAY_VER(dev_priv) <= 4 &&
 	    pps->t1_t2 == 0 && pps->t5 == 0 && pps->t3 == 0 && pps->tx == 0) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Panel power timings uninitialized, "
@@ -280,7 +280,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 	 * special lvds dither control bit on pch-split platforms, dithering is
 	 * only controlled through the PIPECONF reg.
 	 */
-	if (IS_GEN(dev_priv, 4)) {
+	if (IS_DISPLAY_VER(dev_priv, 4)) {
 		/*
 		 * Bspec wording suggests that LVDS port dithering only exists
 		 * for 18bpp panels.
@@ -415,7 +415,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	int ret;
 
 	/* Should never happen!! */
-	if (INTEL_GEN(dev_priv) < 4 && intel_crtc->pipe == 0) {
+	if (DISPLAY_VER(dev_priv) < 4 && intel_crtc->pipe == 0) {
 		drm_err(&dev_priv->drm, "Can't support LVDS on pipe A\n");
 		return -EINVAL;
 	}
@@ -915,7 +915,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	intel_encoder->port = PORT_NONE;
 	intel_encoder->cloneable = 0;
-	if (INTEL_GEN(dev_priv) < 4)
+	if (DISPLAY_VER(dev_priv) < 4)
 		intel_encoder->pipe_mask = BIT(PIPE_B);
 	else
 		intel_encoder->pipe_mask = ~0;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index ef8f44f5e751..9211f6c97b26 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -550,7 +550,7 @@ static u32 calc_swidthsw(struct drm_i915_private *dev_priv, u32 offset, u32 widt
 {
 	u32 sw;
 
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		sw = ALIGN((offset & 31) + width, 32);
 	else
 		sw = ALIGN((offset & 63) + width, 64);
@@ -794,7 +794,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 			oconfig |= OCONF_CC_OUT_8BIT;
 		if (crtc_state->gamma_enable)
 			oconfig |= OCONF_GAMMA2_ENABLE;
-		if (IS_GEN(dev_priv, 4))
+		if (IS_DISPLAY_VER(dev_priv, 4))
 			oconfig |= OCONF_CSC_MODE_BT709;
 		oconfig |= pipe == 0 ?
 			OCONF_PIPE_A : OCONF_PIPE_B;
@@ -913,7 +913,7 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 	/* XXX: This is not the same logic as in the xorg driver, but more in
 	 * line with the intel documentation for the i965
 	 */
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		/* on i965 use the PGM reg to read out the autoscaler values */
 		ratio = intel_de_read(dev_priv, PFIT_PGM_RATIOS) >> PFIT_VERT_SCALE_SHIFT_965;
 	} else {
@@ -1028,7 +1028,7 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
 
 	if (rec->stride_Y & stride_mask || rec->stride_UV & stride_mask)
 		return -EINVAL;
-	if (IS_GEN(dev_priv, 4) && rec->stride_Y < 512)
+	if (IS_DISPLAY_VER(dev_priv, 4) && rec->stride_Y < 512)
 		return -EINVAL;
 
 	tmp = (rec->flags & I915_OVERLAY_TYPE_MASK) == I915_OVERLAY_YUV_PLANAR ?
@@ -1255,7 +1255,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 		attrs->contrast   = overlay->contrast;
 		attrs->saturation = overlay->saturation;
 
-		if (!IS_GEN(dev_priv, 2)) {
+		if (!IS_DISPLAY_VER(dev_priv, 2)) {
 			attrs->gamma0 = intel_de_read(dev_priv, OGAMC0);
 			attrs->gamma1 = intel_de_read(dev_priv, OGAMC1);
 			attrs->gamma2 = intel_de_read(dev_priv, OGAMC2);
@@ -1279,7 +1279,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 		update_reg_attrs(overlay, overlay->regs);
 
 		if (attrs->flags & I915_OVERLAY_UPDATE_GAMMA) {
-			if (IS_GEN(dev_priv, 2))
+			if (IS_DISPLAY_VER(dev_priv, 2))
 				goto out_unlock;
 
 			if (overlay->active) {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 4653b5ef382f..10022d1575e1 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -405,7 +405,7 @@ int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 		break;
 	case DRM_MODE_SCALE_ASPECT:
 		/* Scale but preserve the aspect ratio */
-		if (INTEL_GEN(dev_priv) >= 4)
+		if (DISPLAY_VER(dev_priv) >= 4)
 			i965_scale_aspect(crtc_state, &pfit_control);
 		else
 			i9xx_scale_aspect(crtc_state, &pfit_control,
@@ -419,7 +419,7 @@ int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 		if (crtc_state->pipe_src_h != adjusted_mode->crtc_vdisplay ||
 		    crtc_state->pipe_src_w != adjusted_mode->crtc_hdisplay) {
 			pfit_control |= PFIT_ENABLE;
-			if (INTEL_GEN(dev_priv) >= 4)
+			if (DISPLAY_VER(dev_priv) >= 4)
 				pfit_control |= PFIT_SCALING_AUTO;
 			else
 				pfit_control |= (VERT_AUTO_SCALE |
@@ -435,7 +435,7 @@ int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 
 	/* 965+ wants fuzzy fitting */
 	/* FIXME: handle multiple panels by failing gracefully */
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		pfit_control |= PFIT_PIPE(crtc->pipe) | PFIT_FILTER_FUZZY;
 
 out:
@@ -445,7 +445,7 @@ int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	}
 
 	/* Make sure pre-965 set dither correctly for 18bpp panels. */
-	if (INTEL_GEN(dev_priv) < 4 && crtc_state->pipe_bpp == 18)
+	if (DISPLAY_VER(dev_priv) < 4 && crtc_state->pipe_bpp == 18)
 		pfit_control |= PANEL_8TO6_DITHER_ENABLE;
 
 	crtc_state->gmch_pfit.control = pfit_control;
@@ -590,7 +590,7 @@ static u32 i9xx_get_backlight(struct intel_connector *connector, enum pipe unuse
 	u32 val;
 
 	val = intel_de_read(dev_priv, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
-	if (INTEL_GEN(dev_priv) < 4)
+	if (DISPLAY_VER(dev_priv) < 4)
 		val >>= 1;
 
 	if (panel->backlight.combination_mode) {
@@ -667,7 +667,7 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
 		pci_write_config_byte(to_pci_dev(dev_priv->drm.dev), LBPC, lbpc);
 	}
 
-	if (IS_GEN(dev_priv, 4)) {
+	if (IS_DISPLAY_VER(dev_priv, 4)) {
 		mask = BACKLIGHT_DUTY_CYCLE_MASK;
 	} else {
 		level <<= 1;
@@ -1040,7 +1040,7 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	 * 855gm only, but checking for gen2 is safe, as 855gm is the only gen2
 	 * that has backlight.
 	 */
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		intel_de_write(dev_priv, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
 }
 
@@ -1728,7 +1728,7 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
 
-	if (IS_GEN(dev_priv, 2) || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
+	if (IS_DISPLAY_VER(dev_priv, 2) || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
 		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;
 
 	if (IS_PINEVIEW(dev_priv))
@@ -2178,7 +2178,7 @@ intel_panel_init_backlight_funcs(struct intel_panel *panel)
 		} else {
 			panel->backlight.pwm_funcs = &vlv_pwm_funcs;
 		}
-	} else if (IS_GEN(dev_priv, 4)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 4)) {
 		panel->backlight.pwm_funcs = &i965_pwm_funcs;
 	} else {
 		panel->backlight.pwm_funcs = &i9xx_pwm_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 7d8eaf8dfb98..7c8e0d76207f 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -409,15 +409,15 @@ static int get_new_crc_ctl_reg(struct drm_i915_private *dev_priv,
 			       enum pipe pipe,
 			       enum intel_pipe_crc_source *source, u32 *val)
 {
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		return i8xx_pipe_crc_ctl_reg(source, val);
-	else if (INTEL_GEN(dev_priv) < 5)
+	else if (DISPLAY_VER(dev_priv) < 5)
 		return i9xx_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return vlv_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
 		return ilk_pipe_crc_ctl_reg(source, val);
-	else if (INTEL_GEN(dev_priv) < 9)
+	else if (DISPLAY_VER(dev_priv) < 9)
 		return ivb_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 	else
 		return skl_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
@@ -539,15 +539,15 @@ static int
 intel_is_valid_crc_source(struct drm_i915_private *dev_priv,
 			  const enum intel_pipe_crc_source source)
 {
-	if (IS_GEN(dev_priv, 2))
+	if (IS_DISPLAY_VER(dev_priv, 2))
 		return i8xx_crc_source_valid(dev_priv, source);
-	else if (INTEL_GEN(dev_priv) < 5)
+	else if (DISPLAY_VER(dev_priv) < 5)
 		return i9xx_crc_source_valid(dev_priv, source);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return vlv_crc_source_valid(dev_priv, source);
 	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
 		return ilk_crc_source_valid(dev_priv, source);
-	else if (INTEL_GEN(dev_priv) < 9)
+	else if (DISPLAY_VER(dev_priv) < 9)
 		return ivb_crc_source_valid(dev_priv, source);
 	else
 		return skl_crc_source_valid(dev_priv, source);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd434285e3b7..4ab568f82ddf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -118,7 +118,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 	 * using the same bit definition: handle it as TRANSCODER_EDP to force
 	 * 0 shift in bit definition
 	 */
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		trans_shift = 0;
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
 	} else {
@@ -184,7 +184,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	enum transcoder trans_shift;
 	i915_reg_t imr_reg;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		trans_shift = 0;
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
 	} else {
@@ -205,7 +205,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 			    "[transcoder %s] PSR exit completed\n",
 			    transcoder_name(cpu_transcoder));
 
-		if (INTEL_GEN(dev_priv) >= 9) {
+		if (DISPLAY_VER(dev_priv) >= 9) {
 			u32 val = intel_de_read(dev_priv,
 						PSR_EVENT(cpu_transcoder));
 			bool psr2_enabled = intel_dp->psr.psr2_enabled;
@@ -321,7 +321,7 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp->psr.sink_sync_latency =
 		intel_dp_get_sink_sync_latency(intel_dp);
 
-	if (INTEL_GEN(dev_priv) >= 9 &&
+	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED)) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
@@ -402,7 +402,7 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 		if (intel_dp->psr.link_standby)
 			dpcd_val |= DP_PSR_MAIN_LINK_ACTIVE;
 
-		if (INTEL_GEN(dev_priv) >= 8)
+		if (DISPLAY_VER(dev_priv) >= 8)
 			dpcd_val |= DP_PSR_CRC_VERIFICATION;
 	}
 
@@ -416,7 +416,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val = 0;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		val |= EDP_PSR_TP4_TIME_0US;
 
 	if (dev_priv->params.psr_safest_params) {
@@ -487,7 +487,7 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	val |= intel_psr1_get_tp_time(intel_dp);
 
-	if (INTEL_GEN(dev_priv) >= 8)
+	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
 	val |= (intel_de_read(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder)) &
@@ -524,13 +524,13 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	val = psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
 
 	val |= EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		val |= EDP_Y_COORDINATE_ENABLE;
 
 	val |= EDP_PSR2_FRAME_BEFORE_SU(intel_dp->psr.sink_sync_latency + 1);
 	val |= intel_psr2_get_tp_time(intel_dp);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		/*
 		 * TODO: 7 lines of IO_BUFFER_WAKE and FAST_WAKE are default
 		 * values from BSpec. In order to setting an optimal power
@@ -541,7 +541,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(7);
 		val |= TGL_EDP_PSR2_FAST_WAKE(7);
-	} else if (INTEL_GEN(dev_priv) >= 9) {
+	} else if (DISPLAY_VER(dev_priv) >= 9) {
 		val |= EDP_PSR2_IO_BUFFER_WAKE(7);
 		val |= EDP_PSR2_FAST_WAKE(7);
 	}
@@ -574,9 +574,9 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 static bool
 transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder trans)
 {
-	if (INTEL_GEN(dev_priv) < 9)
+	if (DISPLAY_VER(dev_priv) < 9)
 		return false;
-	else if (INTEL_GEN(dev_priv) >= 12)
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		return trans == TRANSCODER_A;
 	else
 		return trans == TRANSCODER_EDP;
@@ -761,15 +761,15 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-	} else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 		psr_max_h = 4096;
 		psr_max_v = 2304;
 		max_bpp = 24;
-	} else if (IS_GEN(dev_priv, 9)) {
+	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
 		psr_max_h = 3640;
 		psr_max_v = 2304;
 		max_bpp = 24;
@@ -909,7 +909,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		hsw_psr_setup_aux(intel_dp);
 
-	if (intel_dp->psr.psr2_enabled && (IS_GEN(dev_priv, 9) &&
+	if (intel_dp->psr.psr2_enabled && (IS_DISPLAY_VER(dev_priv, 9) &&
 					   !IS_GEMINILAKE(dev_priv))) {
 		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
 		u32 chicken = intel_de_read(dev_priv, reg);
@@ -930,7 +930,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	       EDP_PSR_DEBUG_MASK_LPSP |
 	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
 
-	if (INTEL_GEN(dev_priv) < 11)
+	if (DISPLAY_VER(dev_priv) < 11)
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
 	intel_de_write(dev_priv, EDP_PSR_DEBUG(intel_dp->psr.transcoder),
@@ -987,7 +987,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	 * first time that PSR HW tries to activate so lets keep PSR disabled
 	 * to avoid any rendering problems.
 	 */
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = intel_de_read(dev_priv,
 				    TRANS_PSR_IIR(intel_dp->psr.transcoder));
 		val &= EDP_PSR_ERROR(0);
@@ -1169,7 +1169,7 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 		 * and a better fix is found.
 		 */
 		intel_psr_exit(intel_dp);
-	else if (INTEL_GEN(dev_priv) >= 9)
+	else if (DISPLAY_VER(dev_priv) >= 9)
 		/*
 		 * Display WA #0884: skl+
 		 * This documented WA for bxt can be safely applied
@@ -1451,7 +1451,7 @@ void intel_psr_update(struct intel_dp *intel_dp,
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
-		else if (INTEL_GEN(dev_priv) < 9 && psr->enabled) {
+		else if (DISPLAY_VER(dev_priv) < 9 && psr->enabled) {
 			/*
 			 * Activate PSR again after a force exit when enabling
 			 * CRC in older gens
@@ -1855,7 +1855,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	 * So lets keep it hardcoded to PORT_A for BDW, GEN9 and GEN11.
 	 * But GEN12 supports a instance of PSR registers per transcoder.
 	 */
-	if (INTEL_GEN(dev_priv) < 12 && dig_port->base.port != PORT_A) {
+	if (DISPLAY_VER(dev_priv) < 12 && dig_port->base.port != PORT_A) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR condition failed: Port not supported\n");
 		return;
@@ -1872,14 +1872,14 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		dev_priv->hsw_psr_mmio_adjust = _SRD_CTL_EDP - _HSW_EDP_PSR_BASE;
 
 	if (dev_priv->params.enable_psr == -1)
-		if (INTEL_GEN(dev_priv) < 9 || !dev_priv->vbt.psr.enable)
+		if (DISPLAY_VER(dev_priv) < 9 || !dev_priv->vbt.psr.enable)
 			dev_priv->params.enable_psr = 0;
 
 	/* Set link_standby x link_off defaults */
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		/* HSW and BDW require workarounds that we don't implement. */
 		intel_dp->psr.link_standby = false;
-	else if (INTEL_GEN(dev_priv) < 12)
+	else if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
 		intel_dp->psr.link_standby = dev_priv->vbt.psr.full_link;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 3fac60899d8e..f770d6bcd2c9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1540,11 +1540,11 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 		return;
 
 	/* Set the SDVO control regs. */
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		/* The real mode polarity is set by the SDVO commands, using
 		 * struct intel_sdvo_dtd. */
 		sdvox = SDVO_VSYNC_ACTIVE_HIGH | SDVO_HSYNC_ACTIVE_HIGH;
-		if (INTEL_GEN(dev_priv) < 5)
+		if (DISPLAY_VER(dev_priv) < 5)
 			sdvox |= SDVO_BORDER_ENABLE;
 	} else {
 		sdvox = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
@@ -1560,7 +1560,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	else
 		sdvox |= SDVO_PIPE_SEL(crtc->pipe);
 
-	if (INTEL_GEN(dev_priv) >= 4) {
+	if (DISPLAY_VER(dev_priv) >= 4) {
 		/* done in crtc_mode_set as the dpll_md reg must be written early */
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
 		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
@@ -1571,7 +1571,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	}
 
 	if (input_dtd.part2.sdvo_flags & SDVO_NEED_TO_STALL &&
-	    INTEL_GEN(dev_priv) < 5)
+	    DISPLAY_VER(dev_priv) < 5)
 		sdvox |= SDVO_STALL_SELECT;
 	intel_sdvo_write_sdvox(intel_sdvo, sdvox);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index fb506409a63b..d55a13312885 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1392,7 +1392,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 	int ret;
 
 	if (g4x_fb_scalable(plane_state->hw.fb)) {
-		if (INTEL_GEN(dev_priv) < 7) {
+		if (DISPLAY_VER(dev_priv) < 7) {
 			min_scale = 1;
 			max_scale = 16 << 16;
 		} else if (IS_IVYBRIDGE(dev_priv)) {
@@ -1421,7 +1421,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	if (INTEL_GEN(dev_priv) >= 7)
+	if (DISPLAY_VER(dev_priv) >= 7)
 		plane_state->ctl = ivb_sprite_ctl(crtc_state, plane_state);
 	else
 		plane_state->ctl = g4x_sprite_ctl(crtc_state, plane_state);
@@ -1482,7 +1482,7 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 
 static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_priv)
 {
-	return INTEL_GEN(dev_priv) >= 9;
+	return DISPLAY_VER(dev_priv) >= 9;
 }
 
 static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
@@ -1506,7 +1506,7 @@ static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
 	 * On SKL+ we want dst key enabled on
 	 * the primary and not on the sprite.
 	 */
-	if (INTEL_GEN(dev_priv) >= 9 && plane->id != PLANE_PRIMARY &&
+	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_PRIMARY &&
 	    set->flags & I915_SET_COLORKEY_DESTINATION)
 		key->flags = 0;
 }
@@ -1545,7 +1545,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 	 * Also multiple planes can't do destination keying on the same
 	 * pipe simultaneously.
 	 */
-	if (INTEL_GEN(dev_priv) >= 9 &&
+	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    to_intel_plane(plane)->id >= PLANE_SPRITE1 &&
 	    set->flags & I915_SET_COLORKEY_DESTINATION)
 		return -EINVAL;
@@ -1810,7 +1810,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		modifiers = i9xx_plane_format_modifiers;
 
 		plane_funcs = &vlv_sprite_funcs;
-	} else if (INTEL_GEN(dev_priv) >= 7) {
+	} else if (DISPLAY_VER(dev_priv) >= 7) {
 		plane->update_plane = ivb_update_plane;
 		plane->disable_plane = ivb_disable_plane;
 		plane->get_hw_state = ivb_plane_get_hw_state;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 2cefc13535a0..71b8edafb1c3 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -28,7 +28,7 @@ tc_cold_get_power_domain(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (INTEL_GEN(i915) == 11)
+	if (IS_DISPLAY_VER(i915, 11))
 		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
 	else
 		return POWER_DOMAIN_TC_COLD_OFF;
@@ -40,7 +40,7 @@ tc_cold_block(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum intel_display_power_domain domain;
 
-	if (INTEL_GEN(i915) == 11 && !dig_port->tc_legacy_port)
+	if (IS_DISPLAY_VER(i915, 11) && !dig_port->tc_legacy_port)
 		return 0;
 
 	domain = tc_cold_get_power_domain(dig_port);
@@ -71,7 +71,7 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	bool enabled;
 
-	if (INTEL_GEN(i915) == 11 && !dig_port->tc_legacy_port)
+	if (IS_DISPLAY_VER(i915, 11) && !dig_port->tc_legacy_port)
 		return;
 
 	enabled = intel_display_power_is_enabled(i915,
@@ -455,7 +455,7 @@ static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
 	enum tc_port_mode old_tc_mode = dig_port->tc_mode;
 
 	intel_display_power_flush_work(i915);
-	if (INTEL_GEN(i915) != 11 || !dig_port->tc_legacy_port) {
+	if (DISPLAY_VER(i915) != 11 || !dig_port->tc_legacy_port) {
 		enum intel_display_power_domain aux_domain;
 		bool aux_powered;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 7a7b99b015a5..e558f121ec4e 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1165,7 +1165,7 @@ intel_tv_get_config(struct intel_encoder *encoder,
 static bool intel_tv_source_too_wide(struct drm_i915_private *dev_priv,
 				     int hdisplay)
 {
-	return IS_GEN(dev_priv, 3) && hdisplay > 1024;
+	return IS_DISPLAY_VER(dev_priv, 3) && hdisplay > 1024;
 }
 
 static bool intel_tv_vert_scaling(const struct drm_display_mode *tv_mode,
@@ -1519,7 +1519,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 
 	set_color_conversion(dev_priv, color_conversion);
 
-	if (INTEL_GEN(dev_priv) >= 4)
+	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00404000);
 	else
 		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00606000);
@@ -1789,7 +1789,7 @@ intel_tv_get_modes(struct drm_connector *connector)
 			continue;
 
 		/* no vertical scaling with wide sources on gen3 */
-		if (IS_GEN(dev_priv, 3) && input->w > 1024 &&
+		if (IS_DISPLAY_VER(dev_priv, 3) && input->w > 1024 &&
 		    input->h > intel_tv_mode_vdisplay(tv_mode))
 			continue;
 
@@ -1978,7 +1978,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	/* Create TV properties then attach current values */
 	for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
 		/* 1080p50/1080p60 not supported on gen3 */
-		if (IS_GEN(dev_priv, 3) &&
+		if (IS_DISPLAY_VER(dev_priv, 3) &&
 		    tv_modes[i].oversample == 1)
 			break;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index f58cc5700784..1ccef159a9a0 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -343,10 +343,10 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 		return false;
 
 	/* On TGL, DSC is supported on all Pipes */
-	if (INTEL_GEN(i915) >= 12)
+	if (DISPLAY_VER(i915) >= 12)
 		return true;
 
-	if (INTEL_GEN(i915) >= 10 &&
+	if (DISPLAY_VER(i915) >= 10 &&
 	    (pipe != PIPE_A ||
 	     (cpu_transcoder == TRANSCODER_EDP ||
 	      cpu_transcoder == TRANSCODER_DSI_0 ||
@@ -362,7 +362,7 @@ static bool is_pipe_dsc(const struct intel_crtc_state *crtc_state)
 	const struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (INTEL_GEN(i915) >= 12)
+	if (DISPLAY_VER(i915) >= 12)
 		return true;
 
 	if (cpu_transcoder == TRANSCODER_EDP ||
@@ -479,7 +479,7 @@ intel_dsc_power_domain(const struct intel_crtc_state *crtc_state)
 	 * the pipe in use. Hence another reference on the pipe power domain
 	 * will suffice. (Except no VDSC/joining on ICL pipe A.)
 	 */
-	if (INTEL_GEN(i915) >= 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
+	if (DISPLAY_VER(i915) >= 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 	else if (is_pipe_dsc(crtc_state))
 		return POWER_DOMAIN_PIPE(pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 5f8e4f53649d..f002b82ba9c0 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -16,7 +16,7 @@ static i915_reg_t intel_vga_cntrl_reg(struct drm_i915_private *i915)
 {
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		return VLV_VGACNTRL;
-	else if (INTEL_GEN(i915) >= 5)
+	else if (DISPLAY_VER(i915) >= 5)
 		return CPU_VGACNTRL;
 	else
 		return VGACNTRL;
@@ -96,7 +96,7 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
 static int
 intel_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 {
-	unsigned int reg = INTEL_GEN(i915) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
+	unsigned int reg = DISPLAY_VER(i915) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
 	if (pci_read_config_word(i915->bridge_dev, reg, &gmch_ctrl)) {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index b37a87bb190f..17a98cb627df 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -115,7 +115,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	 * Once NV12 is enabled, handle it here while allocating scaler
 	 * for NV12.
 	 */
-	if (INTEL_GEN(dev_priv) >= 9 && crtc_state->hw.enable &&
+	if (DISPLAY_VER(dev_priv) >= 9 && crtc_state->hw.enable &&
 	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Pipe/Plane scaling not supported with IF-ID mode\n");
@@ -157,10 +157,10 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	/* range checks */
 	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
 	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
-	    (INTEL_GEN(dev_priv) >= 11 &&
+	    (DISPLAY_VER(dev_priv) >= 11 &&
 	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
 	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
-	    (INTEL_GEN(dev_priv) < 11 &&
+	    (DISPLAY_VER(dev_priv) < 11 &&
 	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
 	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
 		drm_dbg_kms(&dev_priv->drm,
@@ -280,7 +280,7 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 	case DRM_FORMAT_ABGR16161616F:
 	case DRM_FORMAT_XRGB16161616F:
 	case DRM_FORMAT_ARGB16161616F:
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (DISPLAY_VER(dev_priv) >= 11)
 			break;
 		fallthrough;
 	default:
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1f335cb09149..89b2475a3d60 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -275,13 +275,13 @@ static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
 bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 			 enum plane_id plane_id)
 {
-	return INTEL_GEN(dev_priv) >= 11 &&
+	return DISPLAY_VER(dev_priv) >= 11 &&
 		icl_nv12_y_plane_mask(dev_priv) & BIT(plane_id);
 }
 
 bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id)
 {
-	return INTEL_GEN(dev_priv) >= 11 &&
+	return DISPLAY_VER(dev_priv) >= 11 &&
 		icl_hdr_plane_mask() & BIT(plane_id);
 }
 
@@ -294,7 +294,7 @@ skl_plane_ratio(const struct intel_crtc_state *crtc_state,
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	if (fb->format->cpp[0] == 8) {
-		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 			*num = 10;
 			*den = 8;
 		} else {
@@ -317,7 +317,7 @@ static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	skl_plane_ratio(crtc_state, plane_state, &num, &den);
 
 	/* two pixels per clock on glk+ */
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		den *= 2;
 
 	return DIV_ROUND_UP(pixel_rate * num, den);
@@ -810,7 +810,7 @@ static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 plane_ctl = 0;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		return plane_ctl;
 
 	if (crtc_state->gamma_enable)
@@ -834,7 +834,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 
 	plane_ctl = PLANE_CTL_ENABLE;
 
-	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
 		plane_ctl |= skl_plane_ctl_alpha(plane_state);
 		plane_ctl |= PLANE_CTL_PLANE_GAMMA_DISABLE;
 
@@ -849,7 +849,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	plane_ctl |= skl_plane_ctl_tiling(fb->modifier);
 	plane_ctl |= skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);
 
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		plane_ctl |= cnl_plane_ctl_flip(rotation &
 						DRM_MODE_REFLECT_MASK);
 
@@ -866,7 +866,7 @@ static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 plane_color_ctl = 0;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		return plane_color_ctl;
 
 	if (crtc_state->gamma_enable)
@@ -941,7 +941,7 @@ skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 
 	if (is_ccs_modifier(fb->modifier))
 		return main_to_ccs_plane(fb, main_plane);
-	else if (INTEL_GEN(i915) < 11 &&
+	else if (DISPLAY_VER(i915) < 11 &&
 		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 1;
 	else
@@ -976,7 +976,7 @@ skl_program_plane(struct intel_plane *plane,
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
@@ -999,7 +999,7 @@ skl_program_plane(struct intel_plane *plane,
 	if (aux_plane) {
 		aux_dist = plane_state->color_plane[aux_plane].offset - surf_addr;
 
-		if (INTEL_GEN(dev_priv) < 12)
+		if (DISPLAY_VER(dev_priv) < 12)
 			aux_dist |= skl_plane_stride(plane_state, aux_plane);
 	}
 
@@ -1017,7 +1017,7 @@ skl_program_plane(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
 				  plane_state->cus_ctl);
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
 				  plane_color_ctl);
 
@@ -1038,7 +1038,7 @@ skl_program_plane(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
 			  (y << 16) | x);
 
-	if (INTEL_GEN(dev_priv) < 11)
+	if (DISPLAY_VER(dev_priv) < 11)
 		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
 				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);
 
@@ -1154,7 +1154,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		 */
 		switch (fb->format->format) {
 		case DRM_FORMAT_RGB565:
-			if (INTEL_GEN(dev_priv) >= 11)
+			if (DISPLAY_VER(dev_priv) >= 11)
 				break;
 			fallthrough;
 		case DRM_FORMAT_C8:
@@ -1262,7 +1262,7 @@ static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
 	 * the best case.
 	 * FIXME need to properly check this later.
 	 */
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) ||
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) ||
 	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 0x30000 - 1;
 	else
@@ -1631,7 +1631,7 @@ static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
-		return INTEL_GEN(to_i915(fb->dev)) >= 11;
+		return DISPLAY_VER(to_i915(fb->dev)) >= 11;
 	default:
 		return true;
 	}
@@ -1687,7 +1687,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 
 	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
 							     plane_state);
 
@@ -1719,7 +1719,7 @@ static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
 	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
 		return false;
 
-	if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv) && pipe == PIPE_C)
+	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEMINILAKE(dev_priv) && pipe == PIPE_C)
 		return false;
 
 	if (plane_id != PLANE_PRIMARY && plane_id != PLANE_SPRITE0)
@@ -1776,7 +1776,7 @@ static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
 	if (plane_id == PLANE_CURSOR)
 		return false;
 
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		return true;
 
 	if (IS_GEMINILAKE(dev_priv))
@@ -2009,11 +2009,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
 		plane->max_width = icl_plane_max_width;
 		plane->max_height = icl_plane_max_height;
-	} else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 		plane->max_width = glk_plane_max_width;
 		plane->max_height = skl_plane_max_height;
 	} else {
@@ -2029,16 +2029,17 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->min_cdclk = skl_plane_min_cdclk;
 
 	if (plane_id == PLANE_PRIMARY) {
-		plane->need_async_flip_disable_wa = IS_GEN_RANGE(dev_priv, 9, 10);
+		plane->need_async_flip_disable_wa = IS_DISPLAY_RANGE(dev_priv,
+								     9, 10);
 		plane->async_flip = skl_plane_async_flip;
 		plane->enable_flip_done = skl_plane_enable_flip_done;
 		plane->disable_flip_done = skl_plane_disable_flip_done;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		formats = icl_get_plane_formats(dev_priv, pipe,
 						plane_id, &num_formats);
-	else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		formats = glk_get_plane_formats(dev_priv, pipe,
 						plane_id, &num_formats);
 	else
@@ -2046,7 +2047,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 						plane_id, &num_formats);
 
 	plane->has_ccs = skl_plane_has_ccs(dev_priv, pipe, plane_id);
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		modifiers = gen12_get_plane_modifiers(dev_priv, plane_id);
 		plane_funcs = &gen12_plane_funcs;
 	} else {
@@ -2075,7 +2076,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
 		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
 
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		supported_rotations |= DRM_MODE_REFLECT_X;
 
 	drm_plane_create_rotation_property(&plane->base,
@@ -2084,7 +2085,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
 
 	drm_plane_create_color_properties(&plane->base,
@@ -2102,10 +2103,10 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		drm_plane_enable_fb_damage_clips(&plane->base);
 
-	if (INTEL_GEN(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 10)
 		drm_plane_create_scaling_filter_property(&plane->base,
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
@@ -2159,12 +2160,12 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	val = intel_de_read(dev_priv, PLANE_CTL(pipe, plane_id));
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		pixel_format = val & ICL_PLANE_CTL_FORMAT_MASK;
 	else
 		pixel_format = val & PLANE_CTL_FORMAT_MASK;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 		alpha = intel_de_read(dev_priv,
 				      PLANE_COLOR_CTL(pipe, plane_id));
 		alpha &= PLANE_COLOR_ALPHA_MASK;
@@ -2188,7 +2189,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
 		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			fb->modifier = INTEL_GEN(dev_priv) >= 12 ?
+			fb->modifier = DISPLAY_VER(dev_priv) >= 12 ?
 				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
 				I915_FORMAT_MOD_Y_TILED_CCS;
 		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
@@ -2226,7 +2227,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		break;
 	}
 
-	if (INTEL_GEN(dev_priv) >= 10 &&
+	if (DISPLAY_VER(dev_priv) >= 10 &&
 	    val & PLANE_CTL_FLIP_HORIZONTAL)
 		plane_config->rotation |= DRM_MODE_REFLECT_X;
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
