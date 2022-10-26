Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0457D60E618
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B712F10E61C;
	Wed, 26 Oct 2022 17:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EB410E5FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803749; x=1698339749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o6tKzCa76fKgQjQZ8Y1eYGE8NxTFn8WHXk0WQMS+X9s=;
 b=Bmqy0xcW89wonUFJFHDj/55IHnorU/PY3n5R8+Yo0svvQ89rBFObrL5/
 y36f3rs1PT/+7gl1brmFtaXu9SuTL/k7y6pEzWpcWMAcAjNcDYrr645YM
 u4JUJODge4IApejv1gnaEu0U3xtVcENL0IAhv/mf2Mtlp6/0Z5RjLD5D8
 Rl+ZdQCaZzDLoU7qBQH2ssB7QrTuubo+nTrvU/gvJdIp65Ehw4G3SOWmc
 TTksNvAEDcdgQ5yarl3vTevaqJRUlQnkV+/TCctHsjJJH6GtdpFKWRptp
 WNEmIwiNSnDHJPI8Yr/OECFn0ZxNc8BXMj/MkTNdIwYV94ImXUyUajQsf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625030"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625030"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090721"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:44 +0300
Message-Id: <20221026170150.2654-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/audio: Read ELD buffer size from
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
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

v2: Document the size is in dwords (Jani)

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 52 +++++++++++++++++++---
 1 file changed, 45 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 7867eb670560..60b44bcaa0e4 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -304,6 +304,16 @@ static int audio_config_hdmi_get_n(const struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+/* ELD buffer size in dwords */
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
@@ -329,10 +339,11 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 
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
@@ -442,6 +453,17 @@ hsw_audio_config_update(struct intel_encoder *encoder,
 		hsw_hdmi_audio_config_update(encoder, crtc_state);
 }
 
+/* ELD buffer size in dwords */
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
@@ -615,9 +637,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
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
 
@@ -658,6 +681,20 @@ static void ilk_audio_regs_init(struct drm_i915_private *i915,
 	}
 }
 
+/* ELD buffer size in dwords */
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
@@ -732,9 +769,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
2.37.4

