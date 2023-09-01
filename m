Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0D578FE06
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EBE10E7C9;
	Fri,  1 Sep 2023 13:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69FC10E7C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573501; x=1725109501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B+F2nD/KyUIWASdn7EN9Px6yxnH8QEMei6XzE5hKSr0=;
 b=LJncfwOvZuDiN3FoMBmJHvq34oqNGzakbIhvslqSTfxMgXvGkmqjUK0x
 kbRVrmklsrCmpltTpVyrT23ONUFoZI7zOfqQbKKAc+ak+35qwEkoCAWO/
 lqoSB5Mhh7bmkJMB6no+9X2Ddc9hTsHcnaBt0ZqsVRFw2HF4MMZEOyDs1
 gCL0VaAQSho1s3u6AtDhOLwghmvThC+JyMLkkNxTQ3i3XNuf6kIXTtwO2
 vWMpAgle55Nm7AhDFKV4zKsSKVDKeMT4larqXAQSAORtUYutPmqpGTsN7
 x7hBlRrc0OXDuyh1ZyT8dQlEhGhLS7PEEzXsNky1eGoTiAIsWhSxATrci A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240584"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240584"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774994823"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774994823"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:04:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:04:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:32 +0300
Message-ID: <20230901130440.2085-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Enable VRR later during fastsets
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

In order to reconcile seamless M/N updates with VRR we'll
need to defer the fastset VRR enable to happen after the
seamless M/N update (which happens during the vblank evade
critical section). So just push the VRR enable to be the last
thing during the update.

This will also affect the vblank evasion as the transcoder
will now still be running with the old VRR state during
the vblank evasion. So just grab the timings always from the
old crtc state during any non-modeset commit, and also grab
the current state of VRR from the active timings (as we disable
VRR before vblank evasion during fastsets).

This also fixes vblank evasion for seamless M/N updates as
we now properly account for the fact that the M/N update
happens after vblank evasion.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 35 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++----
 2 files changed, 36 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index e46a15d59d79..1992e7060263 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -472,15 +472,31 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
 					      struct intel_crtc *crtc,
 					      int *min, int *max, int *vblank_start)
 {
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
+	const struct intel_crtc_state *crtc_state;
+	const struct drm_display_mode *adjusted_mode;
 
-	if (new_crtc_state->vrr.enable) {
-		if (intel_vrr_is_push_sent(new_crtc_state))
-			*vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
+	/*
+	 * During fastsets/etc. the transcoder is still
+	 * running with the old timings at this point.
+	 *
+	 * TODO: maybe just use the active timings here?
+	 */
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		crtc_state = new_crtc_state;
+	else
+		crtc_state = old_crtc_state;
+
+	adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
+		if (intel_vrr_is_push_sent(crtc_state))
+			*vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		else
-			*vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
+			*vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 	} else {
 		*vblank_start = intel_mode_vblank_start(adjusted_mode);
 	}
@@ -710,15 +726,6 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 */
 	intel_vrr_send_push(new_crtc_state);
 
-	/*
-	 * Seamless M/N update may need to update frame timings.
-	 *
-	 * FIXME Should be synchronized with the start of vblank somehow...
-	 */
-	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
-		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
-
 	local_irq_enable();
 
 	if (intel_vgpu_active(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cfad967b5684..632f1f58df9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6476,6 +6476,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -6487,6 +6489,9 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    !intel_crtc_needs_modeset(new_crtc_state))
 		skl_detach_scalers(new_crtc_state);
+
+	if (vrr_enabling(old_crtc_state, new_crtc_state))
+		intel_vrr_enable(new_crtc_state);
 }
 
 static void intel_enable_crtc(struct intel_atomic_state *state,
@@ -6527,12 +6532,6 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 			intel_dpt_configure(crtc);
 	}
 
-	if (vrr_enabling(old_crtc_state, new_crtc_state)) {
-		intel_vrr_enable(new_crtc_state);
-		intel_crtc_update_active_timings(new_crtc_state,
-						 new_crtc_state->vrr.enable);
-	}
-
 	if (!modeset) {
 		if (new_crtc_state->preload_luts &&
 		    intel_crtc_needs_color_update(new_crtc_state))
@@ -6569,6 +6568,16 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	intel_pipe_update_end(state, crtc);
 
+	/*
+	 * VRR/Seamless M/N update may need to update frame timings.
+	 *
+	 * FIXME Should be synchronized with the start of vblank somehow...
+	 */
+	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	    (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state)))
+		intel_crtc_update_active_timings(new_crtc_state,
+						 new_crtc_state->vrr.enable);
+
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
 	 * CRTC enable sequence during modesets.  But when we inherit a
-- 
2.41.0

