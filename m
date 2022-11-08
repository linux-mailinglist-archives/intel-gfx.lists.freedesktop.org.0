Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ED8621812
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D6F10E4AA;
	Tue,  8 Nov 2022 15:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8B6510E4B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920993; x=1699456993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E67ikOYq78WFwpcpe0olKcKiS6ll0lsnSAm0LpNz7bY=;
 b=HJw/viSXhHAG+SrPu8ZlNVAIi0Yx/hPdY+LKgeImHXxYMMzhkjRdMbEM
 kaKp8DI7NtjqlZY8srkcthD7TRjOqOWnKsWVZPf/VAmG4xbDqjlWd5RMp
 9VMf8d2Jma+thZU4JcOtkupSaQwW+bD5LT1EbSBrFGzMjCGdrt1b+0dO4
 ng+2m064EzpqIm6uuR8reZ1lzXMqINm8PFdSghfvXV98pd1/UhaoPYinW
 vyJUWdILLTI3RhUNDaBn8RXO9qpsmXEYFC2imhAWJ9ZFGol+E/zSBJxXv
 SNlh4vYNyi/1agXSFXSXxIU/HufIPEwL4guf9frdj85CjgxdtjQY49S5f w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718912"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718912"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590942"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590942"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:38 +0200
Message-Id: <20221108151839.31567-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/15] drm/i915/audio: s/ilk/ibx/
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

Rename the ilk stuff to ibx, as the audio logic lives
in the PCH. The only exception are VLV/CHV but their audio
hardware was stolen from ibx so the name still fits.

Also most of the register defines also use the IBX namespace.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 28 +++++++++++-----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 524fa3f4ebc4..4286f7a7cc76 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -658,13 +658,13 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
-struct ilk_audio_regs {
+struct ibx_audio_regs {
 	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
 };
 
-static void ilk_audio_regs_init(struct drm_i915_private *i915,
+static void ibx_audio_regs_init(struct drm_i915_private *i915,
 				enum pipe pipe,
-				struct ilk_audio_regs *regs)
+				struct ibx_audio_regs *regs)
 {
 	if (HAS_PCH_IBX(i915)) {
 		regs->hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
@@ -684,7 +684,7 @@ static void ilk_audio_regs_init(struct drm_i915_private *i915,
 	}
 }
 
-static void ilk_audio_codec_disable(struct intel_encoder *encoder,
+static void ibx_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
 {
@@ -692,12 +692,12 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
-	struct ilk_audio_regs regs;
+	struct ibx_audio_regs regs;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
 
-	ilk_audio_regs_init(i915, pipe, &regs);
+	ibx_audio_regs_init(i915, pipe, &regs);
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -720,7 +720,7 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	intel_crtc_wait_for_next_vblank(crtc);
 }
 
-static void ilk_audio_codec_enable(struct intel_encoder *encoder,
+static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
 {
@@ -728,14 +728,14 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
-	struct ilk_audio_regs regs;
+	struct ibx_audio_regs regs;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
 
 	intel_crtc_wait_for_next_vblank(crtc);
 
-	ilk_audio_regs_init(i915, pipe, &regs);
+	ibx_audio_regs_init(i915, pipe, &regs);
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -934,9 +934,9 @@ static const struct intel_audio_funcs g4x_audio_funcs = {
 	.audio_codec_get_config = g4x_audio_codec_get_config,
 };
 
-static const struct intel_audio_funcs ilk_audio_funcs = {
-	.audio_codec_enable = ilk_audio_codec_enable,
-	.audio_codec_disable = ilk_audio_codec_disable,
+static const struct intel_audio_funcs ibx_audio_funcs = {
+	.audio_codec_enable = ibx_audio_codec_enable,
+	.audio_codec_disable = ibx_audio_codec_disable,
 	.audio_codec_get_config = intel_acomp_get_config,
 };
 
@@ -955,11 +955,11 @@ void intel_audio_hooks_init(struct drm_i915_private *i915)
 	if (IS_G4X(i915))
 		i915->display.funcs.audio = &g4x_audio_funcs;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		i915->display.funcs.audio = &ilk_audio_funcs;
+		i915->display.funcs.audio = &ibx_audio_funcs;
 	else if (IS_HASWELL(i915) || DISPLAY_VER(i915) >= 8)
 		i915->display.funcs.audio = &hsw_audio_funcs;
 	else if (HAS_PCH_SPLIT(i915))
-		i915->display.funcs.audio = &ilk_audio_funcs;
+		i915->display.funcs.audio = &ibx_audio_funcs;
 }
 
 struct aud_ts_cdclk_m_n {
-- 
2.37.4

