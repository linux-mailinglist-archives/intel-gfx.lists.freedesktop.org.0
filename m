Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1A75F46ED
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:49:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1370010E3AE;
	Tue,  4 Oct 2022 15:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B027210E3B6
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 15:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664898544; x=1696434544;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mfTmzhVOtSRP9ECYsZaNb1zT2E5Ol5tQqQoGy8U3Erw=;
 b=Xpx6wSNSLTPAiLoKXmejIQ4Oz5R/ue29IbF0PE5VkGaiJIa/pfedgYrI
 2v8bEiD8ZhXJ0pCpN23rqj55kz8nYtS6tFZ3MJe2RdwB9/unXCAIPcwAq
 Nn0sJtv/NwlvB0XPF2HrdtHmCCKV+SicH1+yNORk3Nibv+asRFkctkf55
 JETyoBvwa3HhmKOmvleE4Oay3cLYyI0zjkdER2JF2By/1Rqo85FkpWOKr
 LRwhTRBzyO3Qhmejpv+eP+8xSjMu5HizbRo/DsfZa/Oy3oYIZxdxucoCg
 BvVXvPvlC6l+c2Vu8ugmO0wCWtw9XMZyrSKRIZsOU+V/Esh6901OU9Oh3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300545914"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="300545914"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:49:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713055737"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="713055737"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:49:03 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 18:48:48 +0300
Message-Id: <20221004154848.689607-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Enable SDP split for DP2.0
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

Enable the SDP split configuration for DP2.0.

v2: Move the register handling out of compute config function (JaniN)

v3: Patch styling and register access based on platform support (JaniN)

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 19 +++++++++++++++++++
 5 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index aacbc6da84ef..c9c96f1e1a99 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -800,6 +800,18 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, aud_config, tmp);
 }
 
+void intel_audio_sdp_split_update(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum transcoder trans = crtc_state->cpu_transcoder;
+	u32 clear = crtc_state->sdp_split_enable ? 0 : AUD_ENABLE_SDP_SPLIT;
+	u32 set = crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0;
+
+	if (HAS_DP20(i915))
+		intel_de_rmw(i915, AUD_DP_2DOT0_CTRL(trans), clear, set);
+}
+
 /**
  * intel_audio_codec_enable - Enable the audio codec for HD audio
  * @encoder: encoder on which to enable audio
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 63b22131dc45..1b87257c6a17 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -22,5 +22,7 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
+void intel_audio_sdp_split_update(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 971356237eca..dfb0a8218c62 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2926,6 +2926,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_vrr_enable(encoder, crtc_state);
 
+	/* Enable/Disable DP2.0 SDP split config before transcoder */
+	intel_audio_sdp_split_update(encoder, crtc_state);
+
 	intel_enable_transcoder(crtc_state);
 
 	intel_crtc_vblank_on(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..51478e7e086d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1282,6 +1282,8 @@ struct intel_crtc_state {
 	/* Forward Error correction State */
 	bool fec_enable;
 
+	bool sdp_split_enable;
+
 	/* Pointer to master transcoder in case of tiled displays */
 	enum transcoder master_transcoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b06806ec0d..be7ea95ac2a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2008,6 +2008,23 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
+static void
+intel_dp_audio_compute_config(struct intel_encoder *encoder,
+			      struct intel_crtc_state *pipe_config,
+			      struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct drm_connector *connector = conn_state->connector;
+
+	pipe_config->sdp_split_enable =
+		    intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		    intel_dp_is_uhbr(pipe_config);
+
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
+		    connector->base.id, connector->name,
+		    str_yes_no(pipe_config->sdp_split_enable));
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -2091,6 +2108,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= n;
 	}
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+
 	intel_link_compute_m_n(output_bpp,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
-- 
2.34.1

