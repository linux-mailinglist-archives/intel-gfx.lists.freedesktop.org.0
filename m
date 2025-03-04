Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F43A4DA63
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 11:27:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2220B10E30A;
	Tue,  4 Mar 2025 10:27:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FdiBQfQ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0B110E30A;
 Tue,  4 Mar 2025 10:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741084074; x=1772620074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Fzqv1+ZPy/YxDxHWe65ngBG6Ck63HL4Qwj974I/GlM=;
 b=FdiBQfQ8l5PZo2y7AoRm4hhV33SeCtFIrbiQ0/U6YDTDBqJUSjE4HXrF
 SjiGRXu6yoGThDzMxH3+SKVVU0IPelAXSgucNokkh/Pcxc6M7Nxb3Mf2F
 zSDVeKdBw0LLWol24pXFBCZjUoqzbbpNF8xv/XIUl+TMdaGGtZFcmKOG9
 WP30HLnsSy3fXChQ3p3Li3Kw0zW+ZiYjMtXzK0qI7i7SqcVN+v7Itf4K/
 QeXq4Sbnf1T31Mu+/LclOXaVeIjW9MH7MOkJU6q1rdJiKIVaC95QuGJE9
 RD+pWxKPmA94Ja5OrDUL4sg680EBa0Reor8XLoFld298Stx4Hf0rpWcO9 w==;
X-CSE-ConnectionGUID: M7JYVwwTSoiPW226NLLj4Q==
X-CSE-MsgGUID: NJBXGnBHSVCrrfHD9boxsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52632785"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52632785"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:53 -0800
X-CSE-ConnectionGUID: fhtrEUZPRYqkiCjJRt6LBQ==
X-CSE-MsgGUID: 6IzNrL9MRJW/rObispjG+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118321689"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/display: convert intel_has_pending_fb_unpin() to
 struct intel_display
Date: Tue,  4 Mar 2025 12:27:32 +0200
Message-Id: <d70ad8f9cbba5ee32d985b76047b56996ad4b31e.1741084010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741084010.git.jani.nikula@intel.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main display device data
pointer. The intel_display.[ch] files are too big to convert in one
go. Convert intel_has_pending_fb_unpin() to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.c      |  3 +--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c |  3 ++-
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3b7ec0be9011..676c1826f15c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4660,6 +4660,7 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 	struct intel_connector *connector = hdmi->attached_connector;
@@ -4726,7 +4727,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	 * would be perfectly happy if were to just reconfigure
 	 * the SCDC settings on the fly.
 	 */
-	return intel_modeset_commit_pipes(dev_priv, BIT(crtc->pipe), ctx);
+	return intel_modeset_commit_pipes(display, BIT(crtc->pipe), ctx);
 }
 
 static void intel_ddi_link_check(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index debf9826fd2f..6962bc0da53c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -764,12 +764,12 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
 }
 
-bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv)
+bool intel_has_pending_fb_unpin(struct intel_display *display)
 {
 	struct drm_crtc *crtc;
 	bool cleanup_done;
 
-	drm_for_each_crtc(crtc, &dev_priv->drm) {
+	drm_for_each_crtc(crtc, display->drm) {
 		struct drm_crtc_commit *commit;
 		spin_lock(&crtc->commit_lock);
 		commit = list_first_entry_or_null(&crtc->commit_list,
@@ -5574,7 +5574,7 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_modeset_commit_pipes(struct drm_i915_private *i915,
+int intel_modeset_commit_pipes(struct intel_display *display,
 			       u8 pipe_mask,
 			       struct drm_modeset_acquire_ctx *ctx)
 {
@@ -5582,14 +5582,14 @@ int intel_modeset_commit_pipes(struct drm_i915_private *i915,
 	struct intel_crtc *crtc;
 	int ret;
 
-	state = drm_atomic_state_alloc(&i915->drm);
+	state = drm_atomic_state_alloc(display->drm);
 	if (!state)
 		return -ENOMEM;
 
 	state->acquire_ctx = ctx;
 	to_intel_atomic_state(state)->internal = true;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_crtc_state(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 83a820b72a6e..65245ef04347 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -457,7 +457,7 @@ int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 			   const char *name, u32 reg);
-bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
+bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
@@ -531,7 +531,7 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
 int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 				 const char *reason);
-int intel_modeset_commit_pipes(struct drm_i915_private *i915,
+int intel_modeset_commit_pipes(struct intel_display *display,
 			       u8 pipe_mask,
 			       struct drm_modeset_acquire_ctx *ctx);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 205ec315b413..a236b5fc7a3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5193,7 +5193,6 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 pipe_mask;
 	int ret;
@@ -5224,7 +5223,7 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp->link.force_retrain));
 
-	ret = intel_modeset_commit_pipes(dev_priv, pipe_mask, ctx);
+	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
 	if (ret == -EDEADLK)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 00f7cd6debf3..0c723e7c71a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -328,6 +328,7 @@ static bool fence_is_active(const struct i915_fence_reg *fence)
 
 static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
 {
+	struct intel_display *display = &ggtt->vm.i915->display;
 	struct i915_fence_reg *active = NULL;
 	struct i915_fence_reg *fence, *fn;
 
@@ -353,7 +354,7 @@ static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
 	}
 
 	/* Wait for completion of pending flips which consume fences */
-	if (intel_has_pending_fb_unpin(ggtt->vm.i915))
+	if (intel_has_pending_fb_unpin(display))
 		return ERR_PTR(-EAGAIN);
 
 	return ERR_PTR(-ENOBUFS);
-- 
2.39.5

