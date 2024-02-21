Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C7185D7D4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 13:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B6310E720;
	Wed, 21 Feb 2024 12:20:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ph87qSFM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389B410E720
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 12:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708518025; x=1740054025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AegmF054OdNlL6G1udue08RNWZ98XjQiSpa2mmBEhZ4=;
 b=Ph87qSFMUp2hNXJwjgSgRlL24ozSjgwiJg8IuKqZEY+6fia6sMj+AH29
 jyIzS5CmvYaYmexwnlp+eDrf/cu6TPPw1pIe06nh0MfkvX5HAG+RMmiv7
 vZzrvy5NhfCsa67Eu5u7Z+6eh8C8/h3rytsPqXgzgi4sQ5Rkub1gzEg77
 qWXd0DbGuhWxvctvOmM4s+sKrWkMLMMyqWLak7uyHMaVP/gqiQbayy+vO
 YXy/KKCfka5FOevZ3FG4zv7IXysZh+lTuEHs3PmUGP+z6jEbjTQ6c/vnb
 GS0VTAUXLDqYchh0vDkEYVJevOrmwPAWNlBvQeCSMMbwZk6H9b6ewdP8Y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="6488813"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="6488813"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 04:20:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5426146"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 21 Feb 2024 04:20:23 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 6/6] drm/i915/display: Read/Write AS sdp only when sink/source
 has enabled
Date: Wed, 21 Feb 2024 17:43:21 +0530
Message-Id: <20240221121321.2213128-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240221121321.2213128-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240221121321.2213128-1-mitulkumar.ajitkumar.golani@intel.com>
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

Write/Read Adaptive sync SDP only when Sink and Source is enabled
for the same. Also along with write TRANS_VRR_VSYNC values.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c            | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c             | 5 +++++
 drivers/gpu/drm/i915/display/intel_vrr.c            | 4 ++++
 4 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bea441590204..a1f46e4a8fa1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3926,6 +3926,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	/* XXX: DSI transcoder paranoia */
 	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
@@ -3972,6 +3973,10 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
+	if (HAS_AS_SDP(dev_priv) &&
+	    drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd))
+		intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
+
 	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fe4268813786..6399fbc6c738 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -68,6 +68,7 @@ struct drm_printer;
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
+#define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
 #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
 #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c1e2301dd52..706878a361e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4336,6 +4336,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK |
 			 VIDEO_DIP_ENABLE_ADAPTIVE_SYNC;
 	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
 	if (!enable && HAS_DSC(dev_priv))
@@ -4353,6 +4354,10 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 
 	intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
 
+	if (HAS_AS_SDP(dev_priv) &&
+	    drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd))
+		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_ADAPTIVE_SYNC);
+
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 29ddf504d94b..f4bf0518a816 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -217,6 +217,10 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
+
+	if (crtc_state->vrr.as_sdp_enable)
+		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+			       crtc_state->vrr.vsync_end << 16 | crtc_state->vrr.vsync_start);
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
-- 
2.25.1

