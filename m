Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6C15FB8DA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278EE10E8A9;
	Tue, 11 Oct 2022 17:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9486F10E982
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507735; x=1697043735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pdSbOpAbDGuS8Uf1MXq3kzPYnpRICBIVQ5Sn3AfWes0=;
 b=loQBui/m4vCrmD/BYDX3hqqnoWB541VhhiK86Gc2xsyjsthzsIcM1UKy
 7TsBtmnMT13uG15D3m3srxg3ILZlIJvXqLLV4YnXCitnchq4h+Zx7OBZW
 Xtb00A7CCH/VR0yZgIoTLQ5JquiapMh4ctQRgMuOM8bs0k/HmK657QJYq
 5G3LHZUEbI90LjEYrm1yZE54I/uBtc+azSdbTau4RPtlGS+nj8G3zaQ0R
 LGKHNUv4Xr9urw+2yBMq4vwoUpp00TJbmMV+8Lc/WS4hhg8ZjNpXRgr0U
 ScELxlAN9224Zw/WvNDhdm6K4tBu1i/7jYqHSNjKn88ZTOtftUvdHih+e g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="291885355"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="291885355"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475439"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:53 +0300
Message-Id: <20221011170011.17198-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/22] drm/i915/audio: Exract struct
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The "ilk" audio codec codepaths have some duplicated code
to figure out the correct registers to use on each platform.
Extrat that into a single place.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 85 +++++++++++-----------
 1 file changed, 43 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 5517e0a6d868..baa69151fc09 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -665,6 +665,32 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
+struct ilk_audio_regs {
+	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
+};
+
+static void ilk_audio_regs_init(struct drm_i915_private *i915,
+				enum pipe pipe,
+				struct ilk_audio_regs *regs)
+{
+	if (HAS_PCH_IBX(i915)) {
+		regs->hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = IBX_AUD_CFG(pipe);
+		regs->aud_cntl_st = IBX_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		regs->hdmiw_hdmiedid = VLV_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = VLV_AUD_CFG(pipe);
+		regs->aud_cntl_st = VLV_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
+	} else {
+		regs->hdmiw_hdmiedid = CPT_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = CPT_AUD_CFG(pipe);
+		regs->aud_cntl_st = CPT_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
+	}
+}
+
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -673,39 +699,30 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
+	struct ilk_audio_regs regs;
 	u32 tmp, eldv;
-	i915_reg_t aud_config, aud_cntrl_st2;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
 
-	if (HAS_PCH_IBX(i915)) {
-		aud_config = IBX_AUD_CFG(pipe);
-		aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
-	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		aud_config = VLV_AUD_CFG(pipe);
-		aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
-	} else {
-		aud_config = CPT_AUD_CFG(pipe);
-		aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
-	}
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
2.35.1

