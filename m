Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 306225FB8D0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1567C10E8CA;
	Tue, 11 Oct 2022 17:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B6610E8A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507679; x=1697043679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yQ1tGQKzbV1jMe8ClmSQlQ/J+f+dm2oBE+hGpnJwMlw=;
 b=mPjYJJH53wG/qp2NXgsDxc82p/uEmiZFfl11AvNeyPGtMpyXPsEWRU2R
 4rLCKSrb7mapUfZBPrh3NWHH77lXGrrDtYaXE+/hYpfS0IAPm2qm8w0fQ
 Gq+1htqV0qHPVWfZbq/CvwgJm1hZ+VuCcMyIVWHlPtiVrWm05vTuauoWk
 sWtYQAs/RkCr+erYA1RyVB51bjtRRiyQL/74TnR+Ip2/jCekVch5KtiBo
 sMxNHve7I7JTGKCY7+zXlfLlXZNfgE5L36kZwzKYVf6qyDRCSXrxGDvKH
 Ekc5ZYwCFzPSurpVOycb7Dd60kzeJWO1ShSKX9I7LD2wxhBjQjHaP7U9/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178085"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178085"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771618"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771618"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:03 +0300
Message-Id: <20221011170011.17198-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/22] drm/i915/audio: Do the vblank waits
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

The spec tells us to do a bunch of vblank waits in the audio
enable/disable sequences. Make it so.

The FIXMEs are nonsense since we do the audio disable very
early and enable very late, so vblank interrupts are in fact
enabled when we do this.

TODO not sure we actually want these since we don't even rely
on the hw ELD buffer, and these might be there just to give
the audio side a bit of time to respond to the unsol events.
OTOH they might be really needed for some other reason.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 31 +++++++++++++---------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 0a1ba10fc20d..4eb5589a0f89 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -318,10 +318,14 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 
 	/* Invalidate ELD */
 	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
 		     G4X_ELD_VALID, 0);
+
+	intel_crtc_wait_for_next_vblank(crtc);
+	intel_crtc_wait_for_next_vblank(crtc);
 }
 
 static void g4x_audio_codec_enable(struct intel_encoder *encoder,
@@ -329,10 +333,13 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	const u32 *eld = (const u32 *)connector->eld;
 	int eld_buffer_size, len, i;
 
+	intel_crtc_wait_for_next_vblank(crtc);
+
 	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
 		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
 
@@ -466,6 +473,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 	mutex_lock(&i915->display.audio.mutex);
@@ -483,6 +491,9 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
+	intel_crtc_wait_for_next_vblank(crtc);
+	intel_crtc_wait_for_next_vblank(crtc);
+
 	/* Disable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
@@ -604,6 +615,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u32 *eld = (const u32 *)connector->eld;
@@ -619,17 +631,12 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
 
+	intel_crtc_wait_for_next_vblank(crtc);
+
 	/* Invalidate ELD */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
-	/*
-	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
-	 * disabled during the mode set. The proper fix would be to push the
-	 * rest of the setup into a vblank work item, queued here, but the
-	 * infrastructure is not there yet.
-	 */
-
 	/* Reset ELD address */
 	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
 		     IBX_ELD_ADDRESS_MASK, 0);
@@ -726,6 +733,9 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 		     IBX_ELD_VALID(port), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
+
+	intel_crtc_wait_for_next_vblank(crtc);
+	intel_crtc_wait_for_next_vblank(crtc);
 }
 
 static void ilk_audio_codec_enable(struct intel_encoder *encoder,
@@ -744,12 +754,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
 		return;
 
-	/*
-	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
-	 * disabled during the mode set. The proper fix would be to push the
-	 * rest of the setup into a vblank work item, queued here, but the
-	 * infrastructure is not there yet.
-	 */
+	intel_crtc_wait_for_next_vblank(crtc);
 
 	ilk_audio_regs_init(i915, pipe, &regs);
 
-- 
2.35.1

