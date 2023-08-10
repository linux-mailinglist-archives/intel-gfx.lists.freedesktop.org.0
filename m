Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF62C777EBD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 19:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EC010E5C0;
	Thu, 10 Aug 2023 17:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB26F10E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 17:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691687077; x=1723223077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DoyQbsiJjrLOaS4lX9OeEHXXk8ShA++5m+m+b/AN+FI=;
 b=Eg6KzNvLYzoL1/fjGQ2znCIwVSZtZ/P2n68PQFAeeQEpVczg0QaYm/lp
 YqWWK//3rMwdA23porLnMeRiN9QgIwcSWbvMUalgTgeKfxeWa5J8f+3YY
 4ZynfW4oCsU0XISjp8ht0LpVt2wfyI+IX8vrcQYbbfVk/s1+3wgTW4viD
 FzXHiNtjbtXMQdiVwf/VPsG76KPAb+l+Zq82N/CSOlUidvym/jzG/wDyK
 NSwSmoyyoWMq3JFilt1s9Z7oUvqmiGs5Ywxu46Z+Te34ft2DHgp+nD9OY
 VExqqK8ivX49K8r1vh5njhb0nByWtaf54GGQx3oITkpgF13zh0LS86EG+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="435358649"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="435358649"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 10:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="735489051"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="735489051"
Received: from xudongf-mobl.amr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.50.242])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 10:03:58 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 20:03:40 +0300
Message-Id: <20230810170341.268503-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810170341.268503-1-vinod.govindapillai@intel.com>
References: <20230810170341.268503-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: streamline the dp audio
 config steps
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

Combine dp audio config steps in to single a place from where
intel_audio_compute_config is checked and SDP split decision
is done.

v2: combine different audio compute calls into one (Jani Nikula)

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c |  6 ++---
 drivers/gpu/drm/i915/display/intel_audio.h |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c    | 27 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h    |  4 ++++
 5 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3d9c9b4f27f8..19605264a35c 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -759,10 +759,10 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
-void intel_audio_sdp_split_update(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state)
+void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder trans = crtc_state->cpu_transcoder;
 
 	if (HAS_DP20(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 07d034a981e9..9327954b801e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -29,7 +29,6 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
-void intel_audio_sdp_split_update(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state);
+void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 84bbf854337a..b7f4281b8658 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3248,7 +3248,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 		intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
-	intel_audio_sdp_split_update(encoder, crtc_state);
+	intel_audio_sdp_split_update(crtc_state);
 
 	intel_enable_transcoder(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 12bd2f322e62..44ff30b77897 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2232,17 +2232,20 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
-static void
-intel_dp_audio_compute_config(struct intel_encoder *encoder,
-			      struct intel_crtc_state *pipe_config,
-			      struct drm_connector_state *conn_state)
+void intel_dp_audio_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state,
+				   bool has_audio)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 
-	pipe_config->sdp_split_enable =
-		intel_dp_has_audio(encoder, conn_state) &&
-		intel_dp_is_uhbr(pipe_config);
+	pipe_config->has_audio =
+		has_audio &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
+
+	pipe_config->sdp_split_enable = pipe_config->has_audio &&
+					intel_dp_is_uhbr(pipe_config);
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
 		    connector->base.id, connector->name,
@@ -2259,15 +2262,12 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	bool dp_has_audio = intel_dp_has_audio(encoder, conn_state);
 	int ret = 0, output_bpp;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		ret = intel_panel_compute_config(connector, adjusted_mode);
@@ -2313,7 +2313,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	else
 		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
 						 pipe_config->pipe_bpp);
-
 	if (intel_dp->mso_link_count) {
 		int n = intel_dp->mso_link_count;
 		int overlap = intel_dp->mso_pixel_overlap;
@@ -2334,8 +2333,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= n;
 	}
 
-	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
-
 	intel_link_compute_m_n(output_bpp,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
@@ -2350,6 +2347,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (!HAS_DDI(dev_priv))
 		g4x_dp_set_clock(encoder, pipe_config);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state,
+				      dp_has_audio);
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_dp_drrs_compute_config(connector, pipe_config, output_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 22099de3ca45..d1f583a3b549 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -65,6 +65,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct link_config_limits *limits,
 				int timeslots,
 				bool recompute_pipe_bpp);
+void intel_dp_audio_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state,
+				   bool has_audio);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

