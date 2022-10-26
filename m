Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FA160E612
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620B310E609;
	Wed, 26 Oct 2022 17:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23D6310E5F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803729; x=1698339729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ve/din4ISTL2kFjX54ZzyBHR4XeL4NK5ZEg4ogEkR4U=;
 b=LcGSZ/eFAATY2aFLdYIv7B0X79DsTQz4PlaT1rRUwljKbVyyDZQNYHBw
 FWjEIa7wursaed6TyUCxXuXs1Ts3x8hkgxeUcCctGVK9NZy2rqZRaFwjT
 qMOE8nMDwNsairiaY4G03lAKOSWXZF+9HMkbvwYW//waD+iynG2cMwTg0
 /waaieR/EEVh0BeOR8NR+vOFEnTQ/6zsXAdqZwQFZgz3Z/LXSq9It+vnn
 MJp37cejcZ1nWfJt9QfMpFsQfdobS7i8aXzrP0R8QaZPt99bjxfMNlqN0
 24AdW0F0Vl9dXXXEqxXgvzaP0PQ5pqah/XiiGQ1cHArD93rL7KXvR72of w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334624890"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334624890"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090514"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090514"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:39 +0300
Message-Id: <20221026170150.2654-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/audio: Extract struct
 ilk_audio_regs
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The "ilk" audio codec codepaths have some duplicated code
to figure out the correct registers to use on each platform.
Extrat that into a single place.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 101 +++++++++++----------
 1 file changed, 51 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b91167eaf71f..e35fabf8d86e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -665,47 +665,64 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
-static void ilk_audio_codec_disable(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *old_crtc_state,
-				    const struct drm_connector_state *old_conn_state)
+struct ilk_audio_regs {
+	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
+};
+
+static void ilk_audio_regs_init(struct drm_i915_private *i915,
+				enum pipe pipe,
+				struct ilk_audio_regs *regs)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	enum pipe pipe = crtc->pipe;
-	enum port port = encoder->port;
-	u32 tmp, eldv;
-	i915_reg_t aud_config, aud_cntrl_st2;
-
-	if (drm_WARN_ON(&i915->drm, port == PORT_A))
-		return;
-
 	if (HAS_PCH_IBX(i915)) {
-		aud_config = IBX_AUD_CFG(pipe);
-		aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
+		regs->hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = IBX_AUD_CFG(pipe);
+		regs->aud_cntl_st = IBX_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		aud_config = VLV_AUD_CFG(pipe);
-		aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
+		regs->hdmiw_hdmiedid = VLV_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = VLV_AUD_CFG(pipe);
+		regs->aud_cntl_st = VLV_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
 	} else {
-		aud_config = CPT_AUD_CFG(pipe);
-		aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
+		regs->hdmiw_hdmiedid = CPT_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = CPT_AUD_CFG(pipe);
+		regs->aud_cntl_st = CPT_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
 	}
+}
+
+static void ilk_audio_codec_disable(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *old_crtc_state,
+				    const struct drm_connector_state *old_conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+	enum port port = encoder->port;
+	struct ilk_audio_regs regs;
+	u32 tmp, eldv;
+
+	if (drm_WARN_ON(&i915->drm, port == PORT_A))
+		return;
+
+	ilk_audio_regs_init(i915, pipe, &regs);
 
 	/* Disable timestamps */
-	tmp = intel_de_read(i915, aud_config);
+	tmp = intel_de_read(i915, regs.aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp |= AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
 	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
 	if (intel_crtc_has_dp_encoder(old_crtc_state))
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
-	intel_de_write(i915, aud_config, tmp);
+	intel_de_write(i915, regs.aud_config, tmp);
 
 	eldv = IBX_ELD_VALID(port);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(i915, aud_cntrl_st2);
+	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
 	tmp &= ~eldv;
-	intel_de_write(i915, aud_cntrl_st2, tmp);
+	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
 }
 
 static void ilk_audio_codec_enable(struct intel_encoder *encoder,
@@ -718,9 +735,9 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
 	const u8 *eld = connector->eld;
+	struct ilk_audio_regs regs;
 	u32 tmp, eldv;
 	int len, i;
-	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
@@ -732,49 +749,33 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	 * infrastructure is not there yet.
 	 */
 
-	if (HAS_PCH_IBX(i915)) {
-		hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
-		aud_config = IBX_AUD_CFG(pipe);
-		aud_cntl_st = IBX_AUD_CNTL_ST(pipe);
-		aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
-	} else if (IS_VALLEYVIEW(i915) ||
-		   IS_CHERRYVIEW(i915)) {
-		hdmiw_hdmiedid = VLV_HDMIW_HDMIEDID(pipe);
-		aud_config = VLV_AUD_CFG(pipe);
-		aud_cntl_st = VLV_AUD_CNTL_ST(pipe);
-		aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
-	} else {
-		hdmiw_hdmiedid = CPT_HDMIW_HDMIEDID(pipe);
-		aud_config = CPT_AUD_CFG(pipe);
-		aud_cntl_st = CPT_AUD_CNTL_ST(pipe);
-		aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
-	}
+	ilk_audio_regs_init(i915, pipe, &regs);
 
 	eldv = IBX_ELD_VALID(port);
 
 	/* Invalidate ELD */
-	tmp = intel_de_read(i915, aud_cntrl_st2);
+	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
 	tmp &= ~eldv;
-	intel_de_write(i915, aud_cntrl_st2, tmp);
+	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
 
 	/* Reset ELD write address */
-	tmp = intel_de_read(i915, aud_cntl_st);
+	tmp = intel_de_read(i915, regs.aud_cntl_st);
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
-	intel_de_write(i915, aud_cntl_st, tmp);
+	intel_de_write(i915, regs.aud_cntl_st, tmp);
 
 	/* Up to 84 bytes of hw ELD buffer */
 	len = min(drm_eld_size(eld), 84);
 	for (i = 0; i < len / 4; i++)
-		intel_de_write(i915, hdmiw_hdmiedid,
+		intel_de_write(i915, regs.hdmiw_hdmiedid,
 			       *((const u32 *)eld + i));
 
 	/* ELD valid */
-	tmp = intel_de_read(i915, aud_cntrl_st2);
+	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
 	tmp |= eldv;
-	intel_de_write(i915, aud_cntrl_st2, tmp);
+	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
 
 	/* Enable timestamps */
-	tmp = intel_de_read(i915, aud_config);
+	tmp = intel_de_read(i915, regs.aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
 	tmp &= ~AUD_CONFIG_N_PROG_ENABLE;
 	tmp &= ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
@@ -782,7 +783,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 		tmp |= AUD_CONFIG_N_VALUE_INDEX;
 	else
 		tmp |= audio_config_hdmi_pixel_clock(crtc_state);
-	intel_de_write(i915, aud_config, tmp);
+	intel_de_write(i915, regs.aud_config, tmp);
 }
 
 /**
-- 
2.37.4

