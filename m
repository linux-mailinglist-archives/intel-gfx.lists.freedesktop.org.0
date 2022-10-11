Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E07D75FB8C8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3723810E8AD;
	Tue, 11 Oct 2022 17:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4330710E8D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507659; x=1697043659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qfi9xfYldVAmU7Y5dt8p6a6vTe9qcUc3qUxS3fCiEuU=;
 b=kOeQ6vue53iHxRy9w02QrtMfEo/XNTbwNzRNyY2vDMn1tBAaIq6Hwtog
 uiaQcqnLt4gBDXcaV+Lrm05bgJLFYMsKEhLIlNWIzOa+wfSReePPSRYbV
 2c6lhTl1XenUja5tUGTyEcNT4t1n648UW7oms/ajVoURxjczhh3ExCRyE
 FlYBvW1IXNWMuzA9tuxLNwLc8Si7oKKBQ4cBaGn4XASiXkGoVaEGeIkLg
 DOmYX8DIy74B0hZWxXOJnGIln0RSdFBHQEETt6rEDtmH2GSgrn9YJ/M/b
 wcJO2cwdtwXecC8o3V9t7TWyp9JR9/OSxDqcSJSe98+g7AxCfPYsZFFuS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="390872069"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390872069"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475741"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475741"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:00 +0300
Message-Id: <20221011170011.17198-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/22] drm/i915/audio: Use u32* for ELD
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

Make the eld pointer u32* so we don't have to do super
ugly casting in the code itself.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index d2f9c4c29061..9f64f52f895f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -332,7 +332,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
-	const u8 *eld = connector->eld;
+	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
 	u32 tmp;
 
@@ -341,11 +341,10 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
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
 
@@ -612,7 +611,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	const u8 *eld = connector->eld;
+	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
 	u32 tmp;
 
@@ -641,11 +640,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
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
 
@@ -746,9 +744,9 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -778,11 +776,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
2.35.1

