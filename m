Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7830760E616
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:03:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B6510E60B;
	Wed, 26 Oct 2022 17:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF2510E622
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803768; x=1698339768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oWH60/bR9NjIBbK292xyNgrIiKqDar4LR+UVBH5z6/Y=;
 b=eFFbESiQ0SNXGwFnSBIiWHMzAQWYw3oJk1WdAuzf6e9j40LXPcG2MUcb
 L+XjxJcpN9r3RRWYrtU3mq0qk4uC2EskzjiuUp/pV5UJzkBAC5zA4CxnA
 Mmn+SxBNiEAx8RpI3T08S8jVujYd7QNJp2WBe3wyLOC1sZEaTqbR/11eU
 jlGO0JtAb6dqV5JD+l7kEdqrVuI8GtSrXQAedER78nEMGtQaU4I+KbFJD
 BxJXwMc6AIfK/fpD3Z+ITYXjPYpSzsBp+BECL3xXAkmjob3g+/mbdCEJh
 W0jvJoMuJAz91p2q4UG2RqrRHLxtzugQFKZva3FH9tDgUW16PPHq9stI2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625178"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625178"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090965"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090965"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:49 +0300
Message-Id: <20221026170150.2654-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915/audio: Do the vblank waits
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
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 31 +++++++++++++---------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index cbc5615f43bf..c3176c9c89a6 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -319,10 +319,14 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
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
@@ -330,10 +334,13 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
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
 
@@ -468,6 +475,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 	mutex_lock(&i915->display.audio.mutex);
@@ -485,6 +493,9 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
+	intel_crtc_wait_for_next_vblank(crtc);
+	intel_crtc_wait_for_next_vblank(crtc);
+
 	/* Disable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
@@ -606,6 +617,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u32 *eld = (const u32 *)connector->eld;
@@ -621,17 +633,12 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -729,6 +736,9 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 		     IBX_ELD_VALID(port), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
+
+	intel_crtc_wait_for_next_vblank(crtc);
+	intel_crtc_wait_for_next_vblank(crtc);
 }
 
 static void ilk_audio_codec_enable(struct intel_encoder *encoder,
@@ -747,12 +757,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
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
2.37.4

