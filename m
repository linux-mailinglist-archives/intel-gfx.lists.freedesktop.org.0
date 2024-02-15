Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8848F8569C2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3B910E9DF;
	Thu, 15 Feb 2024 16:41:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VBytKWEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C55C10E9DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015286; x=1739551286;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2I77Fv+90CDkaZ/7+jE0Qqu5CTwVTkuRPDHhfgLnORs=;
 b=VBytKWEEA/0lIB/CsSptvGvJnwgOY/Gl7FzMqbi7CF3hrlAbocYR8JHx
 dZLDEVh8A2S/gyTGoTH14Rzq4lejmjg5MO3ObMERJESh/D9PcWWwX+GRM
 pxLSgQVhyAgkkTC2fkP37pkINzW1Vt08099hpj0WbcnH8IHHt20Ft1VLK
 lNnzzTuQT3cqLb3mQJWXF0Uz7r0Fn396V+KB+QnJA1Ys05XVer36yEMUZ
 kbxFXygoZSCXARxV2x9i7lloJCerOI3Ctd17xhw5/OPnX//tU6Dku1R0U
 GYJLZDGskKymIDz+WIz+14gLYPDZ8oQsE5RKiJgnVcAKrnB5nbeO3FULt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19630039"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19630039"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434851"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915: Convert the remaining state dump to
 drm_printer
Date: Thu, 15 Feb 2024 18:40:51 +0200
Message-ID: <20240215164055.30585-9-ville.syrjala@linux.intel.com>
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

Plumb the drm_printer to all the little helpers called
by intel_crtc_state_dump() and use it there as well.

The exceptions are the ELD and infoframe stuff as they
call helpers outside of the drm and thus can't use
drm_printer.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  | 137 ++++++++----------
 1 file changed, 60 insertions(+), 77 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index b34fb0e6e46d..b5b9b99213cf 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -12,33 +12,31 @@
 #include "intel_hdmi.h"
 #include "intel_vrr.h"
 
-static void intel_dump_crtc_timings(struct drm_i915_private *i915,
+static void intel_dump_crtc_timings(struct drm_printer *p,
 				    const struct drm_display_mode *mode)
 {
-	drm_dbg_kms(&i915->drm, "crtc timings: clock=%d, "
-		    "hd=%d hb=%d-%d hs=%d-%d ht=%d, "
-		    "vd=%d vb=%d-%d vs=%d-%d vt=%d, "
-		    "flags=0x%x\n",
-		    mode->crtc_clock,
-		    mode->crtc_hdisplay, mode->crtc_hblank_start, mode->crtc_hblank_end,
-		    mode->crtc_hsync_start, mode->crtc_hsync_end, mode->crtc_htotal,
-		    mode->crtc_vdisplay, mode->crtc_vblank_start, mode->crtc_vblank_end,
-		    mode->crtc_vsync_start, mode->crtc_vsync_end, mode->crtc_vtotal,
-		    mode->flags);
+	drm_printf(p, "crtc timings: clock=%d, "
+		   "hd=%d hb=%d-%d hs=%d-%d ht=%d, "
+		   "vd=%d vb=%d-%d vs=%d-%d vt=%d, "
+		   "flags=0x%x\n",
+		   mode->crtc_clock,
+		   mode->crtc_hdisplay, mode->crtc_hblank_start, mode->crtc_hblank_end,
+		   mode->crtc_hsync_start, mode->crtc_hsync_end, mode->crtc_htotal,
+		   mode->crtc_vdisplay, mode->crtc_vblank_start, mode->crtc_vblank_end,
+		   mode->crtc_vsync_start, mode->crtc_vsync_end, mode->crtc_vtotal,
+		   mode->flags);
 }
 
 static void
-intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
+intel_dump_m_n_config(struct drm_printer *p,
+		      const struct intel_crtc_state *pipe_config,
 		      const char *id, unsigned int lane_count,
 		      const struct intel_link_m_n *m_n)
 {
-	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
-
-	drm_dbg_kms(&i915->drm,
-		    "%s: lanes: %i; data_m: %u, data_n: %u, link_m: %u, link_n: %u, tu: %u\n",
-		    id, lane_count,
-		    m_n->data_m, m_n->data_n,
-		    m_n->link_m, m_n->link_n, m_n->tu);
+	drm_printf(p, "%s: lanes: %i; data_m: %u, data_n: %u, link_m: %u, link_n: %u, tu: %u\n",
+		   id, lane_count,
+		   m_n->data_m, m_n->data_n,
+		   m_n->link_m, m_n->link_n, m_n->tu);
 }
 
 static void
@@ -52,17 +50,7 @@ intel_dump_infoframe(struct drm_i915_private *i915,
 }
 
 static void
-intel_dump_dp_vsc_sdp(struct drm_i915_private *i915,
-		      const struct drm_dp_vsc_sdp *vsc)
-{
-	struct drm_printer p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
-
-	drm_dp_vsc_sdp_log(&p, vsc);
-}
-
-static void
-intel_dump_buffer(struct drm_i915_private *i915,
-		  const char *prefix, const u8 *buf, size_t len)
+intel_dump_buffer(const char *prefix, const u8 *buf, size_t len)
 {
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
@@ -130,71 +118,66 @@ const char *intel_output_format_name(enum intel_output_format format)
 	return output_format_str[format];
 }
 
-static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
+static void intel_dump_plane_state(struct drm_printer *p,
+				   const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	if (!fb) {
-		drm_dbg_kms(&i915->drm,
-			    "[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
-			    plane->base.base.id, plane->base.name,
-			    str_yes_no(plane_state->uapi.visible));
+		drm_printf(p, "[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
+			   plane->base.base.id, plane->base.name,
+			   str_yes_no(plane_state->uapi.visible));
 		return;
 	}
 
-	drm_dbg_kms(&i915->drm,
-		    "[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %p4cc modifier = 0x%llx, visible: %s\n",
-		    plane->base.base.id, plane->base.name,
-		    fb->base.id, fb->width, fb->height, &fb->format->format,
-		    fb->modifier, str_yes_no(plane_state->uapi.visible));
-	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d, scaling_filter: %d\n",
-		    plane_state->hw.rotation, plane_state->scaler_id, plane_state->hw.scaling_filter);
+	drm_printf(p, "[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %p4cc modifier = 0x%llx, visible: %s\n",
+		   plane->base.base.id, plane->base.name,
+		   fb->base.id, fb->width, fb->height, &fb->format->format,
+		   fb->modifier, str_yes_no(plane_state->uapi.visible));
+	drm_printf(p, "\trotation: 0x%x, scaler: %d, scaling_filter: %d\n",
+		   plane_state->hw.rotation, plane_state->scaler_id, plane_state->hw.scaling_filter);
 	if (plane_state->uapi.visible)
-		drm_dbg_kms(&i915->drm,
-			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
-			    DRM_RECT_FP_ARG(&plane_state->uapi.src),
-			    DRM_RECT_ARG(&plane_state->uapi.dst));
+		drm_printf(p, "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
+			   DRM_RECT_FP_ARG(&plane_state->uapi.src),
+			   DRM_RECT_ARG(&plane_state->uapi.dst));
 }
 
 static void
-ilk_dump_csc(struct drm_i915_private *i915, const char *name,
+ilk_dump_csc(struct drm_i915_private *i915,
+	     struct drm_printer *p,
+	     const char *name,
 	     const struct intel_csc_matrix *csc)
 {
 	int i;
 
-	drm_dbg_kms(&i915->drm,
-		    "%s: pre offsets: 0x%04x 0x%04x 0x%04x\n", name,
-		    csc->preoff[0], csc->preoff[1], csc->preoff[2]);
+	drm_printf(p, "%s: pre offsets: 0x%04x 0x%04x 0x%04x\n", name,
+		   csc->preoff[0], csc->preoff[1], csc->preoff[2]);
 
 	for (i = 0; i < 3; i++)
-		drm_dbg_kms(&i915->drm,
-			    "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
-			    csc->coeff[3 * i + 0],
-			    csc->coeff[3 * i + 1],
-			    csc->coeff[3 * i + 2]);
+		drm_printf(p, "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
+			   csc->coeff[3 * i + 0],
+			   csc->coeff[3 * i + 1],
+			   csc->coeff[3 * i + 2]);
 
 	if (DISPLAY_VER(i915) < 7)
 		return;
 
-	drm_dbg_kms(&i915->drm,
-		    "%s: post offsets: 0x%04x 0x%04x 0x%04x\n", name,
-		    csc->postoff[0], csc->postoff[1], csc->postoff[2]);
+	drm_printf(p, "%s: post offsets: 0x%04x 0x%04x 0x%04x\n", name,
+		   csc->postoff[0], csc->postoff[1], csc->postoff[2]);
 }
 
 static void
-vlv_dump_csc(struct drm_i915_private *i915, const char *name,
+vlv_dump_csc(struct drm_printer *p, const char *name,
 	     const struct intel_csc_matrix *csc)
 {
 	int i;
 
 	for (i = 0; i < 3; i++)
-		drm_dbg_kms(&i915->drm,
-			    "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
-			    csc->coeff[3 * i + 0],
-			    csc->coeff[3 * i + 1],
-			    csc->coeff[3 * i + 2]);
+		drm_printf(p, "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
+			   csc->coeff[3 * i + 0],
+			   csc->coeff[3 * i + 1],
+			   csc->coeff[3 * i + 2]);
 }
 
 void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
@@ -247,15 +230,15 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->splitter.pixel_overlap);
 
 	if (pipe_config->has_pch_encoder)
-		intel_dump_m_n_config(pipe_config, "fdi",
+		intel_dump_m_n_config(&p, pipe_config, "fdi",
 				      pipe_config->fdi_lanes,
 				      &pipe_config->fdi_m_n);
 
 	if (intel_crtc_has_dp_encoder(pipe_config)) {
-		intel_dump_m_n_config(pipe_config, "dp m_n",
+		intel_dump_m_n_config(&p, pipe_config, "dp m_n",
 				      pipe_config->lane_count,
 				      &pipe_config->dp_m_n);
-		intel_dump_m_n_config(pipe_config, "dp m2_n2",
+		intel_dump_m_n_config(&p, pipe_config, "dp m2_n2",
 				      pipe_config->lane_count,
 				      &pipe_config->dp_m2_n2);
 		drm_printf(&p, "fec: %s, enhanced framing: %s\n",
@@ -299,10 +282,10 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
-		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
+		drm_dp_vsc_sdp_log(&p, &pipe_config->infoframes.vsc);
 
 	if (pipe_config->has_audio)
-		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
+		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
 	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
@@ -317,10 +300,10 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   DRM_MODE_ARG(&pipe_config->hw.mode));
 	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
-	intel_dump_crtc_timings(i915, &pipe_config->hw.adjusted_mode);
+	intel_dump_crtc_timings(&p, &pipe_config->hw.adjusted_mode);
 	drm_printf(&p, "pipe mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
-	intel_dump_crtc_timings(i915, &pipe_config->hw.pipe_mode);
+	intel_dump_crtc_timings(&p, &pipe_config->hw.pipe_mode);
 	drm_printf(&p, "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
 		   pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
 		   pipe_config->pixel_rate);
@@ -370,14 +353,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   drm_color_lut_size(pipe_config->post_csc_lut) : 0);
 
 	if (DISPLAY_VER(i915) >= 11)
-		ilk_dump_csc(i915, "output csc", &pipe_config->output_csc);
+		ilk_dump_csc(i915, &p, "output csc", &pipe_config->output_csc);
 
 	if (!HAS_GMCH(i915))
-		ilk_dump_csc(i915, "pipe csc", &pipe_config->csc);
+		ilk_dump_csc(i915, &p, "pipe csc", &pipe_config->csc);
 	else if (IS_CHERRYVIEW(i915))
-		vlv_dump_csc(i915, "cgm csc", &pipe_config->csc);
+		vlv_dump_csc(&p, "cgm csc", &pipe_config->csc);
 	else if (IS_VALLEYVIEW(i915))
-		vlv_dump_csc(i915, "wgc csc", &pipe_config->csc);
+		vlv_dump_csc(&p, "wgc csc", &pipe_config->csc);
 
 dump_planes:
 	if (!state)
@@ -385,6 +368,6 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		if (plane->pipe == crtc->pipe)
-			intel_dump_plane_state(plane_state);
+			intel_dump_plane_state(&p, plane_state);
 	}
 }
-- 
2.43.0

