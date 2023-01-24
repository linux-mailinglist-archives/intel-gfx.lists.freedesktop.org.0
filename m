Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C33679C5F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B231A10E692;
	Tue, 24 Jan 2023 14:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D838F10E049
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571643; x=1706107643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZhTyQoMkqGeE/9Moj99HeZe4PTTYSb5CrvdRvVpIPrU=;
 b=N+SoFjRWMMrrYlVzVpLJn0D7t72ABXRjsb4k4INo9kMtpWOOi2f3DcDJ
 CkIM0gCA/ngKbVDH0yrv3b8tI0N1kbspAxr0OXzvAIFiO5LeQijKeuWnP
 BnucR/PhJJDluahjzVbIWxwU1D4Fl6wai4RFWmhIarXA00WoOrY5SLVbB
 8InPIkeZS1it775mD1oG2bHBzldvcvziW+BsUUbN+1bBLJ4RwmEXFYPJA
 MvIXqHH5FmeIyHkYFxNj/aTZpjLQg5OJTKe4A7cwFhBqtj8pLqVb+raYy
 6oXZEgMU1n44eSHtSOuDvcHcOtlqfaM1QUgdOnf3AT5CATLDl+xko82G7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538985"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538985"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602711"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602711"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:47:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:47:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:27 +0200
Message-Id: <20230124144628.4649-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/13] drm/i915/audio: s/ilk/ibx/
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
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 28 +++++++++++-----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f7b460a9c76e..99a3ed84dac9 100644
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
 
@@ -945,9 +945,9 @@ static const struct intel_audio_funcs g4x_audio_funcs = {
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
 
@@ -966,11 +966,11 @@ void intel_audio_hooks_init(struct drm_i915_private *i915)
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
2.39.1

