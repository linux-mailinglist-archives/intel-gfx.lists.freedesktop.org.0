Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB377B8455
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D8F10E395;
	Wed,  4 Oct 2023 15:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D1F10E399
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696435006; x=1727971006;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=auM2rNzBpvbr16YrVoFZk9q4AhvKAutp2PFRn5ccN2E=;
 b=meW8XjxAGNxckijgPDUsRKDnmeOfHyXN5kCSOAEhNufpCDyDD8S+Qn9R
 fmirXLCX08Axducg9Eh4ox479uErgpt0fWV4pNiYCHaZTvdlhZuBLMsid
 2YBi6hpkq5HPIjNH1sEeldUNwnv+OAsTmoLiTm/tbwOxzqDa3FbgzBzEu
 UWzZRrDi1YXgrJL3Q1U52dUNKEzemExT1mS5KeWMalPJ0328v1VJZx3y4
 wYMhXkJ9TXVnYDL9bQl345b+EOr5RIJdqeF8OVk4V78PJHyVfCZgHoUMV
 uCK4sttzSs34zorl/0lL208Oxf8lir+v1hV2tPFKO5/Ku3v2H+Y6YaTKA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483821"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483821"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441269"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441269"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:07 +0300
Message-ID: <20231004155607.7719-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/12] drm/i915: s/dev_priv/i915/ in the state
 checker
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Switch the state checker over to using the new 'i915' variable
name insteda of the old 'dev_priv'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_modeset_verify.c   | 34 +++++++++----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index a55de82fa81f..f417493e3e17 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -88,10 +88,10 @@ verify_connector_state(struct intel_atomic_state *state,
 
 static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->has_pch_encoder) {
-		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(i915, crtc_state),
 							    &crtc_state->fdi_m_n);
 		int dotclock = crtc_state->hw.adjusted_mode.crtc_clock;
 
@@ -100,7 +100,7 @@ static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_s
 		 * Yell if the encoder disagrees. Allow for slight
 		 * rounding differences.
 		 */
-		drm_WARN(&dev_priv->drm, abs(fdi_dotclock - dotclock) > 1,
+		drm_WARN(&i915->drm, abs(fdi_dotclock - dotclock) > 1,
 			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
 			 fdi_dotclock, dotclock);
 	}
@@ -109,17 +109,17 @@ static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_s
 static void
 verify_encoder_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_encoder *encoder;
 	struct drm_connector *connector;
 	const struct drm_connector_state *old_conn_state, *new_conn_state;
 	int i;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(&i915->drm, encoder) {
 		bool enabled = false, found = false;
 		enum pipe pipe;
 
-		drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s]\n",
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s]\n",
 			    encoder->base.base.id,
 			    encoder->base.name);
 
@@ -134,7 +134,7 @@ verify_encoder_state(struct intel_atomic_state *state)
 			found = true;
 			enabled = true;
 
-			I915_STATE_WARN(dev_priv,
+			I915_STATE_WARN(i915,
 					new_conn_state->crtc != encoder->base.crtc,
 					"connector's crtc doesn't match encoder crtc\n");
 		}
@@ -142,7 +142,7 @@ verify_encoder_state(struct intel_atomic_state *state)
 		if (!found)
 			continue;
 
-		I915_STATE_WARN(dev_priv, !!encoder->base.crtc != enabled,
+		I915_STATE_WARN(i915, !!encoder->base.crtc != enabled,
 				"encoder's enabled state mismatch (expected %i, found %i)\n",
 				!!encoder->base.crtc, enabled);
 
@@ -150,7 +150,7 @@ verify_encoder_state(struct intel_atomic_state *state)
 			bool active;
 
 			active = encoder->get_hw_state(encoder, &pipe);
-			I915_STATE_WARN(dev_priv, active,
+			I915_STATE_WARN(i915, active,
 					"encoder detached but still enabled on pipe %c.\n",
 					pipe_name(pipe));
 		}
@@ -162,7 +162,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 		  struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	const struct intel_crtc_state *sw_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc_state *hw_crtc_state;
@@ -173,7 +173,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 	if (!hw_crtc_state)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
 		    crtc->base.name);
 
 	hw_crtc_state->hw.enable = sw_crtc_state->hw.enable;
@@ -181,15 +181,15 @@ verify_crtc_state(struct intel_atomic_state *state,
 	intel_crtc_get_pipe_config(hw_crtc_state);
 
 	/* we keep both pipes enabled on 830 */
-	if (IS_I830(dev_priv) && hw_crtc_state->hw.active)
+	if (IS_I830(i915) && hw_crtc_state->hw.active)
 		hw_crtc_state->hw.active = sw_crtc_state->hw.active;
 
-	I915_STATE_WARN(dev_priv,
+	I915_STATE_WARN(i915,
 			sw_crtc_state->hw.active != hw_crtc_state->hw.active,
 			"crtc active state doesn't match with hw state (expected %i, found %i)\n",
 			sw_crtc_state->hw.active, hw_crtc_state->hw.active);
 
-	I915_STATE_WARN(dev_priv, crtc->active != sw_crtc_state->hw.active,
+	I915_STATE_WARN(i915, crtc->active != sw_crtc_state->hw.active,
 			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
 			sw_crtc_state->hw.active, crtc->active);
 
@@ -200,12 +200,12 @@ verify_crtc_state(struct intel_atomic_state *state,
 		bool active;
 
 		active = encoder->get_hw_state(encoder, &pipe);
-		I915_STATE_WARN(dev_priv, active != sw_crtc_state->hw.active,
+		I915_STATE_WARN(i915, active != sw_crtc_state->hw.active,
 				"[ENCODER:%i] active %i with crtc active %i\n",
 				encoder->base.base.id, active,
 				sw_crtc_state->hw.active);
 
-		I915_STATE_WARN(dev_priv, active && master_crtc->pipe != pipe,
+		I915_STATE_WARN(i915, active && master_crtc->pipe != pipe,
 				"Encoder connected to wrong pipe %c\n",
 				pipe_name(pipe));
 
@@ -220,7 +220,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 
 	if (!intel_pipe_config_compare(sw_crtc_state,
 				       hw_crtc_state, false)) {
-		I915_STATE_WARN(dev_priv, 1, "pipe state doesn't match!\n");
+		I915_STATE_WARN(i915, 1, "pipe state doesn't match!\n");
 		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
 		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
 	}
-- 
2.41.0

