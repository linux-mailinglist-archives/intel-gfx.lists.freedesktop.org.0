Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 948BC60E614
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7692110E60F;
	Wed, 26 Oct 2022 17:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E772210E60A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803756; x=1698339756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HBhyleb8eh41yIN0f1mfEublCkxM9OPxlWj2M6m1HkA=;
 b=KmpNnRpaf6PSb2H+UcsjOEUxMPRAHPBXqs4HHNI48ctPrXEQrst7aMu5
 smp+cL5FIEGFCvGM8O0+9KWHd7VTI5qO4tGiOSyfb7/HxQQqZT+COrXNR
 PIZMxI7ciM1OP1a8+JP5xXDZ6ODZjWZnPp+NmzI8nNyvLKsxlYsLb7G6O
 nfBVhPUMybC1ZO3KfeSAL7mcb2c+RwbQ/FwbvHOkXe+RR9pkdhdXkZhZB
 uZ6ixy6eSW5ofV4TSBTTtzs/aMUvsrHWojoktTAd1HBgPLa/qBZPtR+PG
 fuGWua0aNsR8ZD+1g6OQpuz3v1w+cVdXnJTEPbunXyO2L0i6NEkuAb5ne A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625095"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625095"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090835"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090835"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:46 +0300
Message-Id: <20221026170150.2654-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/audio: Use u32* for ELD
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

Make the eld pointer u32* so we don't have to do super
ugly casting in the code itself.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 56f0d8af313e..f4c319a3003b 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -333,7 +333,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
-	const u8 *eld = connector->eld;
+	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
 	u32 tmp;
 
@@ -342,11 +342,10 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 
 	eld_buffer_size = g4x_eld_buffer_size(i915);
-	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
-		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
-			       *((const u32 *)eld + i));
+		intel_de_write(i915, G4X_HDMIW_HDMIEDID, eld[i]);
 	for (; i < eld_buffer_size; i++)
 		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);
 
@@ -614,7 +613,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	const u8 *eld = connector->eld;
+	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
 	u32 tmp;
 
@@ -643,11 +642,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
 
 	eld_buffer_size = hsw_eld_buffer_size(i915, cpu_transcoder);
-	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
-		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
-			       *((const u32 *)eld + i));
+		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), eld[i]);
 	for (; i < eld_buffer_size; i++)
 		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), 0);
 
@@ -749,9 +747,9 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
+	const u32 *eld = (const u32 *)connector->eld;
 	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
-	const u8 *eld = connector->eld;
 	int eld_buffer_size, len, i;
 	struct ilk_audio_regs regs;
 	u32 tmp;
@@ -781,11 +779,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_write(i915, regs.aud_cntl_st, tmp);
 
 	eld_buffer_size = ilk_eld_buffer_size(i915, pipe);
-	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
+	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
-		intel_de_write(i915, regs.hdmiw_hdmiedid,
-			       *((const u32 *)eld + i));
+		intel_de_write(i915, regs.hdmiw_hdmiedid, eld[i]);
 	for (; i < eld_buffer_size; i++)
 		intel_de_write(i915, regs.hdmiw_hdmiedid, 0);
 
-- 
2.37.4

