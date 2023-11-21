Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 759AA7F2571
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:43:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89DF10E24A;
	Tue, 21 Nov 2023 05:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF7BE10E24A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545421; x=1732081421;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2arAovAw7CD+rWoezB+iITDvG/RSdFNxL0BVk/gazyc=;
 b=MsrTzG4KjUc3MD3IKBMoviiEyRN1Fkw9GTBz+/j3Sa2Dv7wmpGoaoZp5
 yb6dTfkAfJUnfesQN/HPzPVp11fvEA8f7xhp2n6R9l2d8DZoDuJC+tLnv
 7S0AUDEBuVdA5iJVqlJr121/GxiucZdp4ARjxzZ1EyafGjjt1xrE+CPUX
 TyPPdZXM23/WBWkVYWMS6H2uPGaOL3N/U6l9KBXFzgnaT9miq8PCJYZl8
 YF6iSXAdXi2re8JSUlFdv7/aXwcBXNMAeEEdVhW2cHKHWHkOt/aJlcKgC
 6IK353rRz+qVrCj1WN2cJShf16o8UEHe3iCMx8/wPGe36vvjWHy2vAuOn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611818"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611818"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002137"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002137"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:17 +0200
Message-ID: <20231121054324.9988-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915: Push audio enable/disable
 further out
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Push the audio enable/disable to be the last/first thing
respectively that is done in the encoder enable/disable hooks.
The goal is to move it further out of these encoder hooks entirely.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c       |  8 ++++----
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 ++++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  8 ++++----
 3 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e8ee0a08947e..79ef2b435beb 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -482,10 +482,10 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	intel_dp->link_trained = false;
-
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 
+	intel_dp->link_trained = false;
+
 	/*
 	 * Make sure the panel is off before trying to change the mode.
 	 * But also ensure that we have vdd while we switch off the panel.
@@ -686,8 +686,8 @@ static void g4x_enable_dp(struct intel_atomic_state *state,
 			  const struct drm_connector_state *conn_state)
 {
 	intel_enable_dp(state, encoder, pipe_config, conn_state);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
+	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_dp(struct intel_atomic_state *state,
@@ -695,8 +695,8 @@ static void vlv_enable_dp(struct intel_atomic_state *state,
 			  const struct intel_crtc_state *pipe_config,
 			  const struct drm_connector_state *conn_state)
 {
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
+	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
 static void g4x_pre_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f70af660dfcf..ca7ca3951de7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3201,8 +3201,6 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
-	intel_audio_codec_enable(encoder, crtc_state, conn_state);
-
 	trans_port_sync_stop_link_train(state, encoder, crtc_state);
 }
 
@@ -3333,8 +3331,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
 	intel_wait_ddi_buf_active(dev_priv, port);
-
-	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
 
 static void intel_enable_ddi(struct intel_atomic_state *state,
@@ -3362,6 +3358,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
+
+	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
@@ -3375,8 +3373,6 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 
 	intel_dp->link_trained = false;
 
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
@@ -3395,8 +3391,6 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = old_conn_state->connector;
 
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
-
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       false, false))
 		drm_dbg_kms(&i915->drm,
@@ -3409,6 +3403,8 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
+	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+
 	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
 
 	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0cb9405f59ea..820a04e8855a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -895,10 +895,10 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
-	intel_hdcp_disable(intel_mst->connector);
-
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 
+	intel_hdcp_disable(intel_mst->connector);
+
 	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
 }
 
@@ -1141,9 +1141,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_crtc_vblank_on(pipe_config);
 
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
-
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
+
+	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
-- 
2.41.0

