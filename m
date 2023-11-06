Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 795317E2EDC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8BEC10E435;
	Mon,  6 Nov 2023 21:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CCF810E433
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305582; x=1730841582;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D1/+ThHBJyfwWxqFkdViHT2lfSOzjNRwMqfn7XEKpSQ=;
 b=fMm2+/zfVqYT0E4OseQR1eye+ba0KMqo2/yRpqZY7OMtjtW+eWCdxx7x
 300tZKiUzKA9UICCmyxynQl3GgYfZrUf0LYF+vk0t824e1Smziqg3MvL3
 2k4WANA4Lnexr5hWLBb5Nm71NvK/0YXNP+krcvshgJ4K4olmHDTCMhF4b
 k4rN3kTnLYHBCfeYeXe5+wWZVJ2DbLY8GJFXa/Egs8ctYA7CALZ8e7ozx
 8hBI4v9BxolhraScEve0u8IxjcueQe+1Py1QA26qLcMmwLHq22XnIIN17
 jt80JIy5iIjjyPmT1gy0zfdqMbvUQOFH3XPmtPd9hERiRabk1s3VH1Aw/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911556"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911556"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964262"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964262"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:11 +0200
Message-ID: <20231106211915.13406-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Split g4x+ HDMI audio presence
 detect from port enable
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

Follow the hsw+ approach toggle the audio presence detect
when we set up the ELD, instead of doing it when turning the
port on/off.

This will facilitate audio enable/disable to happen during
fastsets instead of requiring a full modeset.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 9c70245d8b0a..beda6b480bf1 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -228,8 +228,6 @@ static void g4x_hdmi_enable_port(struct intel_encoder *encoder,
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
-		temp |= HDMI_AUDIO_ENABLE;
 
 	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
 	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
@@ -240,12 +238,16 @@ static void g4x_hdmi_audio_enable(struct intel_encoder *encoder,
 				  const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 
 	if (!crtc_state->has_audio)
 		return;
 
 	drm_WARN_ON(&i915->drm, !crtc_state->has_hdmi_sink);
 
+	/* Enable audio presence detect */
+	intel_de_rmw(i915, hdmi->hdmi_reg, 0, HDMI_AUDIO_ENABLE);
+
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
 
@@ -253,10 +255,16 @@ static void g4x_hdmi_audio_disable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
+
 	if (!old_crtc_state->has_audio)
 		return;
 
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+
+	/* Disable audio presence detect */
+	intel_de_rmw(i915, hdmi->hdmi_reg, HDMI_AUDIO_ENABLE, 0);
 }
 
 static void g4x_enable_hdmi(struct intel_atomic_state *state,
@@ -282,8 +290,6 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
-		temp |= HDMI_AUDIO_ENABLE;
 
 	/*
 	 * HW workaround, need to write this twice for issue
@@ -335,8 +341,6 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
-	if (pipe_config->has_audio)
-		temp |= HDMI_AUDIO_ENABLE;
 
 	/*
 	 * WaEnableHDMI8bpcBefore12bpc:snb,ivb
@@ -396,7 +400,7 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 
 	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
-	temp &= ~(SDVO_ENABLE | HDMI_AUDIO_ENABLE);
+	temp &= ~SDVO_ENABLE;
 	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
 	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
-- 
2.41.0

