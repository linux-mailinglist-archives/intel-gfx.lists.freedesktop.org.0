Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1523D5FB8C7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E8310E8A9;
	Tue, 11 Oct 2022 17:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7944910E8A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507650; x=1697043650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aGpvENoNWFUUNcBJ4SvT9HWKNoqMvjSHJWNkusHpE2I=;
 b=hhci+kJS7HI7lSTbhXmCwRDO9NVy2tX1fibeNOb3XNRkAIuHkuS6nycD
 8GitGGGSu8xvEhrMC/VILe4MR/Ekhu5SYdZjD2F5PeitqjDaqJKUeS8CP
 uE7fS88gZmYtDXlAisgoqdIizQ0jkhnr5YM2sKxwkPedIucQxv3yd5MV8
 tuqx6ogU2FBK4feZEm2akkkJj4R6VRHOLCldlc11M1RxUA21SdnpNFVNi
 k/jYX/TmlKqvW6RN/uBkw8nUHPoEvmRvklK8rpLk8bY+1JokHwN0mYpYW
 wqCTbE/MwLuy+jfs3FLsZkkzSC8Cz7FR/qK6DqB2Wize0n3a1+iaWG8BR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="390871983"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390871983"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475632"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475632"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:58 +0300
Message-Id: <20221011170011.17198-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/22] drm/i915/audio: Read ELD buffer size from
 hardware
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

We currently read the ELD buffer size from hardware on g4x,
but on ilk+ we just hardcode it to 84 bytes. Let's unify
this and just do the hardware readout on all platforms,
in case the size changes in the future or something.

TODO: should perhaps do the readout during driver init and
stash the results somewhere so that we could check that the
connector's ELD actually fits and not even try to enable audio
in that case...

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 49 ++++++++++++++++++----
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3f328913fc90..abca5f23673a 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -304,6 +304,15 @@ static int audio_config_hdmi_get_n(const struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int g4x_eld_buffer_size(struct drm_i915_private *i915)
+{
+	u32 tmp;
+
+	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
+
+	return REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
+}
+
 static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -329,10 +338,11 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp &= ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
-	len = REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 
+	len = g4x_eld_buffer_size(i915);
 	len = min(drm_eld_size(eld) / 4, len);
+
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
 			       *((const u32 *)eld + i));
@@ -442,6 +452,16 @@ hsw_audio_config_update(struct intel_encoder *encoder,
 		hsw_hdmi_audio_config_update(encoder, crtc_state);
 }
 
+static int hsw_eld_buffer_size(struct drm_i915_private *i915,
+			       enum transcoder cpu_transcoder)
+{
+	u32 tmp;
+
+	tmp = intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
+
+	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
+}
+
 static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -615,9 +635,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
 	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
 
-	/* Up to 84 bytes of hw ELD buffer */
-	len = min(drm_eld_size(eld), 84);
-	for (i = 0; i < len / 4; i++)
+	len = hsw_eld_buffer_size(i915, cpu_transcoder);
+	len = min(drm_eld_size(eld) / 4, len);
+
+	for (i = 0; i < len; i++)
 		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
 			       *((const u32 *)eld + i));
 
@@ -658,6 +679,19 @@ static void ilk_audio_regs_init(struct drm_i915_private *i915,
 	}
 }
 
+static int ilk_eld_buffer_size(struct drm_i915_private *i915,
+			       enum pipe pipe)
+{
+	struct ilk_audio_regs regs;
+	u32 tmp;
+
+	ilk_audio_regs_init(i915, pipe, &regs);
+
+	tmp = intel_de_read(i915, regs.aud_cntl_st);
+
+	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
+}
+
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -732,9 +766,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
 	intel_de_write(i915, regs.aud_cntl_st, tmp);
 
-	/* Up to 84 bytes of hw ELD buffer */
-	len = min(drm_eld_size(eld), 84);
-	for (i = 0; i < len / 4; i++)
+	len = ilk_eld_buffer_size(i915, pipe);
+	len = min(drm_eld_size(eld) / 4, len);
+
+	for (i = 0; i < len; i++)
 		intel_de_write(i915, regs.hdmiw_hdmiedid,
 			       *((const u32 *)eld + i));
 
-- 
2.35.1

