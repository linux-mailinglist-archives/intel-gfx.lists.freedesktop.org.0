Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43FE63276B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C0E10E2EC;
	Mon, 21 Nov 2022 15:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014A510E2F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 15:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669043451; x=1700579451;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2zXvbVR6sa29LbxghMJZJdD+O1yYNGHjByc5A/mZx0k=;
 b=PNU2BaW5r3x4kF9JA3xplwIIcKUEjXS0ZyHorp5TyrfGIG0mV2qtygL5
 lKZWkpUXeORwyDduHLYA2p4kdA6+5DHf8TSbyGmISnnKRIp/B9LysmAZn
 KcOFkyGQwsn/tl7c7j8obGHjvv0cIQ+c4hj+cIWiLvBXZaFcVmAPA25UO
 RGEG2ulMhhN7m5guguutJY9PxPwwgw2KCu1SC3vy+B2k+NyG5JSsy4Y80
 b2rCQD+74RhZoK+Et48ARD2PohwTT9AQmGR7wYmnA6ujMCocar7zr4SKS
 01ofcfPT763e2a2KxlbUtC46L6iw1byspeihUgSEp9Bx2wZnvqmaBGz52 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="296935724"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="296935724"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 07:07:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="643349801"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="643349801"
Received: from asachkov-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.63.133])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 07:07:31 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 17:07:18 +0200
Message-Id: <20221121150718.1117628-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Enable SDP split for DP2.0
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

v4: Rebased

v5: Use unconditional clear bit in intel_de_rmw (Jani Nikula)

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 19 +++++++++++++++++++
 5 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 98c3322b4549..626c47e96a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -798,6 +798,17 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
+void intel_audio_sdp_split_update(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum transcoder trans = crtc_state->cpu_transcoder;
+
+	if (HAS_DP20(i915))
+		intel_de_rmw(i915, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
+			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
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
index 0f1ec2a98cc8..5f9a2410fc4c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2948,6 +2948,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_vrr_enable(encoder, crtc_state);
 
+	/* Enable/Disable DP2.0 SDP split config before transcoder */
+	intel_audio_sdp_split_update(encoder, crtc_state);
+
 	intel_enable_transcoder(crtc_state);
 
 	intel_crtc_vblank_on(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f07395065a69..ff3ef37d099e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1295,6 +1295,8 @@ struct intel_crtc_state {
 	/* Forward Error correction State */
 	bool fec_enable;
 
+	bool sdp_split_enable;
+
 	/* Pointer to master transcoder in case of tiled displays */
 	enum transcoder master_transcoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 67089711d9e2..cf8a2f644bab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2009,6 +2009,23 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
+		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		intel_dp_is_uhbr(pipe_config);
+
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
+		    connector->base.id, connector->name,
+		    str_yes_no(pipe_config->sdp_split_enable));
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -2092,6 +2109,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= n;
 	}
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+
 	intel_link_compute_m_n(output_bpp,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
-- 
2.34.1

