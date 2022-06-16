Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DFF54DE6A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98F4113DCA;
	Thu, 16 Jun 2022 09:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA5C113DCA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372932; x=1686908932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=air0XLNyAJUT4hJdD8a1fN7O+tLTVYMg8/YDiwrrbrw=;
 b=MrK/3ro6fim1gyLdcH9exgkLuwtsWipx5m+6GEGUoojVY+z4lBVSZHJK
 zrCf3wiBSlOTIEbip02Q9p9eCrBm1c9LU6Qkhx9/Kh+/XiODlzpsiVPB2
 37oQ/1+3IjF/+VFVOBRKmYLpwcYwN17WX5FwnzHev5Mkca55g004xqjaG
 NFbvsATOB5mK681nAwxo+eYH8vIPWrdXbvfBCPBBN8Lk01ZGlgfulvHD2
 S95le2eXkzR7BcLcIa8YrTDN1kmJcyGgm/IqmkCYI+L9zbKKhi6TP4ta4
 9BfHYlwAv14k0BzObjBnGV+lX4oOmWfVrahydO/qFshb0V85I4paMax4/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="343169988"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="343169988"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="653095069"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:16 +0300
Message-Id: <f72a5626473692910263671af91e02251ed87eea.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915/display: split out crtc state
 dump to a separate file
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

Declutter intel_display.c by splitting out crtc state dumping to a
separate file.

v2: intel_pipe_config_dump -> intel_crtc_state_dump

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  | 314 +++++++++++++++++
 .../drm/i915/display/intel_crtc_state_dump.h  |  16 +
 drivers/gpu/drm/i915/display/intel_display.c  | 315 +-----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   3 -
 .../drm/i915/display/intel_modeset_verify.c   |   5 +-
 6 files changed, 340 insertions(+), 314 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e4f008e9ace9..37a8ea56f7d6 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -220,6 +220,7 @@ i915-y += \
 	display/intel_combo_phy.o \
 	display/intel_connector.o \
 	display/intel_crtc.o \
+	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_display.o \
 	display/intel_display_power.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
new file mode 100644
index 000000000000..188509837926
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -0,0 +1,314 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_crtc_state_dump.h"
+#include "intel_display_types.h"
+#include "intel_hdmi.h"
+#include "intel_vrr.h"
+
+static void intel_dump_crtc_timings(struct drm_i915_private *i915,
+				    const struct drm_display_mode *mode)
+{
+	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, "
+		    "type: 0x%x flags: 0x%x\n",
+		    mode->crtc_clock,
+		    mode->crtc_hdisplay, mode->crtc_hsync_start,
+		    mode->crtc_hsync_end, mode->crtc_htotal,
+		    mode->crtc_vdisplay, mode->crtc_vsync_start,
+		    mode->crtc_vsync_end, mode->crtc_vtotal,
+		    mode->type, mode->flags);
+}
+
+static void
+intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
+		      const char *id, unsigned int lane_count,
+		      const struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
+
+	drm_dbg_kms(&i915->drm,
+		    "%s: lanes: %i; data_m: %u, data_n: %u, link_m: %u, link_n: %u, tu: %u\n",
+		    id, lane_count,
+		    m_n->data_m, m_n->data_n,
+		    m_n->link_m, m_n->link_n, m_n->tu);
+}
+
+static void
+intel_dump_infoframe(struct drm_i915_private *dev_priv,
+		     const union hdmi_infoframe *frame)
+{
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, frame);
+}
+
+static void
+intel_dump_dp_vsc_sdp(struct drm_i915_private *dev_priv,
+		      const struct drm_dp_vsc_sdp *vsc)
+{
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, vsc);
+}
+
+#define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
+
+static const char * const output_type_str[] = {
+	OUTPUT_TYPE(UNUSED),
+	OUTPUT_TYPE(ANALOG),
+	OUTPUT_TYPE(DVO),
+	OUTPUT_TYPE(SDVO),
+	OUTPUT_TYPE(LVDS),
+	OUTPUT_TYPE(TVOUT),
+	OUTPUT_TYPE(HDMI),
+	OUTPUT_TYPE(DP),
+	OUTPUT_TYPE(EDP),
+	OUTPUT_TYPE(DSI),
+	OUTPUT_TYPE(DDI),
+	OUTPUT_TYPE(DP_MST),
+};
+
+#undef OUTPUT_TYPE
+
+static void snprintf_output_types(char *buf, size_t len,
+				  unsigned int output_types)
+{
+	char *str = buf;
+	int i;
+
+	str[0] = '\0';
+
+	for (i = 0; i < ARRAY_SIZE(output_type_str); i++) {
+		int r;
+
+		if ((output_types & BIT(i)) == 0)
+			continue;
+
+		r = snprintf(str, len, "%s%s",
+			     str != buf ? "," : "", output_type_str[i]);
+		if (r >= len)
+			break;
+		str += r;
+		len -= r;
+
+		output_types &= ~BIT(i);
+	}
+
+	WARN_ON_ONCE(output_types != 0);
+}
+
+static const char * const output_format_str[] = {
+	[INTEL_OUTPUT_FORMAT_RGB] = "RGB",
+	[INTEL_OUTPUT_FORMAT_YCBCR420] = "YCBCR4:2:0",
+	[INTEL_OUTPUT_FORMAT_YCBCR444] = "YCBCR4:4:4",
+};
+
+static const char *output_formats(enum intel_output_format format)
+{
+	if (format >= ARRAY_SIZE(output_format_str))
+		return "invalid";
+	return output_format_str[format];
+}
+
+static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	if (!fb) {
+		drm_dbg_kms(&i915->drm,
+			    "[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
+			    plane->base.base.id, plane->base.name,
+			    str_yes_no(plane_state->uapi.visible));
+		return;
+	}
+
+	drm_dbg_kms(&i915->drm,
+		    "[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %p4cc modifier = 0x%llx, visible: %s\n",
+		    plane->base.base.id, plane->base.name,
+		    fb->base.id, fb->width, fb->height, &fb->format->format,
+		    fb->modifier, str_yes_no(plane_state->uapi.visible));
+	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
+		    plane_state->hw.rotation, plane_state->scaler_id);
+	if (plane_state->uapi.visible)
+		drm_dbg_kms(&i915->drm,
+			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
+			    DRM_RECT_FP_ARG(&plane_state->uapi.src),
+			    DRM_RECT_ARG(&plane_state->uapi.dst));
+}
+
+void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
+			   struct intel_atomic_state *state,
+			   const char *context)
+{
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	char buf[64];
+	int i;
+
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s %s\n",
+		    crtc->base.base.id, crtc->base.name,
+		    str_yes_no(pipe_config->hw.enable), context);
+
+	if (!pipe_config->hw.enable)
+		goto dump_planes;
+
+	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
+	drm_dbg_kms(&dev_priv->drm,
+		    "active: %s, output_types: %s (0x%x), output format: %s\n",
+		    str_yes_no(pipe_config->hw.active),
+		    buf, pipe_config->output_types,
+		    output_formats(pipe_config->output_format));
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
+		    transcoder_name(pipe_config->cpu_transcoder),
+		    pipe_config->pipe_bpp, pipe_config->dither);
+
+	drm_dbg_kms(&dev_priv->drm, "MST master transcoder: %s\n",
+		    transcoder_name(pipe_config->mst_master_transcoder));
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
+		    transcoder_name(pipe_config->master_transcoder),
+		    pipe_config->sync_mode_slaves_mask);
+
+	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s, pipes: 0x%x\n",
+		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
+		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
+		    pipe_config->bigjoiner_pipes);
+
+	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
+		    str_enabled_disabled(pipe_config->splitter.enable),
+		    pipe_config->splitter.link_count,
+		    pipe_config->splitter.pixel_overlap);
+
+	if (pipe_config->has_pch_encoder)
+		intel_dump_m_n_config(pipe_config, "fdi",
+				      pipe_config->fdi_lanes,
+				      &pipe_config->fdi_m_n);
+
+	if (intel_crtc_has_dp_encoder(pipe_config)) {
+		intel_dump_m_n_config(pipe_config, "dp m_n",
+				      pipe_config->lane_count,
+				      &pipe_config->dp_m_n);
+		intel_dump_m_n_config(pipe_config, "dp m2_n2",
+				      pipe_config->lane_count,
+				      &pipe_config->dp_m2_n2);
+	}
+
+	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d, MSA timing delay: %d\n",
+		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
+		    pipe_config->has_audio, pipe_config->has_infoframe,
+		    pipe_config->infoframes.enable);
+
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL))
+		drm_dbg_kms(&dev_priv->drm, "GCP: 0x%x\n",
+			    pipe_config->infoframes.gcp);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
+		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.avi);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD))
+		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.spd);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_VENDOR))
+		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.hdmi);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM))
+		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.drm);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
+		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.drm);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
+		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
+
+	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+		    str_yes_no(pipe_config->vrr.enable),
+		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
+		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
+		    pipe_config->vrr.flipline,
+		    intel_vrr_vmin_vblank_start(pipe_config),
+		    intel_vrr_vmax_vblank_start(pipe_config));
+
+	drm_dbg_kms(&dev_priv->drm, "requested mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&pipe_config->hw.mode));
+	drm_dbg_kms(&dev_priv->drm, "adjusted mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
+	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
+	drm_dbg_kms(&dev_priv->drm, "pipe mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
+	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
+	drm_dbg_kms(&dev_priv->drm,
+		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
+		    pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
+		    pipe_config->pixel_rate);
+
+	drm_dbg_kms(&dev_priv->drm, "linetime: %d, ips linetime: %d\n",
+		    pipe_config->linetime, pipe_config->ips_linetime);
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		drm_dbg_kms(&dev_priv->drm,
+			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
+			    crtc->num_scalers,
+			    pipe_config->scaler_state.scaler_users,
+			    pipe_config->scaler_state.scaler_id);
+
+	if (HAS_GMCH(dev_priv))
+		drm_dbg_kms(&dev_priv->drm,
+			    "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
+			    pipe_config->gmch_pfit.control,
+			    pipe_config->gmch_pfit.pgm_ratios,
+			    pipe_config->gmch_pfit.lvds_border_bits);
+	else
+		drm_dbg_kms(&dev_priv->drm,
+			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
+			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
+			    str_enabled_disabled(pipe_config->pch_pfit.enabled),
+			    str_yes_no(pipe_config->pch_pfit.force_thru));
+
+	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i, drrs: %i\n",
+		    pipe_config->ips_enabled, pipe_config->double_wide,
+		    pipe_config->has_drrs);
+
+	intel_dpll_dump_hw_state(dev_priv, &pipe_config->dpll_hw_state);
+
+	if (IS_CHERRYVIEW(dev_priv))
+		drm_dbg_kms(&dev_priv->drm,
+			    "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
+			    pipe_config->cgm_mode, pipe_config->gamma_mode,
+			    pipe_config->gamma_enable, pipe_config->csc_enable);
+	else
+		drm_dbg_kms(&dev_priv->drm,
+			    "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
+			    pipe_config->csc_mode, pipe_config->gamma_mode,
+			    pipe_config->gamma_enable, pipe_config->csc_enable);
+
+	drm_dbg_kms(&dev_priv->drm, "degamma lut: %d entries, gamma lut: %d entries\n",
+		    pipe_config->hw.degamma_lut ?
+		    drm_color_lut_size(pipe_config->hw.degamma_lut) : 0,
+		    pipe_config->hw.gamma_lut ?
+		    drm_color_lut_size(pipe_config->hw.gamma_lut) : 0);
+
+dump_planes:
+	if (!state)
+		return;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		if (plane->pipe == crtc->pipe)
+			intel_dump_plane_state(plane_state);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
new file mode 100644
index 000000000000..9399c35b7e5e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_CRTC_STATE_DUMP_H__
+#define __INTEL_CRTC_STATE_DUMP_H__
+
+struct intel_crtc_state;
+struct intel_atomic_state;
+
+void intel_crtc_state_dump(const struct intel_crtc_state *crtc_state,
+			   struct intel_atomic_state *state,
+			   const char *context);
+
+#endif /* __INTEL_CRTC_STATE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index be91a9afdf36..224bae57264a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -87,6 +87,7 @@
 #include "intel_cdclk.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
+#include "intel_crtc_state_dump.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -5058,310 +5059,6 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void intel_dump_crtc_timings(struct drm_i915_private *i915,
-				    const struct drm_display_mode *mode)
-{
-	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, "
-		    "type: 0x%x flags: 0x%x\n",
-		    mode->crtc_clock,
-		    mode->crtc_hdisplay, mode->crtc_hsync_start,
-		    mode->crtc_hsync_end, mode->crtc_htotal,
-		    mode->crtc_vdisplay, mode->crtc_vsync_start,
-		    mode->crtc_vsync_end, mode->crtc_vtotal,
-		    mode->type, mode->flags);
-}
-
-static void
-intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
-		      const char *id, unsigned int lane_count,
-		      const struct intel_link_m_n *m_n)
-{
-	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
-
-	drm_dbg_kms(&i915->drm,
-		    "%s: lanes: %i; data_m: %u, data_n: %u, link_m: %u, link_n: %u, tu: %u\n",
-		    id, lane_count,
-		    m_n->data_m, m_n->data_n,
-		    m_n->link_m, m_n->link_n, m_n->tu);
-}
-
-static void
-intel_dump_infoframe(struct drm_i915_private *dev_priv,
-		     const union hdmi_infoframe *frame)
-{
-	if (!drm_debug_enabled(DRM_UT_KMS))
-		return;
-
-	hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, frame);
-}
-
-static void
-intel_dump_dp_vsc_sdp(struct drm_i915_private *dev_priv,
-		      const struct drm_dp_vsc_sdp *vsc)
-{
-	if (!drm_debug_enabled(DRM_UT_KMS))
-		return;
-
-	drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, vsc);
-}
-
-#define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
-
-static const char * const output_type_str[] = {
-	OUTPUT_TYPE(UNUSED),
-	OUTPUT_TYPE(ANALOG),
-	OUTPUT_TYPE(DVO),
-	OUTPUT_TYPE(SDVO),
-	OUTPUT_TYPE(LVDS),
-	OUTPUT_TYPE(TVOUT),
-	OUTPUT_TYPE(HDMI),
-	OUTPUT_TYPE(DP),
-	OUTPUT_TYPE(EDP),
-	OUTPUT_TYPE(DSI),
-	OUTPUT_TYPE(DDI),
-	OUTPUT_TYPE(DP_MST),
-};
-
-#undef OUTPUT_TYPE
-
-static void snprintf_output_types(char *buf, size_t len,
-				  unsigned int output_types)
-{
-	char *str = buf;
-	int i;
-
-	str[0] = '\0';
-
-	for (i = 0; i < ARRAY_SIZE(output_type_str); i++) {
-		int r;
-
-		if ((output_types & BIT(i)) == 0)
-			continue;
-
-		r = snprintf(str, len, "%s%s",
-			     str != buf ? "," : "", output_type_str[i]);
-		if (r >= len)
-			break;
-		str += r;
-		len -= r;
-
-		output_types &= ~BIT(i);
-	}
-
-	WARN_ON_ONCE(output_types != 0);
-}
-
-static const char * const output_format_str[] = {
-	[INTEL_OUTPUT_FORMAT_RGB] = "RGB",
-	[INTEL_OUTPUT_FORMAT_YCBCR420] = "YCBCR4:2:0",
-	[INTEL_OUTPUT_FORMAT_YCBCR444] = "YCBCR4:4:4",
-};
-
-static const char *output_formats(enum intel_output_format format)
-{
-	if (format >= ARRAY_SIZE(output_format_str))
-		return "invalid";
-	return output_format_str[format];
-}
-
-static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
-{
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-
-	if (!fb) {
-		drm_dbg_kms(&i915->drm,
-			    "[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
-			    plane->base.base.id, plane->base.name,
-			    str_yes_no(plane_state->uapi.visible));
-		return;
-	}
-
-	drm_dbg_kms(&i915->drm,
-		    "[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %p4cc modifier = 0x%llx, visible: %s\n",
-		    plane->base.base.id, plane->base.name,
-		    fb->base.id, fb->width, fb->height, &fb->format->format,
-		    fb->modifier, str_yes_no(plane_state->uapi.visible));
-	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
-		    plane_state->hw.rotation, plane_state->scaler_id);
-	if (plane_state->uapi.visible)
-		drm_dbg_kms(&i915->drm,
-			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
-			    DRM_RECT_FP_ARG(&plane_state->uapi.src),
-			    DRM_RECT_ARG(&plane_state->uapi.dst));
-}
-
-void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
-			    struct intel_atomic_state *state,
-			    const char *context)
-{
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-	char buf[64];
-	int i;
-
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s %s\n",
-		    crtc->base.base.id, crtc->base.name,
-		    str_yes_no(pipe_config->hw.enable), context);
-
-	if (!pipe_config->hw.enable)
-		goto dump_planes;
-
-	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
-	drm_dbg_kms(&dev_priv->drm,
-		    "active: %s, output_types: %s (0x%x), output format: %s\n",
-		    str_yes_no(pipe_config->hw.active),
-		    buf, pipe_config->output_types,
-		    output_formats(pipe_config->output_format));
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
-		    transcoder_name(pipe_config->cpu_transcoder),
-		    pipe_config->pipe_bpp, pipe_config->dither);
-
-	drm_dbg_kms(&dev_priv->drm, "MST master transcoder: %s\n",
-		    transcoder_name(pipe_config->mst_master_transcoder));
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
-		    transcoder_name(pipe_config->master_transcoder),
-		    pipe_config->sync_mode_slaves_mask);
-
-	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s, pipes: 0x%x\n",
-		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
-		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
-		    pipe_config->bigjoiner_pipes);
-
-	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
-		    str_enabled_disabled(pipe_config->splitter.enable),
-		    pipe_config->splitter.link_count,
-		    pipe_config->splitter.pixel_overlap);
-
-	if (pipe_config->has_pch_encoder)
-		intel_dump_m_n_config(pipe_config, "fdi",
-				      pipe_config->fdi_lanes,
-				      &pipe_config->fdi_m_n);
-
-	if (intel_crtc_has_dp_encoder(pipe_config)) {
-		intel_dump_m_n_config(pipe_config, "dp m_n",
-				      pipe_config->lane_count,
-				      &pipe_config->dp_m_n);
-		intel_dump_m_n_config(pipe_config, "dp m2_n2",
-				      pipe_config->lane_count,
-				      &pipe_config->dp_m2_n2);
-	}
-
-	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d, MSA timing delay: %d\n",
-		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
-		    pipe_config->has_audio, pipe_config->has_infoframe,
-		    pipe_config->infoframes.enable);
-
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL))
-		drm_dbg_kms(&dev_priv->drm, "GCP: 0x%x\n",
-			    pipe_config->infoframes.gcp);
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.avi);
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.spd);
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_VENDOR))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.hdmi);
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.drm);
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
-		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.drm);
-	if (pipe_config->infoframes.enable &
-	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
-		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
-
-	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
-		    str_yes_no(pipe_config->vrr.enable),
-		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
-		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
-		    pipe_config->vrr.flipline,
-		    intel_vrr_vmin_vblank_start(pipe_config),
-		    intel_vrr_vmax_vblank_start(pipe_config));
-
-	drm_dbg_kms(&dev_priv->drm, "requested mode: " DRM_MODE_FMT "\n",
-		    DRM_MODE_ARG(&pipe_config->hw.mode));
-	drm_dbg_kms(&dev_priv->drm, "adjusted mode: " DRM_MODE_FMT "\n",
-		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
-	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
-	drm_dbg_kms(&dev_priv->drm, "pipe mode: " DRM_MODE_FMT "\n",
-		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
-	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
-	drm_dbg_kms(&dev_priv->drm,
-		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
-		    pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
-		    pipe_config->pixel_rate);
-
-	drm_dbg_kms(&dev_priv->drm, "linetime: %d, ips linetime: %d\n",
-		    pipe_config->linetime, pipe_config->ips_linetime);
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		drm_dbg_kms(&dev_priv->drm,
-			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
-			    crtc->num_scalers,
-			    pipe_config->scaler_state.scaler_users,
-			    pipe_config->scaler_state.scaler_id);
-
-	if (HAS_GMCH(dev_priv))
-		drm_dbg_kms(&dev_priv->drm,
-			    "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
-			    pipe_config->gmch_pfit.control,
-			    pipe_config->gmch_pfit.pgm_ratios,
-			    pipe_config->gmch_pfit.lvds_border_bits);
-	else
-		drm_dbg_kms(&dev_priv->drm,
-			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
-			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
-			    str_enabled_disabled(pipe_config->pch_pfit.enabled),
-			    str_yes_no(pipe_config->pch_pfit.force_thru));
-
-	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i, drrs: %i\n",
-		    pipe_config->ips_enabled, pipe_config->double_wide,
-		    pipe_config->has_drrs);
-
-	intel_dpll_dump_hw_state(dev_priv, &pipe_config->dpll_hw_state);
-
-	if (IS_CHERRYVIEW(dev_priv))
-		drm_dbg_kms(&dev_priv->drm,
-			    "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
-			    pipe_config->cgm_mode, pipe_config->gamma_mode,
-			    pipe_config->gamma_enable, pipe_config->csc_enable);
-	else
-		drm_dbg_kms(&dev_priv->drm,
-			    "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
-			    pipe_config->csc_mode, pipe_config->gamma_mode,
-			    pipe_config->gamma_enable, pipe_config->csc_enable);
-
-	drm_dbg_kms(&dev_priv->drm, "degamma lut: %d entries, gamma lut: %d entries\n",
-		    pipe_config->hw.degamma_lut ?
-		    drm_color_lut_size(pipe_config->hw.degamma_lut) : 0,
-		    pipe_config->hw.gamma_lut ?
-		    drm_color_lut_size(pipe_config->hw.gamma_lut) : 0);
-
-dump_planes:
-	if (!state)
-		return;
-
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe == crtc->pipe)
-			intel_dump_plane_state(plane_state);
-	}
-}
-
 static bool check_digital_port_conflicts(struct intel_atomic_state *state)
 {
 	struct drm_device *dev = state->base.dev;
@@ -7392,9 +7089,9 @@ static int intel_atomic_check(struct drm_device *dev,
 		    !new_crtc_state->update_pipe)
 			continue;
 
-		intel_dump_pipe_config(new_crtc_state, state,
-				       intel_crtc_needs_modeset(new_crtc_state) ?
-				       "[modeset]" : "[fastset]");
+		intel_crtc_state_dump(new_crtc_state, state,
+				      intel_crtc_needs_modeset(new_crtc_state) ?
+				      "[modeset]" : "[fastset]");
 	}
 
 	return 0;
@@ -7409,7 +7106,7 @@ static int intel_atomic_check(struct drm_device *dev,
 	 */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i)
-		intel_dump_pipe_config(new_crtc_state, state, "[failed]");
+		intel_crtc_state_dump(new_crtc_state, state, "[failed]");
 
 	return ret;
 }
@@ -9889,7 +9586,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 			to_intel_crtc_state(crtc->base.state);
 
 		intel_sanitize_crtc(crtc, ctx);
-		intel_dump_pipe_config(crtc_state, NULL, "[setup_hw_state]");
+		intel_crtc_state_dump(crtc_state, NULL, "[setup_hw_state]");
 	}
 
 	intel_modeset_update_connector_atomic_state(dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 70410eeb19c8..2feb8ae5d5d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -563,9 +563,6 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
-void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
-			    struct intel_atomic_state *state,
-			    const char *context);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 1655c903e2f0..0e2ed0726459 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -10,6 +10,7 @@
 #include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
+#include "intel_crtc_state_dump.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
@@ -216,8 +217,8 @@ verify_crtc_state(struct intel_crtc *crtc,
 	if (!intel_pipe_config_compare(new_crtc_state,
 				       pipe_config, false)) {
 		I915_STATE_WARN(1, "pipe state doesn't match!\n");
-		intel_dump_pipe_config(pipe_config, NULL, "[hw state]");
-		intel_dump_pipe_config(new_crtc_state, NULL, "[sw state]");
+		intel_crtc_state_dump(pipe_config, NULL, "[hw state]");
+		intel_crtc_state_dump(new_crtc_state, NULL, "[sw state]");
 	}
 }
 
-- 
2.30.2

