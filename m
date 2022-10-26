Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C423260E619
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9B610E620;
	Wed, 26 Oct 2022 17:03:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC8110E60A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803752; x=1698339752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PtKDgc62zZIbvDrK+Lj7KkeYAm/4txyL3UaKNPM/ff0=;
 b=ClzLVkNHDfXB1+MrlfzpsXU9D7gKKrKmiwo1aOjFEwX1XKLHNrsVDuUs
 396d0jbmjTmWJXxO1DR8tBzRzDZgDK7jLWoRf3j0XJpCM4pnN6oT0MuPe
 fYtkTRhPnV6yOJzjfWZBSL3UNjZZV+E7qOtgef+23mT2BhyWi88T8BSab
 Cqmv3rJDBNg2bkg9ioghWGfjHdKunMKiCiuMBacItHrcqzFtqLQiQJ2Tu
 8MTSe0SZKGPdW4M8CkSY/o0e8KELd89iHZxtltWeyXW3ayJ6NJYE4GwZ0
 vL5QeMpaNDryq3iLzqxRv10xNf9YxK/mMaCLr0Qod9YwzfvcZuJ7X2bN/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625059"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625059"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090781"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:45 +0300
Message-Id: <20221026170150.2654-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915/audio: Make sure we write the
 whole ELD buffer
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

Currently we only write as many dwords into the hardware
ELD buffers as drm_eld_size() tells us. That could mean the
remainder of the hardware buffer is left with whatever
stale garbage it had before, which doesn't seem entirely
great. Let's zero out the remainder of the buffer in case
the provided ELD doesn't fill it fully.

We can also sanity check out idea of the hardware ELD buffer's
size by making sure the address wrapped back to zero once
we wrote the entire buffer.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 34 ++++++++++++++++------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 60b44bcaa0e4..56f0d8af313e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -334,19 +334,24 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	const u8 *eld = connector->eld;
+	int eld_buffer_size, len, i;
 	u32 tmp;
-	int len, i;
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp &= ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 
-	len = g4x_eld_buffer_size(i915);
-	len = min(drm_eld_size(eld) / 4, len);
+	eld_buffer_size = g4x_eld_buffer_size(i915);
+	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
 			       *((const u32 *)eld + i));
+	for (; i < eld_buffer_size; i++)
+		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);
+
+	drm_WARN_ON(&i915->drm,
+		    (intel_de_read(i915, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) != 0);
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp |= G4X_ELD_VALID;
@@ -610,8 +615,8 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u8 *eld = connector->eld;
+	int eld_buffer_size, len, i;
 	u32 tmp;
-	int len, i;
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -637,12 +642,18 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
 	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
 
-	len = hsw_eld_buffer_size(i915, cpu_transcoder);
-	len = min(drm_eld_size(eld) / 4, len);
+	eld_buffer_size = hsw_eld_buffer_size(i915, cpu_transcoder);
+	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
 			       *((const u32 *)eld + i));
+	for (; i < eld_buffer_size; i++)
+		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), 0);
+
+	drm_WARN_ON(&i915->drm,
+		    (intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder)) &
+		     IBX_ELD_ADDRESS_MASK) != 0);
 
 	/* ELD valid */
 	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
@@ -741,8 +752,8 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	enum pipe pipe = crtc->pipe;
 	enum port port = encoder->port;
 	const u8 *eld = connector->eld;
+	int eld_buffer_size, len, i;
 	struct ilk_audio_regs regs;
-	int len, i;
 	u32 tmp;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
@@ -769,12 +780,17 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	tmp &= ~IBX_ELD_ADDRESS_MASK;
 	intel_de_write(i915, regs.aud_cntl_st, tmp);
 
-	len = ilk_eld_buffer_size(i915, pipe);
-	len = min(drm_eld_size(eld) / 4, len);
+	eld_buffer_size = ilk_eld_buffer_size(i915, pipe);
+	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
 
 	for (i = 0; i < len; i++)
 		intel_de_write(i915, regs.hdmiw_hdmiedid,
 			       *((const u32 *)eld + i));
+	for (; i < eld_buffer_size; i++)
+		intel_de_write(i915, regs.hdmiw_hdmiedid, 0);
+
+	drm_WARN_ON(&i915->drm,
+		    (intel_de_read(i915, regs.aud_cntl_st) & IBX_ELD_ADDRESS_MASK) != 0);
 
 	/* ELD valid */
 	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
-- 
2.37.4

