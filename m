Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F118569C0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC7110E9DD;
	Thu, 15 Feb 2024 16:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n13xa6jl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8626510E9DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015284; x=1739551284;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PyAWj+QyRmNCX/z/+bKJ7QCnnT2J3BSCYVSkOlKiD5A=;
 b=n13xa6jlKtBoD0PElPvejicuZjqkNdC56/4IhIYAmr9y7eL/AXMHG2eq
 a6tIoPSTGOy7WxKDxWT0TNSOeEaLH5OKl/cs2hm0ASHX/F+tM1Yctx+fQ
 9WgVC4PBoPjsBHt2H6RgGVUm5I5kxcQNApJv4iLZrtBGGloTBnjQ54oM5
 T023qovzlCW9EWjuRI3LH8mxsFQ5g+C7l8bspI+5VNkBVeoeMqCYLq1CF
 bJFQXr6kIV66T1hY80NnBNMQe6SG83KZofvhUPKLSi4zjDNxS5tG2bgsg
 3aVqqtxD0oi5w//V9CU/K5X023wu/0vKpbdpZW9o0nxgoAYhsJRPkMU/R w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19630026"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19630026"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434839"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434839"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915: Use drm_printer more extensively in
 intel_crtc_state_dump()
Date: Thu, 15 Feb 2024 18:40:50 +0200
Message-ID: <20240215164055.30585-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Convert all the direct drm_dbg_kms() stuff in intel_crtc_state_dump()
over to drm_printf() since we now have the drm_printer around.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  | 185 ++++++++----------
 1 file changed, 87 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 59d2b3d39951..b34fb0e6e46d 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -211,43 +211,40 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
-		    crtc->base.base.id, crtc->base.name,
-		    str_yes_no(pipe_config->hw.enable), context);
+	drm_printf(&p, "[CRTC:%d:%s] enable: %s [%s]\n",
+		   crtc->base.base.id, crtc->base.name,
+		   str_yes_no(pipe_config->hw.enable), context);
 
 	if (!pipe_config->hw.enable)
 		goto dump_planes;
 
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
-	drm_dbg_kms(&i915->drm,
-		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
-		    str_yes_no(pipe_config->hw.active),
-		    buf, pipe_config->output_types,
-		    intel_output_format_name(pipe_config->output_format),
-		    intel_output_format_name(pipe_config->sink_format));
+	drm_printf(&p, "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
+		   str_yes_no(pipe_config->hw.active),
+		   buf, pipe_config->output_types,
+		   intel_output_format_name(pipe_config->output_format),
+		   intel_output_format_name(pipe_config->sink_format));
 
-	drm_dbg_kms(&i915->drm,
-		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
-		    transcoder_name(pipe_config->cpu_transcoder),
-		    pipe_config->pipe_bpp, pipe_config->dither);
+	drm_printf(&p, "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
+		   transcoder_name(pipe_config->cpu_transcoder),
+		   pipe_config->pipe_bpp, pipe_config->dither);
 
-	drm_dbg_kms(&i915->drm, "MST master transcoder: %s\n",
-		    transcoder_name(pipe_config->mst_master_transcoder));
+	drm_printf(&p, "MST master transcoder: %s\n",
+		   transcoder_name(pipe_config->mst_master_transcoder));
 
-	drm_dbg_kms(&i915->drm,
-		    "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
-		    transcoder_name(pipe_config->master_transcoder),
-		    pipe_config->sync_mode_slaves_mask);
+	drm_printf(&p, "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
+		   transcoder_name(pipe_config->master_transcoder),
+		   pipe_config->sync_mode_slaves_mask);
 
-	drm_dbg_kms(&i915->drm, "bigjoiner: %s, pipes: 0x%x\n",
-		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
-		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
-		    pipe_config->bigjoiner_pipes);
+	drm_printf(&p, "bigjoiner: %s, pipes: 0x%x\n",
+		   intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
+		   intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
+		   pipe_config->bigjoiner_pipes);
 
-	drm_dbg_kms(&i915->drm, "splitter: %s, link count %d, overlap %d\n",
-		    str_enabled_disabled(pipe_config->splitter.enable),
-		    pipe_config->splitter.link_count,
-		    pipe_config->splitter.pixel_overlap);
+	drm_printf(&p, "splitter: %s, link count %d, overlap %d\n",
+		   str_enabled_disabled(pipe_config->splitter.enable),
+		   pipe_config->splitter.link_count,
+		   pipe_config->splitter.pixel_overlap);
 
 	if (pipe_config->has_pch_encoder)
 		intel_dump_m_n_config(pipe_config, "fdi",
@@ -261,32 +258,30 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_m_n_config(pipe_config, "dp m2_n2",
 				      pipe_config->lane_count,
 				      &pipe_config->dp_m2_n2);
-		drm_dbg_kms(&i915->drm, "fec: %s, enhanced framing: %s\n",
-			    str_enabled_disabled(pipe_config->fec_enable),
-			    str_enabled_disabled(pipe_config->enhanced_framing));
+		drm_printf(&p, "fec: %s, enhanced framing: %s\n",
+			   str_enabled_disabled(pipe_config->fec_enable),
+			   str_enabled_disabled(pipe_config->enhanced_framing));
 
-		drm_dbg_kms(&i915->drm, "sdp split: %s\n",
-			    str_enabled_disabled(pipe_config->sdp_split_enable));
+		drm_printf(&p, "sdp split: %s\n",
+			   str_enabled_disabled(pipe_config->sdp_split_enable));
 
-		drm_dbg_kms(&i915->drm, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
-			    str_enabled_disabled(pipe_config->has_psr),
-			    str_enabled_disabled(pipe_config->has_psr2),
-			    str_enabled_disabled(pipe_config->has_panel_replay),
-			    str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
+		drm_printf(&p, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
+			   str_enabled_disabled(pipe_config->has_psr),
+			   str_enabled_disabled(pipe_config->has_psr2),
+			   str_enabled_disabled(pipe_config->has_panel_replay),
+			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 	}
 
-	drm_dbg_kms(&i915->drm, "framestart delay: %d, MSA timing delay: %d\n",
-		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
+	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
+		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_dbg_kms(&i915->drm,
-		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
-		    pipe_config->has_audio, pipe_config->has_infoframe,
-		    pipe_config->infoframes.enable);
+	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
+		   pipe_config->has_audio, pipe_config->has_infoframe,
+		   pipe_config->infoframes.enable);
 
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL))
-		drm_dbg_kms(&i915->drm, "GCP: 0x%x\n",
-			    pipe_config->infoframes.gcp);
+		drm_printf(&p, "GCP: 0x%x\n", pipe_config->infoframes.gcp);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
 		intel_dump_infoframe(i915, &pipe_config->infoframes.avi);
@@ -310,75 +305,69 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
-		    str_yes_no(pipe_config->vrr.enable),
-		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
-		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
-		    pipe_config->vrr.flipline,
-		    intel_vrr_vmin_vblank_start(pipe_config),
-		    intel_vrr_vmax_vblank_start(pipe_config));
+	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+		   str_yes_no(pipe_config->vrr.enable),
+		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
+		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
+		   pipe_config->vrr.flipline,
+		   intel_vrr_vmin_vblank_start(pipe_config),
+		   intel_vrr_vmax_vblank_start(pipe_config));
 
-	drm_dbg_kms(&i915->drm, "requested mode: " DRM_MODE_FMT "\n",
-		    DRM_MODE_ARG(&pipe_config->hw.mode));
-	drm_dbg_kms(&i915->drm, "adjusted mode: " DRM_MODE_FMT "\n",
-		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
+	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
+		   DRM_MODE_ARG(&pipe_config->hw.mode));
+	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
+		   DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
 	intel_dump_crtc_timings(i915, &pipe_config->hw.adjusted_mode);
-	drm_dbg_kms(&i915->drm, "pipe mode: " DRM_MODE_FMT "\n",
-		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
+	drm_printf(&p, "pipe mode: " DRM_MODE_FMT "\n",
+		   DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
 	intel_dump_crtc_timings(i915, &pipe_config->hw.pipe_mode);
-	drm_dbg_kms(&i915->drm,
-		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
-		    pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
-		    pipe_config->pixel_rate);
+	drm_printf(&p, "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
+		   pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
+		   pipe_config->pixel_rate);
 
-	drm_dbg_kms(&i915->drm, "linetime: %d, ips linetime: %d\n",
-		    pipe_config->linetime, pipe_config->ips_linetime);
+	drm_printf(&p, "linetime: %d, ips linetime: %d\n",
+		   pipe_config->linetime, pipe_config->ips_linetime);
 
 	if (DISPLAY_VER(i915) >= 9)
-		drm_dbg_kms(&i915->drm,
-			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
-			    crtc->num_scalers,
-			    pipe_config->scaler_state.scaler_users,
-			    pipe_config->scaler_state.scaler_id,
-			    pipe_config->hw.scaling_filter);
+		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
+			   crtc->num_scalers,
+			   pipe_config->scaler_state.scaler_users,
+			   pipe_config->scaler_state.scaler_id,
+			   pipe_config->hw.scaling_filter);
 
 	if (HAS_GMCH(i915))
-		drm_dbg_kms(&i915->drm,
-			    "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
-			    pipe_config->gmch_pfit.control,
-			    pipe_config->gmch_pfit.pgm_ratios,
-			    pipe_config->gmch_pfit.lvds_border_bits);
+		drm_printf(&p, "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
+			   pipe_config->gmch_pfit.control,
+			   pipe_config->gmch_pfit.pgm_ratios,
+			   pipe_config->gmch_pfit.lvds_border_bits);
 	else
-		drm_dbg_kms(&i915->drm,
-			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
-			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
-			    str_enabled_disabled(pipe_config->pch_pfit.enabled),
-			    str_yes_no(pipe_config->pch_pfit.force_thru));
+		drm_printf(&p, "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
+			   DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
+			   str_enabled_disabled(pipe_config->pch_pfit.enabled),
+			   str_yes_no(pipe_config->pch_pfit.force_thru));
 
-	drm_dbg_kms(&i915->drm, "ips: %i, double wide: %i, drrs: %i\n",
-		    pipe_config->ips_enabled, pipe_config->double_wide,
-		    pipe_config->has_drrs);
+	drm_printf(&p, "ips: %i, double wide: %i, drrs: %i\n",
+		   pipe_config->ips_enabled, pipe_config->double_wide,
+		   pipe_config->has_drrs);
 
 	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
 
 	if (IS_CHERRYVIEW(i915))
-		drm_dbg_kms(&i915->drm,
-			    "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
-			    pipe_config->cgm_mode, pipe_config->gamma_mode,
-			    pipe_config->gamma_enable, pipe_config->csc_enable);
+		drm_printf(&p, "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
+			   pipe_config->cgm_mode, pipe_config->gamma_mode,
+			   pipe_config->gamma_enable, pipe_config->csc_enable);
 	else
-		drm_dbg_kms(&i915->drm,
-			    "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
-			    pipe_config->csc_mode, pipe_config->gamma_mode,
-			    pipe_config->gamma_enable, pipe_config->csc_enable);
+		drm_printf(&p, "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
+			   pipe_config->csc_mode, pipe_config->gamma_mode,
+			   pipe_config->gamma_enable, pipe_config->csc_enable);
 
-	drm_dbg_kms(&i915->drm, "pre csc lut: %s%d entries, post csc lut: %d entries\n",
-		    pipe_config->pre_csc_lut && pipe_config->pre_csc_lut ==
-		    i915->display.color.glk_linear_degamma_lut ? "(linear) " : "",
-		    pipe_config->pre_csc_lut ?
-		    drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
-		    pipe_config->post_csc_lut ?
-		    drm_color_lut_size(pipe_config->post_csc_lut) : 0);
+	drm_printf(&p, "pre csc lut: %s%d entries, post csc lut: %d entries\n",
+		   pipe_config->pre_csc_lut && pipe_config->pre_csc_lut ==
+		   i915->display.color.glk_linear_degamma_lut ? "(linear) " : "",
+		   pipe_config->pre_csc_lut ?
+		   drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
+		   pipe_config->post_csc_lut ?
+		   drm_color_lut_size(pipe_config->post_csc_lut) : 0);
 
 	if (DISPLAY_VER(i915) >= 11)
 		ilk_dump_csc(i915, "output csc", &pipe_config->output_csc);
-- 
2.43.0

