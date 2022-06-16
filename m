Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 894C454DE6C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F88113DD4;
	Thu, 16 Jun 2022 09:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9126113DD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372940; x=1686908940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+vYxQimFM/fBWgCsebzLtkDDo7GVdbZg6R+3tX4dpMs=;
 b=f17VVWCCoGk1Ptywwf/IsTaKC73G9XTcbui9MVhhC5cC6kZbAscUnfsg
 583Fuwo3uBzp92Oo0hX/+oczvds9VbYpoS0ahxBPvjYev24IUIClf4pXs
 EJJtjB7Nb/h/DY+Ty1CAaeR+FvhipQV83ZqOYEALylUz2IAb0jUSETv++
 W6x+mVBtMk5u/nzjcaVd9j+tEO5jWx4xiW0xaD8G8pU7qF4o7du0hiDbR
 rJn0GJu7I0SlpdOAsqTsjgx5tPwekm1oTZJu8sVC+v1yPAylEk6e5sGgJ
 mgUFlPFLXh+PmaS4QOTYc7xcce/FoHNb8rIcDMUxcnLAekJAY+dhJFfMN A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="278008869"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="278008869"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:49:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="912090096"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:18 +0300
Message-Id: <3c1dafd45757d2de2e3f8404674168f2b1241170.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/11] drm/i915/display: rename dev_priv ->
 i915 in crtc state dump
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename dev_priv to i915 in crtc state dumping code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  | 80 +++++++++----------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 35c627721199..4ca6e9493ff2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -37,23 +37,23 @@ intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
 }
 
 static void
-intel_dump_infoframe(struct drm_i915_private *dev_priv,
+intel_dump_infoframe(struct drm_i915_private *i915,
 		     const union hdmi_infoframe *frame)
 {
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
 
-	hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, frame);
+	hdmi_infoframe_log(KERN_DEBUG, i915->drm.dev, frame);
 }
 
 static void
-intel_dump_dp_vsc_sdp(struct drm_i915_private *dev_priv,
+intel_dump_dp_vsc_sdp(struct drm_i915_private *i915,
 		      const struct drm_dp_vsc_sdp *vsc)
 {
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
 
-	drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, vsc);
+	drm_dp_vsc_sdp_log(KERN_DEBUG, i915->drm.dev, vsc);
 }
 
 #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
@@ -148,13 +148,13 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   const char *context)
 {
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
 	char buf[64];
 	int i;
 
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
 		    crtc->base.base.id, crtc->base.name,
 		    str_yes_no(pipe_config->hw.enable), context);
 
@@ -162,31 +162,31 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		goto dump_planes;
 
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "active: %s, output_types: %s (0x%x), output format: %s\n",
 		    str_yes_no(pipe_config->hw.active),
 		    buf, pipe_config->output_types,
 		    output_formats(pipe_config->output_format));
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
 		    transcoder_name(pipe_config->cpu_transcoder),
 		    pipe_config->pipe_bpp, pipe_config->dither);
 
-	drm_dbg_kms(&dev_priv->drm, "MST master transcoder: %s\n",
+	drm_dbg_kms(&i915->drm, "MST master transcoder: %s\n",
 		    transcoder_name(pipe_config->mst_master_transcoder));
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
 		    transcoder_name(pipe_config->master_transcoder),
 		    pipe_config->sync_mode_slaves_mask);
 
-	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s, pipes: 0x%x\n",
+	drm_dbg_kms(&i915->drm, "bigjoiner: %s, pipes: 0x%x\n",
 		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
 		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
 		    pipe_config->bigjoiner_pipes);
 
-	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
+	drm_dbg_kms(&i915->drm, "splitter: %s, link count %d, overlap %d\n",
 		    str_enabled_disabled(pipe_config->splitter.enable),
 		    pipe_config->splitter.link_count,
 		    pipe_config->splitter.pixel_overlap);
@@ -205,38 +205,38 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 				      &pipe_config->dp_m2_n2);
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d, MSA timing delay: %d\n",
+	drm_dbg_kms(&i915->drm, "framestart delay: %d, MSA timing delay: %d\n",
 		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
 		    pipe_config->has_audio, pipe_config->has_infoframe,
 		    pipe_config->infoframes.enable);
 
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL))
-		drm_dbg_kms(&dev_priv->drm, "GCP: 0x%x\n",
+		drm_dbg_kms(&i915->drm, "GCP: 0x%x\n",
 			    pipe_config->infoframes.gcp);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.avi);
+		intel_dump_infoframe(i915, &pipe_config->infoframes.avi);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.spd);
+		intel_dump_infoframe(i915, &pipe_config->infoframes.spd);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_VENDOR))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.hdmi);
+		intel_dump_infoframe(i915, &pipe_config->infoframes.hdmi);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.drm);
+		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.drm);
+		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
-		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
+		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
 
-	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		    str_yes_no(pipe_config->vrr.enable),
 		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
@@ -244,60 +244,60 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		    intel_vrr_vmin_vblank_start(pipe_config),
 		    intel_vrr_vmax_vblank_start(pipe_config));
 
-	drm_dbg_kms(&dev_priv->drm, "requested mode: " DRM_MODE_FMT "\n",
+	drm_dbg_kms(&i915->drm, "requested mode: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(&pipe_config->hw.mode));
-	drm_dbg_kms(&dev_priv->drm, "adjusted mode: " DRM_MODE_FMT "\n",
+	drm_dbg_kms(&i915->drm, "adjusted mode: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
-	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
-	drm_dbg_kms(&dev_priv->drm, "pipe mode: " DRM_MODE_FMT "\n",
+	intel_dump_crtc_timings(i915, &pipe_config->hw.adjusted_mode);
+	drm_dbg_kms(&i915->drm, "pipe mode: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
-	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
-	drm_dbg_kms(&dev_priv->drm,
+	intel_dump_crtc_timings(i915, &pipe_config->hw.pipe_mode);
+	drm_dbg_kms(&i915->drm,
 		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
 		    pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
 		    pipe_config->pixel_rate);
 
-	drm_dbg_kms(&dev_priv->drm, "linetime: %d, ips linetime: %d\n",
+	drm_dbg_kms(&i915->drm, "linetime: %d, ips linetime: %d\n",
 		    pipe_config->linetime, pipe_config->ips_linetime);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		drm_dbg_kms(&dev_priv->drm,
+	if (DISPLAY_VER(i915) >= 9)
+		drm_dbg_kms(&i915->drm,
 			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
 			    crtc->num_scalers,
 			    pipe_config->scaler_state.scaler_users,
 			    pipe_config->scaler_state.scaler_id);
 
-	if (HAS_GMCH(dev_priv))
-		drm_dbg_kms(&dev_priv->drm,
+	if (HAS_GMCH(i915))
+		drm_dbg_kms(&i915->drm,
 			    "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
 			    pipe_config->gmch_pfit.control,
 			    pipe_config->gmch_pfit.pgm_ratios,
 			    pipe_config->gmch_pfit.lvds_border_bits);
 	else
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
 			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
 			    str_enabled_disabled(pipe_config->pch_pfit.enabled),
 			    str_yes_no(pipe_config->pch_pfit.force_thru));
 
-	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i, drrs: %i\n",
+	drm_dbg_kms(&i915->drm, "ips: %i, double wide: %i, drrs: %i\n",
 		    pipe_config->ips_enabled, pipe_config->double_wide,
 		    pipe_config->has_drrs);
 
-	intel_dpll_dump_hw_state(dev_priv, &pipe_config->dpll_hw_state);
+	intel_dpll_dump_hw_state(i915, &pipe_config->dpll_hw_state);
 
-	if (IS_CHERRYVIEW(dev_priv))
-		drm_dbg_kms(&dev_priv->drm,
+	if (IS_CHERRYVIEW(i915))
+		drm_dbg_kms(&i915->drm,
 			    "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
 			    pipe_config->cgm_mode, pipe_config->gamma_mode,
 			    pipe_config->gamma_enable, pipe_config->csc_enable);
 	else
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
 			    pipe_config->csc_mode, pipe_config->gamma_mode,
 			    pipe_config->gamma_enable, pipe_config->csc_enable);
 
-	drm_dbg_kms(&dev_priv->drm, "degamma lut: %d entries, gamma lut: %d entries\n",
+	drm_dbg_kms(&i915->drm, "degamma lut: %d entries, gamma lut: %d entries\n",
 		    pipe_config->hw.degamma_lut ?
 		    drm_color_lut_size(pipe_config->hw.degamma_lut) : 0,
 		    pipe_config->hw.gamma_lut ?
-- 
2.30.2

