Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5DF64644F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 23:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95C010E426;
	Wed,  7 Dec 2022 22:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9909810E426
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 22:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670453543; x=1701989543;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RcE+4SQHTbBM/kRUjZVNenuoCtbIMSMeZfcsfIUTb2c=;
 b=Gdl+dt6El9IyYLnfWgCExHooG/9b6CxIsZx0CrsyybJT+6YvDOARnlj0
 TOcpkiNG33e4AIynWTRWMDqL4g054KTH9sAfXubSmLR+eRTmZgOPtZI4Z
 s9H96MlsypoTT6iynyggkPSGYCRv4eTnKsKneAi9IvwO5QhsdF0cqAJjP
 M4Zf1ZqB51D+PWbC7a/KSleEi5oQRfSOItUJd2fHsCq1C9CBTQzCDIHRC
 Gx0A5MaLiMHjWTQwdyM2Sj5+HLosBnrGGTi9gg8kXx9DpHLE/fhg4Uq7B
 rz7XHKTA8gp7uJn82GxdLqLf09uJTJ2CAMsdPBtvqmoXO6mRo+WY6IlK8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="304650843"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="304650843"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 14:52:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="679304557"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="679304557"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 07 Dec 2022 14:52:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Dec 2022 00:52:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 00:52:19 +0200
Message-Id: <20221207225219.29060-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix VLV/CHV HDMI/DP audio enable
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

Despite what I claimed in commit c3c5dc1d9224
("drm/i915/audio: Do the vblank waits") the vblank
interrupts are in fact not enabled yet when we do the
audio enable sequence on VLV/CHV (all other platforms are
fine).

Reorder the enable sequence on VLV/CHV to match that of the
other platforms so that the audio enable happens after the
pipe has been enabled.

Fixes: c3c5dc1d9224 ("drm/i915/audio: Do the vblank waits")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c   |  4 +--
 drivers/gpu/drm/i915/display/g4x_hdmi.c | 41 ++++++++++++++++---------
 2 files changed, 29 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 3593938dcd87..24ef36ec2d3d 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -673,8 +673,6 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 	intel_dp_pcon_dsc_configure(intel_dp, pipe_config);
 	intel_dp_start_link_train(intel_dp, pipe_config);
 	intel_dp_stop_link_train(intel_dp, pipe_config);
-
-	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
 static void g4x_enable_dp(struct intel_atomic_state *state,
@@ -683,6 +681,7 @@ static void g4x_enable_dp(struct intel_atomic_state *state,
 			  const struct drm_connector_state *conn_state)
 {
 	intel_enable_dp(state, encoder, pipe_config, conn_state);
+	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
 }
 
@@ -691,6 +690,7 @@ static void vlv_enable_dp(struct intel_atomic_state *state,
 			  const struct intel_crtc_state *pipe_config,
 			  const struct drm_connector_state *conn_state)
 {
+	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 	intel_edp_backlight_on(pipe_config, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 121caeaa409b..c3580d96765c 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -157,24 +157,32 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
 			     &pipe_config->infoframes.hdmi);
 }
 
+static void g4x_hdmi_enable_port(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *pipe_config)
+{
+	struct drm_device *dev = encoder->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
+	u32 temp;
+
+	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
+
+	temp |= SDVO_ENABLE;
+	if (pipe_config->has_audio)
+		temp |= HDMI_AUDIO_ENABLE;
+
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+}
+
 static void g4x_enable_hdmi(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
-	u32 temp;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
-
-	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
-		temp |= HDMI_AUDIO_ENABLE;
-
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	g4x_hdmi_enable_port(encoder, pipe_config);
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
 		    !pipe_config->has_hdmi_sink);
@@ -294,6 +302,11 @@ static void vlv_enable_hdmi(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
+		    !pipe_config->has_hdmi_sink);
+	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 }
 
 static void intel_disable_hdmi(struct intel_atomic_state *state,
@@ -415,7 +428,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 			      pipe_config->has_infoframe,
 			      pipe_config, conn_state);
 
-	g4x_enable_hdmi(state, encoder, pipe_config, conn_state);
+	g4x_hdmi_enable_port(encoder, pipe_config);
 
 	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
 }
@@ -492,7 +505,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 			      pipe_config->has_infoframe,
 			      pipe_config, conn_state);
 
-	g4x_enable_hdmi(state, encoder, pipe_config, conn_state);
+	g4x_hdmi_enable_port(encoder, pipe_config);
 
 	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
 
-- 
2.37.4

