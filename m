Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5889156F9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D509710E560;
	Mon, 24 Jun 2024 19:11:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7FNjgjk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD8310E55F
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256261; x=1750792261;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rfpMxVZbfsiy3Tl/htCeBysVjM2rYFKFIgDt4nfCbyU=;
 b=G7FNjgjkP1J9R3KaeimAjxBzHjeaTkVEaBJeh8p5b2rfa3JGezQGTkva
 qowrdfVy7VZ5iq+9qW3kWsteuVePInz2TqflaFw0BQCNFK3MW7ZovlB9x
 MeOXqwqqGI/N6kRegmBnWV7Hwm2qSiQmYuTvqXA4zBIWzMEESPLUYEHYv
 83mBdVdbrRhTfWxihebRb6Q9HT0RlzqD6JsDYX6YJH927L88kW5Bth9qx
 Mvv+sqi3ahpUOqPEe9BvdXqveHvQOUwDeh3OMYjR6gIt0uGpYirgsTmLC
 VGaj4wBWOuL4s4W70By7SDDIW54Yrlm/3mTQckUOHanJ9YdJwyr3n+IOy Q==;
X-CSE-ConnectionGUID: 0vSdyceGRZ6n+NdUp6bK6w==
X-CSE-MsgGUID: 9CBFPug6TACnPLG+GOLE8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374192"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374192"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:55 -0700
X-CSE-ConnectionGUID: qYu0mYkITI2NRBSAPDYh2A==
X-CSE-MsgGUID: nSM2zkzvRh2khKEu8IhDyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371964"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/14] drm/i915/dsb: Account for VRR properly in DSB scanline
 stuff
Date: Mon, 24 Jun 2024 22:10:25 +0300
Message-ID: <20240624191032.27333-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

When determining various scanlines for DSB use we should take into
account whether VRR is active at the time when the DSB uses said
scanline information. For now all DSB scanline usage occurs prior
to the actual commit, so we only need to care about the state of
VRR at that time.

I've decided to move intel_crtc_scanline_to_hw() in its entirety
to the DSB code as it will also need to know the actual state
of VRR in order to do its job 100% correctly.

TODO: figure out how much of this could be moved to some
      more generic place and perhaps be shared with the CPU
      vblank evasion code/etc...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +-
 drivers/gpu/drm/i915/display/intel_display.h |  3 +
 drivers/gpu/drm/i915/display/intel_dsb.c     | 65 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vblank.c  | 10 +--
 drivers/gpu/drm/i915/display/intel_vblank.h  |  3 +-
 5 files changed, 67 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01a5faa3fea5..592483651b3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1031,8 +1031,8 @@ static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
-static bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
+bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b0cf6ca70952..b21d9578d5db 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -532,6 +532,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 
 void intel_update_watermarks(struct drm_i915_private *i915);
 
+bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc);
+
 /* modesetting */
 int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index e871af5517b5..b362a3050c7f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -83,15 +83,72 @@ struct intel_dsb {
 #define DSB_OPCODE_POLL			0xA
 /* see DSB_REG_VALUE_MASK */
 
-static int dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
+static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	/* VRR will be enabled afterwards, if necessary */
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		return false;
+
+	/* VRR will have been disabled during intel_pre_plane_update() */
+	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
+}
+
+static const struct intel_crtc_state *
+pre_commit_crtc_state(struct intel_atomic_state *state,
+		      struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
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
+static int dsb_vtotal(struct intel_atomic_state *state,
+		      struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+
+	if (pre_commit_is_vrr_active(state, crtc))
+		return crtc_state->vrr.vmax;
+	else
+		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
+}
+
+static int dsb_dewake_scanline(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	unsigned int latency = skl_watermark_max_latency(i915, 0);
 
 	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode) -
 		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, latency);
 }
 
+static int dsb_scanline_to_hw(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc, int scanline)
+{
+	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	int vtotal = dsb_vtotal(state, crtc);
+
+	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
+}
+
 static u32 dsb_chicken(struct intel_crtc *crtc)
 {
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR)
@@ -489,8 +546,6 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    unsigned int max_cmds)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
 	intel_wakeref_t wakeref;
 	struct intel_dsb *dsb;
 	unsigned int size;
@@ -526,7 +581,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	dsb->ins_start_offset = 0;
 
 	dsb->hw_dewake_scanline =
-		intel_crtc_scanline_to_hw(crtc_state, dsb_dewake_scanline(crtc_state));
+		dsb_scanline_to_hw(state, crtc, dsb_dewake_scanline(state, crtc));
 
 	return dsb;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 56c8033eec4c..71abc7354c3b 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -190,7 +190,7 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
 	return scanline;
 }
 
-static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
+int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
@@ -284,14 +284,6 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	return (position + vtotal + crtc->scanline_offset) % vtotal;
 }
 
-int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
-			      int scanline)
-{
-	int vtotal = intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
-
-	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
-}
-
 /*
  * The uncore version of the spin lock functions is used to decide
  * whether we need to lock the uncore lock or not.  This is only
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 45a4a961aaab..6d7336256982 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -40,7 +40,6 @@ void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable);
-int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
-			      int scanline);
+int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.44.2

