Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F017810E61
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FAD10E786;
	Wed, 13 Dec 2023 10:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408E610E783
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463137; x=1733999137;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jg5bgqGc75qHAvoFYELdAekf5o9HNu/RYb5E9Jc4yRY=;
 b=JI/bCX2D/EES136nJW2VxgsqZrdX+U+Th9UMuW2RsE74JbsNdCusWCvJ
 s1KX17ncbB/Us0NCLsqe1XbJKrFO0AKLXyPO0lMgzlY50vpmYzod2uuC9
 tW5jZPyla5heh8In1rqHtfDhjM3QiC1dVSZFXc7aVtIj4LbFpLOucuzoQ
 hK8Kkrsk/399SfvzQNUiq9UkIevca8n+twA6sNhN75Lpxk/krUB2/JPFk
 BHH6iIM2rbopspsT9+B0Nqzy6r9TJGdAFdhcKkI9mgp5nY7NBS/0Kjbow
 3pxLMqaAVVscbuigCfLSf/+or5XNPlurt0oNjcN5o4R3dE8IV24R7miaI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816092"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816092"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161651"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161651"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915: Extract intel_vblank_evade()
Date: Wed, 13 Dec 2023 12:25:15 +0200
Message-ID: <20231213102519.13500-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the core vblank evasion loop into its own function,
so that we can reuse it elsewhere later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 135 ++++++++++++----------
 1 file changed, 75 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 92cfb7c8eadb..26a07b2219bf 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -472,6 +472,7 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 }
 
 struct intel_vblank_evade_ctx {
+	struct intel_crtc *crtc;
 	int min, max, vblank_start;
 	bool need_vlv_dsi_wa;
 };
@@ -485,6 +486,8 @@ static void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_stat
 	const struct intel_crtc_state *crtc_state;
 	const struct drm_display_mode *adjusted_mode;
 
+	evade->crtc = crtc;
+
 	evade->need_vlv_dsi_wa = (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
 		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 
@@ -531,67 +534,15 @@ static void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_stat
 		evade->min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
 }
 
-/**
- * intel_pipe_update_start() - start update of a set of display registers
- * @state: the atomic state
- * @crtc: the crtc
- *
- * Mark the start of an update to pipe registers that should be updated
- * atomically regarding vblank. If the next vblank will happens within
- * the next 100 us, this function waits until the vblank passes.
- *
- * After a successful call to this function, interrupts will be disabled
- * until a subsequent call to intel_pipe_update_end(). That is done to
- * avoid random delays.
- */
-void intel_pipe_update_start(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc)
+/* must be called with vblank interrupt already enabled! */
+static int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc *crtc = evade->crtc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	long timeout = msecs_to_jiffies_timeout(1);
-	int scanline;
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
-	struct intel_vblank_evade_ctx evade;
 	DEFINE_WAIT(wait);
-
-	intel_psr_lock(new_crtc_state);
-
-	if (new_crtc_state->do_async_flip) {
-		spin_lock_irq(&crtc->base.dev->event_lock);
-		/* arm the event for the flip done irq handler */
-		crtc->flip_done_event = new_crtc_state->uapi.event;
-		spin_unlock_irq(&crtc->base.dev->event_lock);
-
-		new_crtc_state->uapi.event = NULL;
-		return;
-	}
-
-	if (intel_crtc_needs_vblank_work(new_crtc_state))
-		intel_crtc_vblank_work_init(new_crtc_state);
-
-	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
-	if (evade.min <= 0 || evade.max <= 0)
-		goto irq_disable;
-
-	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
-		goto irq_disable;
-
-	/*
-	 * Wait for psr to idle out after enabling the VBL interrupts
-	 * VBL interrupts will start the PSR exit and prevent a PSR
-	 * re-entry as well.
-	 */
-	intel_psr_wait_for_idle_locked(new_crtc_state);
-
-	local_irq_disable();
-
-	crtc->debug.min_vbl = evade.min;
-	crtc->debug.max_vbl = evade.max;
-	trace_intel_pipe_update_start(crtc);
+	int scanline;
 
 	for (;;) {
 		/*
@@ -602,11 +553,11 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
 
 		scanline = intel_get_crtc_scanline(crtc);
-		if (scanline < evade.min || scanline > evade.max)
+		if (scanline < evade->min || scanline > evade->max)
 			break;
 
 		if (!timeout) {
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Potential atomic update failure on pipe %c\n",
 				pipe_name(crtc->pipe));
 			break;
@@ -636,9 +587,73 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	 *
 	 * FIXME figure out if BXT+ DSI suffers from this as well
 	 */
-	while (evade.need_vlv_dsi_wa && scanline == evade.vblank_start)
+	while (evade->need_vlv_dsi_wa && scanline == evade->vblank_start)
 		scanline = intel_get_crtc_scanline(crtc);
 
+	return scanline;
+}
+
+/**
+ * intel_pipe_update_start() - start update of a set of display registers
+ * @state: the atomic state
+ * @crtc: the crtc
+ *
+ * Mark the start of an update to pipe registers that should be updated
+ * atomically regarding vblank. If the next vblank will happens within
+ * the next 100 us, this function waits until the vblank passes.
+ *
+ * After a successful call to this function, interrupts will be disabled
+ * until a subsequent call to intel_pipe_update_end(). That is done to
+ * avoid random delays.
+ */
+void intel_pipe_update_start(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_vblank_evade_ctx evade;
+	int scanline;
+
+	intel_psr_lock(new_crtc_state);
+
+	if (new_crtc_state->do_async_flip) {
+		spin_lock_irq(&crtc->base.dev->event_lock);
+		/* arm the event for the flip done irq handler */
+		crtc->flip_done_event = new_crtc_state->uapi.event;
+		spin_unlock_irq(&crtc->base.dev->event_lock);
+
+		new_crtc_state->uapi.event = NULL;
+		return;
+	}
+
+	if (intel_crtc_needs_vblank_work(new_crtc_state))
+		intel_crtc_vblank_work_init(new_crtc_state);
+
+	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
+	if (evade.min <= 0 || evade.max <= 0)
+		goto irq_disable;
+
+	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
+		goto irq_disable;
+
+	/*
+	 * Wait for psr to idle out after enabling the VBL interrupts
+	 * VBL interrupts will start the PSR exit and prevent a PSR
+	 * re-entry as well.
+	 */
+	intel_psr_wait_for_idle_locked(new_crtc_state);
+
+	local_irq_disable();
+
+	crtc->debug.min_vbl = evade.min;
+	crtc->debug.max_vbl = evade.max;
+	trace_intel_pipe_update_start(crtc);
+
+	scanline = intel_vblank_evade(&evade);
+
 	drm_crtc_vblank_put(&crtc->base);
 
 	crtc->debug.scanline_start = scanline;
-- 
2.41.0

