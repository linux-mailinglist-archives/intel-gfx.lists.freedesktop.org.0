Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F70E5FACE5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F327610E7C5;
	Tue, 11 Oct 2022 06:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18B210E7BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470085; x=1697006085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PY7ByhtDveuNQe4f7I/yll7HsmkqzJUM7sP7ym/XTWY=;
 b=DqexjIqQGwHKuC1f+5DWL9UWoDDYapi/LeaSW+QqCgL71+LoKIJg6lMj
 WxfjvIh3/3ZDnOFBtt3ff5OJ5mlOFQpZKXgZxmbdOIn/Es8aUO7c6CAFu
 Oos+pSxRkqILNDkq0JGrEAwRaiPEoO+0F3PS66Vpvd8jz1Reqk1ym99/P
 TQ7MuBm4wBGgOC0QTU+wPukY/5FGpcrTyNyWnHiX9ZoOJRqzxAbwP3KrK
 F6DpYlwx2xeCr/3Lqg9ltoQzqp2aATP7Y/imo78Rf8rM3rx8mS4V8RHae
 Neoj1A9UouhnfQWoyVoK5+7AKQuq4bdyWtUFSxfFhtRvgnUzISG/QtUPk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031831"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031831"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680347"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680347"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:42 +0530
Message-Id: <20221011063447.904649-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/8] drm/i915/display: Add new member to
 configure PCON color conversion
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

The decision to use DFP output format conversion capabilities should be
during compute_config phase.

This patch adds new member to crtc_state to represent the final
output_format to the sink. In case of a DFP this can be different than
the output_format, as per the format conversion done via the PCON.

This will help to store only the format conversion capabilities of the
DP device in intel_dp->dfp, and use crtc_state to compute and store the
configuration for color/format conversion for a given mode.

v2: modified the new member to crtc_state to represent the final
output_format that eaches the sink, after possible conversion by
PCON kind of devices. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c               | 1 +
 drivers/gpu/drm/i915/display/intel_crt.c             | 1 +
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_display_types.h   | 3 +++
 drivers/gpu/drm/i915/display/intel_dp.c              | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c          | 1 +
 drivers/gpu/drm/i915/display/intel_dvo.c             | 1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c            | 3 +++
 drivers/gpu/drm/i915/display/intel_lvds.c            | 1 +
 drivers/gpu/drm/i915/display/intel_tv.c              | 1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 +
 11 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 47f13750f6fa..5defafb6b9df 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1667,6 +1667,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	int ret;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 
 	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 94d0a5e1dd03..a6e7cf21e6e9 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -392,6 +392,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e9212f69c360..ed427b9cbf09 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -163,10 +163,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
 	drm_dbg_kms(&i915->drm,
-		    "active: %s, output_types: %s (0x%x), output format: %s\n",
+		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
 		    str_yes_no(pipe_config->hw.active),
 		    buf, pipe_config->output_types,
-		    output_formats(pipe_config->output_format));
+		    output_formats(pipe_config->output_format),
+		    output_formats(pipe_config->sink_format));
 
 	drm_dbg_kms(&i915->drm,
 		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..69a68a70ac00 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1312,6 +1312,9 @@ struct intel_crtc_state {
 
 	/* for loading single buffered registers during vblank */
 	struct drm_vblank_work vblank_work;
+
+	/* Sink output format */
+	enum intel_output_format sink_format;
 };
 
 enum intel_pipe_crc_source {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 359884617fdc..99d72b345907 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1990,8 +1990,14 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
+		crtc_state->sink_format = crtc_state->output_format;
 	}
 
+	else if (ycbcr_420_only)
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+	else
+		crtc_state->sink_format = crtc_state->output_format;
+
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
 	if (ret) {
@@ -2001,6 +2007,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->output_format = intel_dp_output_format(connector, true);
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index cd4e61026d98..cd625c7b8693 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -148,6 +148,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->has_pch_encoder = false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 595087288922..070cc7292e6b 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -279,6 +279,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93519fb23d9d..6a3e9a971513 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2219,6 +2219,8 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
+	crtc_state->sink_format = crtc_state->output_format;
+
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
 		if (intel_hdmi_is_ycbcr420(crtc_state) ||
@@ -2227,6 +2229,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->output_format = intel_hdmi_output_format(connector, true);
+		crtc_state->sink_format = crtc_state->output_format;
 		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e97e24f690a9..d1f9b1a46e4a 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -440,6 +440,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	}
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 
 	/*
 	 * We have timings from the BIOS for the panel, put them in
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index b2e93c2ad8f3..97c3d9234a66 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1205,6 +1205,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 
 	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
 	pipe_config->pipe_bpp = 8*3;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index dee0147a316c..c22d94861502 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -280,6 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 
 	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
 	if (ret)
-- 
2.25.1

