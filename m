Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 513967E2EDA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B410E10E432;
	Mon,  6 Nov 2023 21:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94AAA10E432
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305575; x=1730841575;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6q5YA0zc4vT4VNN4bUQQFI8iUZmm+FDTvPdmhnxHJug=;
 b=hoUvibP7iwE4U4eN0Oh/V4dRePo+Xr5RnezOWIqpFZkWqP8VGj1E8fzt
 7CEeYenB7htrpY9ObZ+ySfqgs+CQs8sOXaXESq6WFAIcep/6HE9LxZfof
 SASPQUc4xA1xIaEdVb9kJTo4orvfHGYclgDVcH9OTxDaM+mmcciBRe63/
 xAZElqhjEFIyUJItnzD33/MWS68e7T67xxyzwf08/762bzBcucVpUkjas
 xTABfPrtYZZib2Or+rRp/KpS27S5X7wfQW8Fj6bpskgfL9aCpvp7D/MTR
 RertG3LjrPLcNlBMjtO6grtzy5a6A96xHwiIXIMTdvsz7hQJLgqzxLz2y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911536"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964249"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964249"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:09 +0200
Message-ID: <20231106211915.13406-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Wrap g4x+ DP/HDMI audio
 enable/disable
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

Put a wrapper around the intel_audio_codec_{enable,disable}()
calls in the g4x+ DP/HDMI code. We shall move the presence
detect enable/disable into the wrappers later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c   | 26 ++++++++++++--
 drivers/gpu/drm/i915/display/g4x_hdmi.c | 48 +++++++++++++++----------
 2 files changed, 53 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 79ef2b435beb..ecc2ec866424 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -475,6 +475,26 @@ intel_dp_link_down(struct intel_encoder *encoder,
 	}
 }
 
+static void g4x_dp_audio_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state,
+				const struct drm_connector_state *conn_state)
+{
+	if (!crtc_state->has_audio)
+		return;
+
+	intel_audio_codec_enable(encoder, crtc_state, conn_state);
+}
+
+static void g4x_dp_audio_disable(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *old_crtc_state,
+				 const struct drm_connector_state *old_conn_state)
+{
+	if (!old_crtc_state->has_audio)
+		return;
+
+	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+}
+
 static void intel_disable_dp(struct intel_atomic_state *state,
 			     struct intel_encoder *encoder,
 			     const struct intel_crtc_state *old_crtc_state,
@@ -482,7 +502,7 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	g4x_dp_audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_dp->link_trained = false;
 
@@ -687,7 +707,7 @@ static void g4x_enable_dp(struct intel_atomic_state *state,
 {
 	intel_enable_dp(state, encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_dp(struct intel_atomic_state *state,
@@ -696,7 +716,7 @@ static void vlv_enable_dp(struct intel_atomic_state *state,
 			  const struct drm_connector_state *conn_state)
 {
 	intel_edp_backlight_on(pipe_config, conn_state);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void g4x_pre_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 45e044b4a88d..9c70245d8b0a 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -235,18 +235,38 @@ static void g4x_hdmi_enable_port(struct intel_encoder *encoder,
 	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 }
 
+static void g4x_hdmi_audio_enable(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (!crtc_state->has_audio)
+		return;
+
+	drm_WARN_ON(&i915->drm, !crtc_state->has_hdmi_sink);
+
+	intel_audio_codec_enable(encoder, crtc_state, conn_state);
+}
+
+static void g4x_hdmi_audio_disable(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *old_crtc_state,
+				   const struct drm_connector_state *old_conn_state)
+{
+	if (!old_crtc_state->has_audio)
+		return;
+
+	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+}
+
 static void g4x_enable_hdmi(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
-		    !pipe_config->has_hdmi_sink);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void ibx_enable_hdmi(struct intel_atomic_state *state,
@@ -297,9 +317,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
-		    !pipe_config->has_hdmi_sink);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void cpt_enable_hdmi(struct intel_atomic_state *state,
@@ -352,9 +370,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
-		    !pipe_config->has_hdmi_sink);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_hdmi(struct intel_atomic_state *state,
@@ -362,11 +378,7 @@ static void vlv_enable_hdmi(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
-	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
-		    !pipe_config->has_hdmi_sink);
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
+	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void intel_disable_hdmi(struct intel_atomic_state *state,
@@ -433,7 +445,7 @@ static void g4x_disable_hdmi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
 
 	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
 }
@@ -443,7 +455,7 @@ static void pch_disable_hdmi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
 }
 
 static void pch_post_disable_hdmi(struct intel_atomic_state *state,
-- 
2.41.0

