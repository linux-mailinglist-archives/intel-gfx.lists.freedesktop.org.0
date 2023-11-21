Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966847F2574
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECCF10E273;
	Tue, 21 Nov 2023 05:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FAB10E27B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545430; x=1732081430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TbP7RgHLgvVBWa/NCsde+F1Z7gMPOns6KO3is0uRl8s=;
 b=Y6lDW2v0jOg6eN2T0/bBhwRvGOu/Yig354J04bEvyrdSskV5zSxeecpv
 1rfCQIZqyGwlzr2lhcyVJzpi2oTrDt/RD51W9lOpxckmOfSNhbS/8/iIE
 OkykUgkl3DOCZ0DsXO/+PrCe86Wt7rvABYH+oVPhYTnnmFfKqxQINOe4a
 /mPPZtD2n/IMnPAfSixZmtW1gQPPZ8ad3E596dH9tBepyewLURKBKMTNw
 HQm85b2GwNmM0rp8Diac7BAOyIbVFji6uijtqyclRsa2h0Ve0lHe333Br
 1I1igtROsgcgwk77f/SD7k524ACDyz1pp7CkIlb+Xl9E6JKQqzXX7WN1W A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611843"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611843"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002164"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002164"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:20 +0200
Message-ID: <20231121054324.9988-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915: Split g4x+ HDMI audio
 presence detect from port enable
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

Follow the hsw+ approach toggle the audio presence detect
when we set up the ELD, instead of doing it when turning the
port on/off.

This will facilitate audio enable/disable to happen during
fastsets instead of requiring a full modeset.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

