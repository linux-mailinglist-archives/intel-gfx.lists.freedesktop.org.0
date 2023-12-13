Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24E9810E5E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FB010E779;
	Wed, 13 Dec 2023 10:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5432C10E779
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463131; x=1733999131;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Us1tnIX68I9fYT6zwqKMwIUJY8dKjXouz9j8pzqb+pU=;
 b=njYd8lIFHz6CTDToW0B05znKI3Pw59p4Aj0x/h4rNo69SCQPDNqVhF2z
 PHv06xnFrEKYBKox//kfMVCJuSNcA/TYm9/AheKomYgo+vmai9CrZuWwj
 hGQaQzZw0QX/0isDrHeq+/WXs5JtUuDZhRcdhHGj9rvRTxrethegAZCt5
 B7nQ+kfyRKkRVJnb9kBgviyykbrXh85KtBLDmO0ziMa/3oz6PPsH+TItk
 tY9DRnVdFbKsqTqYUDZ+wvd/A/9VGaeLgeegyEftIbQ3Q5G5keahHmpGr
 jnLjHkNtHt3zclqYSLTb7THx3ctzbPFTc42lggXDV42P4TP0mge5lNJpg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816082"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816082"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161648"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915: Introduce struct intel_vblank_evade_ctx
Date: Wed, 13 Dec 2023 12:25:13 +0200
Message-ID: <20231213102519.13500-4-ville.syrjala@linux.intel.com>
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

Collect the information needed for vblank evasions into
a structure that we can pass around more easily.

And let's rename intel_crtc_vblank_evade_scanlines() to just
intel_vblank_evade_init() so that better describes the intended
usage of initializing the context.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 40 +++++++++++++----------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 4df8927bb062..93474fc9e502 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -471,9 +471,13 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 	return vblank_start;
 }
 
-static void intel_crtc_vblank_evade_scanlines(const struct intel_crtc_state *old_crtc_state,
-					      const struct intel_crtc_state *new_crtc_state,
-					      int *min, int *max, int *vblank_start)
+struct intel_vblank_evade_ctx {
+	int min, max, vblank_start;
+};
+
+static void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
+				    const struct intel_crtc_state *new_crtc_state,
+				    struct intel_vblank_evade_ctx *evade)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	const struct intel_crtc_state *crtc_state;
@@ -498,17 +502,17 @@ static void intel_crtc_vblank_evade_scanlines(const struct intel_crtc_state *old
 			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
 
 		if (intel_vrr_is_push_sent(crtc_state))
-			*vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		else
-			*vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 	} else {
-		*vblank_start = intel_mode_vblank_start(adjusted_mode);
+		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
 	}
 
 	/* FIXME needs to be calibrated sensibly */
-	*min = *vblank_start - intel_usecs_to_scanlines(adjusted_mode,
-							VBLANK_EVASION_TIME_US);
-	*max = *vblank_start - 1;
+	evade->min = evade->vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+								VBLANK_EVASION_TIME_US);
+	evade->max = evade->vblank_start - 1;
 
 	/*
 	 * M/N and TRANS_VTOTAL are double buffered on the transcoder's
@@ -519,7 +523,7 @@ static void intel_crtc_vblank_evade_scanlines(const struct intel_crtc_state *old
 	 * hence we must kick off the commit before that.
 	 */
 	if (new_crtc_state->dsb || new_crtc_state->update_m_n || new_crtc_state->update_lrr)
-		*min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+		evade->min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
 }
 
 /**
@@ -544,10 +548,11 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	long timeout = msecs_to_jiffies_timeout(1);
-	int scanline, min, max, vblank_start;
+	int scanline;
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
 	bool need_vlv_dsi_wa = (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
+	struct intel_vblank_evade_ctx evade;
 	DEFINE_WAIT(wait);
 
 	intel_psr_lock(new_crtc_state);
@@ -565,9 +570,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
-	intel_crtc_vblank_evade_scanlines(old_crtc_state, new_crtc_state,
-					  &min, &max, &vblank_start);
-	if (min <= 0 || max <= 0)
+	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
+	if (evade.min <= 0 || evade.max <= 0)
 		goto irq_disable;
 
 	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
@@ -582,8 +586,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	local_irq_disable();
 
-	crtc->debug.min_vbl = min;
-	crtc->debug.max_vbl = max;
+	crtc->debug.min_vbl = evade.min;
+	crtc->debug.max_vbl = evade.max;
 	trace_intel_pipe_update_start(crtc);
 
 	for (;;) {
@@ -595,7 +599,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
 
 		scanline = intel_get_crtc_scanline(crtc);
-		if (scanline < min || scanline > max)
+		if (scanline < evade.min || scanline > evade.max)
 			break;
 
 		if (!timeout) {
@@ -629,7 +633,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	 *
 	 * FIXME figure out if BXT+ DSI suffers from this as well
 	 */
-	while (need_vlv_dsi_wa && scanline == vblank_start)
+	while (need_vlv_dsi_wa && scanline == evade.vblank_start)
 		scanline = intel_get_crtc_scanline(crtc);
 
 	drm_crtc_vblank_put(&crtc->base);
-- 
2.41.0

