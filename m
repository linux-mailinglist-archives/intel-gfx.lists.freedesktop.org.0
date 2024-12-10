Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5934E9EBB95
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4F310E974;
	Tue, 10 Dec 2024 21:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N4tykMgM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC90B10E974
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865038; x=1765401038;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zBktAs00ETIvCf24NO+7CX+8HB3SZlWem0437tBFud4=;
 b=N4tykMgMeQtfQQHthNng0LKBE4yQoNR51yuiOV7taWFmtK+x8+V+tzqt
 LRjjXcHVFbU2wtXip51LKMtjUrRoPfzna7QC5aRax0ttqd8KX2w/TRaJr
 /fseNbTtQ2o4XgltBE91k72u+mm66VzDSAeTf0nJZ8wtq31ZbTovgKxXW
 vXv7Ck88KXUo2I8ns17TlV4Y7pFAy53wnUdk2tMyXLvKsTFhUX4Yg8bWj
 mEawwUlTkGPmzwO9fkFzEJDaUNtx1Z8grhS91afmoZzD7xt/hjkDg12fH
 86bsQEykmCMhp0r0Mhyz8SnqZoxRDen14py7Ma/tR+nEEh7GrIvrGrpJY Q==;
X-CSE-ConnectionGUID: fFkIBtyBTdu5roScsByoqQ==
X-CSE-MsgGUID: iN+MdH9LRXqpiAcSwRNN9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620199"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620199"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:38 -0800
X-CSE-ConnectionGUID: nCJdGr+fQ+uMefKeRmwomA==
X-CSE-MsgGUID: K4jroIAUTcqM/Dug4pEjgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735117"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/18] drm/i915: Consolidate intel_pre_commit_crtc_state()
Date: Tue, 10 Dec 2024 23:09:59 +0200
Message-ID: <20241210211007.5976-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

We have approximately two copies of pre_commit_crtc_state(),
one in the DSB code, the other in the vblank evasion code.
Combine them into one. The slight difference between the two
is that vblank evasion doesn't have a full atomic state (when
called from the legacy cursor code), so it gets the old and
new crtc state passed in by hand.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 37 +++++++-------------
 drivers/gpu/drm/i915/display/intel_vblank.c | 38 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_vblank.h |  5 +++
 3 files changed, 45 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index d755825edb35..673f75703785 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -109,25 +109,6 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
 }
 
-static const struct intel_crtc_state *
-pre_commit_crtc_state(struct intel_atomic_state *state,
-		      struct intel_crtc *crtc)
-{
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-
-	/*
-	 * During fastsets/etc. the transcoder is still
-	 * running with the old timings at this point.
-	 */
-	if (intel_crtc_needs_modeset(new_crtc_state))
-		return new_crtc_state;
-	else
-		return old_crtc_state;
-}
-
 static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
 	return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
@@ -136,7 +117,8 @@ static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
 static int dsb_vtotal(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
-	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
 
 	if (pre_commit_is_vrr_active(state, crtc))
 		return intel_vrr_vmax_vtotal(crtc_state);
@@ -147,7 +129,8 @@ static int dsb_vtotal(struct intel_atomic_state *state,
 static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
-	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	unsigned int latency = skl_watermark_max_latency(i915, 0);
 
@@ -158,7 +141,8 @@ static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
 static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
-	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
 
 	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
 }
@@ -166,7 +150,8 @@ static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
 static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc, int scanline)
 {
-	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
 	int vtotal = dsb_vtotal(state, crtc);
 
 	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
@@ -531,7 +516,8 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 			    struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
-	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
 	/* FIXME calibrate sensibly */
 	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
 	int vblank_delay = dsb_vblank_delay(crtc_state);
@@ -623,7 +609,8 @@ void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
 				 struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
-	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
 	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
 					     dsb_vblank_delay(crtc_state)) + 1;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index ee33a49d9873..3cf3cff0687a 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -602,6 +602,32 @@ int intel_mode_vblank_delay(const struct drm_display_mode *mode)
 	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
 }
 
+static const struct intel_crtc_state *
+pre_commit_crtc_state(const struct intel_crtc_state *old_crtc_state,
+		      const struct intel_crtc_state *new_crtc_state)
+{
+	/*
+	 * During fastsets/etc. the transcoder is still
+	 * running with the old timings at this point.
+	 */
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		return new_crtc_state;
+	else
+		return old_crtc_state;
+}
+
+const struct intel_crtc_state *
+intel_pre_commit_crtc_state(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	return pre_commit_crtc_state(old_crtc_state, new_crtc_state);
+}
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
@@ -617,16 +643,8 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 				  display->platform.cherryview) &&
 		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 
-	/*
-	 * During fastsets/etc. the transcoder is still
-	 * running with the old timings at this point.
-	 *
-	 * TODO: maybe just use the active timings here?
-	 */
-	if (intel_crtc_needs_modeset(new_crtc_state))
-		crtc_state = new_crtc_state;
-	else
-		crtc_state = old_crtc_state;
+	/* TODO: maybe just use the active timings here? */
+	crtc_state = pre_commit_crtc_state(old_crtc_state, new_crtc_state);
 
 	adjusted_mode = &crtc_state->hw.adjusted_mode;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 12c8e1f829a4..21fbb08d61d5 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -11,6 +11,7 @@
 
 struct drm_crtc;
 struct drm_display_mode;
+struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 
@@ -43,4 +44,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable);
 int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state);
 
+const struct intel_crtc_state *
+intel_pre_commit_crtc_state(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc);
+
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.45.2

