Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8057B8454
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9725110E398;
	Wed,  4 Oct 2023 15:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD80E10E391
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696435003; x=1727971003;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FFIfWt+7wbXRPeSRlkVQSIRW/gF3MZp7fIzqF0jWXH0=;
 b=hEVW+Z1wRboDRC5LHcy0zmtSKn0NZguJM3CsaR8aei21hBUz1sjkrjeR
 GiM2XA7xAkA1gJwQkPlTN/VkdA0QCKgZtvRHc/X57ogg8006vJt/ws201
 mNlfkQlo9Lq+duXxDFQNy7dxTxHNTYdItz/BnE5RxDT8KFCBJEzSobFe8
 097EHBsrIicJ5njz8fuPi7kWSQvYhAC3ca5Kjv9UWi4AFJk0BBwNvgApk
 syIns8/mYVW04I7GpbAj7epJO8pG/7Kl5BGjkNJlH2fha/AUtyfNlQIyc
 dHlud+S3j60HmbMiVMM19tZwyX71Cvg+q5OVa675BFjrG4dPBzvfG0Hjl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483813"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483813"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441250"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441250"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:06 +0300
Message-ID: <20231004155607.7719-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: s/pipe_config/crtc_state/ in
 the state checker
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

Switch over to the modern variable naming in the state checker.
Ie. rename the pipe_config stuff to crtc_state.

Also make it clear which is the "software state" (ie. what the
current state should be) vs. "hardware state" (ie. what the
currnet state really is).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_modeset_verify.c   | 56 +++++++++----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 67fe754ac6e5..a55de82fa81f 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -86,14 +86,14 @@ verify_connector_state(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_pipe_config_sanity_check(const struct intel_crtc_state *pipe_config)
+static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(pipe_config->uapi.crtc->dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (pipe_config->has_pch_encoder) {
-		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),
-							    &pipe_config->fdi_m_n);
-		int dotclock = pipe_config->hw.adjusted_mode.crtc_clock;
+	if (crtc_state->has_pch_encoder) {
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),
+							    &crtc_state->fdi_m_n);
+		int dotclock = crtc_state->hw.adjusted_mode.crtc_clock;
 
 		/*
 		 * FDI already provided one idea for the dotclock.
@@ -163,66 +163,66 @@ verify_crtc_state(struct intel_atomic_state *state,
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	const struct intel_crtc_state *new_crtc_state =
+	const struct intel_crtc_state *sw_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_crtc_state *pipe_config;
+	struct intel_crtc_state *hw_crtc_state;
 	struct intel_crtc *master_crtc;
 	struct intel_encoder *encoder;
 
-	pipe_config = intel_crtc_state_alloc(crtc);
-	if (!pipe_config)
+	hw_crtc_state = intel_crtc_state_alloc(crtc);
+	if (!hw_crtc_state)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
 		    crtc->base.name);
 
-	pipe_config->hw.enable = new_crtc_state->hw.enable;
+	hw_crtc_state->hw.enable = sw_crtc_state->hw.enable;
 
-	intel_crtc_get_pipe_config(pipe_config);
+	intel_crtc_get_pipe_config(hw_crtc_state);
 
 	/* we keep both pipes enabled on 830 */
-	if (IS_I830(dev_priv) && pipe_config->hw.active)
-		pipe_config->hw.active = new_crtc_state->hw.active;
+	if (IS_I830(dev_priv) && hw_crtc_state->hw.active)
+		hw_crtc_state->hw.active = sw_crtc_state->hw.active;
 
 	I915_STATE_WARN(dev_priv,
-			new_crtc_state->hw.active != pipe_config->hw.active,
+			sw_crtc_state->hw.active != hw_crtc_state->hw.active,
 			"crtc active state doesn't match with hw state (expected %i, found %i)\n",
-			new_crtc_state->hw.active, pipe_config->hw.active);
+			sw_crtc_state->hw.active, hw_crtc_state->hw.active);
 
-	I915_STATE_WARN(dev_priv, crtc->active != new_crtc_state->hw.active,
+	I915_STATE_WARN(dev_priv, crtc->active != sw_crtc_state->hw.active,
 			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
-			new_crtc_state->hw.active, crtc->active);
+			sw_crtc_state->hw.active, crtc->active);
 
-	master_crtc = intel_master_crtc(new_crtc_state);
+	master_crtc = intel_master_crtc(sw_crtc_state);
 
 	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
 		enum pipe pipe;
 		bool active;
 
 		active = encoder->get_hw_state(encoder, &pipe);
-		I915_STATE_WARN(dev_priv, active != new_crtc_state->hw.active,
+		I915_STATE_WARN(dev_priv, active != sw_crtc_state->hw.active,
 				"[ENCODER:%i] active %i with crtc active %i\n",
 				encoder->base.base.id, active,
-				new_crtc_state->hw.active);
+				sw_crtc_state->hw.active);
 
 		I915_STATE_WARN(dev_priv, active && master_crtc->pipe != pipe,
 				"Encoder connected to wrong pipe %c\n",
 				pipe_name(pipe));
 
 		if (active)
-			intel_encoder_get_config(encoder, pipe_config);
+			intel_encoder_get_config(encoder, hw_crtc_state);
 	}
 
-	if (!new_crtc_state->hw.active)
+	if (!sw_crtc_state->hw.active)
 		return;
 
-	intel_pipe_config_sanity_check(pipe_config);
+	intel_pipe_config_sanity_check(hw_crtc_state);
 
-	if (!intel_pipe_config_compare(new_crtc_state,
-				       pipe_config, false)) {
+	if (!intel_pipe_config_compare(sw_crtc_state,
+				       hw_crtc_state, false)) {
 		I915_STATE_WARN(dev_priv, 1, "pipe state doesn't match!\n");
-		intel_crtc_state_dump(pipe_config, NULL, "hw state");
-		intel_crtc_state_dump(new_crtc_state, NULL, "sw state");
+		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
+		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
 	}
 }
 
-- 
2.41.0

