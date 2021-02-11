Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA2B318DA6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A486C6EE3D;
	Thu, 11 Feb 2021 14:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337706EE3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:53:03 +0000 (UTC)
IronPort-SDR: ydFYxbj9gmLLXEg5qXT5r4bxKRYL5EXCy9YEAWES4xhMOgLFrfjyyAYGRe6VyVI+aB5JgWPYBt
 V9Br3nt5whOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="243741682"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="243741682"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:53:02 -0800
IronPort-SDR: PNzcRtp28W/FuM13+SFiACNi/ZM0LDvNEo25apeW2YrhON+qD9N6bOfu8bh+3EJsppveG2gcWs
 E8Y9dBh69bxA==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="422286006"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:53:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:16 +0200
Message-Id: <6fb9f831672c951c00d92f1176bd42d3b0f30145.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state readout
 for platforms that support it
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add splitter configuration to crtc state, and read it where
supported. Also add splitter state dumping. The stream splitter will be
required for eDP MSO.

v3:
- Convert segment timings to full panel timings.
- Refer to splitter instead of mso in crtc state.
- Dump splitter state.

v2: Add warning for mso being enabled on pipes other than A.

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 37 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  7 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 4 files changed, 75 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c4003605f93..c9098297b6ac 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2132,6 +2132,41 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 	}
 }
 
+static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
+				     struct intel_crtc_state *pipe_config)
+{
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 dss1;
+
+	if (!HAS_MSO(i915))
+		return;
+
+	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+
+	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
+	if (!pipe_config->splitter.enable)
+		return;
+
+	/* Splitter enable is supported for pipe A only. */
+	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A)) {
+		pipe_config->splitter.enable = false;
+		return;
+	}
+
+	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
+	case SPLITTER_CONFIGURATION_2_SEGMENT:
+		pipe_config->splitter.link_count = 2;
+		break;
+	case SPLITTER_CONFIGURATION_4_SEGMENT:
+		pipe_config->splitter.link_count = 4;
+		break;
+	}
+
+	pipe_config->splitter.pixel_overlap = REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1);
+}
+
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -3322,6 +3357,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
 		intel_ddi_read_func_ctl(encoder, pipe_config);
 	}
 
+	intel_ddi_mso_get_config(encoder, pipe_config);
+
 	pipe_config->has_audio =
 		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index beed08c00b6c..fe9985bd5786 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4856,8 +4856,30 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 		pipe_mode->crtc_clock /= 2;
 	}
 
-	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
-	intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
+	if (crtc_state->splitter.enable) {
+		int n = crtc_state->splitter.link_count;
+		int overlap = crtc_state->splitter.pixel_overlap;
+
+		/*
+		 * eDP MSO uses segment timings from EDID for transcoder
+		 * timings, but full mode for everything else.
+		 *
+		 * h_full = (h_segment - pixel_overlap) * link_count
+		 */
+		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) * n;
+		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start - overlap) * n;
+		pipe_mode->crtc_hblank_end = (pipe_mode->crtc_hblank_end - overlap) * n;
+		pipe_mode->crtc_hsync_start = (pipe_mode->crtc_hsync_start - overlap) * n;
+		pipe_mode->crtc_hsync_end = (pipe_mode->crtc_hsync_end - overlap) * n;
+		pipe_mode->crtc_htotal = (pipe_mode->crtc_htotal - overlap) * n;
+		pipe_mode->crtc_clock *= n;
+
+		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
+		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
+	} else {
+		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
+		intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
+	}
 
 	intel_crtc_compute_pixel_rate(crtc_state);
 
@@ -8259,6 +8281,11 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 		    pipe_config->bigjoiner_slave ? "slave" :
 		    pipe_config->bigjoiner ? "master" : "no");
 
+	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
+		    enableddisabled(pipe_config->splitter.enable),
+		    pipe_config->splitter.link_count,
+		    pipe_config->splitter.pixel_overlap);
+
 	if (pipe_config->has_pch_encoder)
 		intel_dump_m_n_config(pipe_config, "fdi",
 				      pipe_config->fdi_lanes,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 71611b596c88..5564db512d22 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1161,6 +1161,13 @@ struct intel_crtc_state {
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax;
 	} vrr;
+
+	/* Stream Splitter for eDP MSO */
+	struct {
+		bool enable;
+		u8 link_count;
+		u8 pixel_overlap;
+	} splitter;
 };
 
 enum intel_pipe_crc_source {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9f55b5e6d8c9..3d8be7b021d9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1709,6 +1709,8 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 
 #define HAS_CSR(dev_priv)	(INTEL_INFO(dev_priv)->display.has_csr)
 
+#define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
+
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
