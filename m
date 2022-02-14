Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A6B4B4CB0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 11:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B6010E4F7;
	Mon, 14 Feb 2022 10:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5BD10E4F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 10:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644836149; x=1676372149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wNZVF8nrEz5LekaN6iWPzYUrs3ddoFBM5PeaXeaQRAY=;
 b=ZCVVzsQRrzu4FARgEyUVClleS0DGEXythUbrBAXvXdgEn4Ki8zVidXwx
 51KRzxlotCkgUcyqJBjZ2/CVQmQIO2aODO2m96ZUorQHv6jbDr7OQtOMY
 tYB7SiUZW6xTG9kK9gZWpA773YPXk1I9H8WaTojACFUI8wTKgOMyiKyqS
 oZgdRnpSDUzFZ+ZoHb0U7/KqAT3eyKqS6nVVeEiiT4aE0f9mXc8k8MuN4
 R3Y/n+cB4MqAGDNYEfj8//ItxMiqckAkaqxG5uSbVb7DOrPmXDb9lQZFl
 jxNHvlQ8YS7JJBfhbhtjYjfJh76Aqkx+Av+QGbnyzjYIOE4I7NomZ8BHY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="250271666"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="250271666"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:55:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="538532368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 14 Feb 2022 02:55:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 12:55:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 12:55:31 +0200
Message-Id: <20220214105532.13049-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
References: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Fix the async flip wm0/ddb
 optimization
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

The current implementation of the async flip wm0/ddb optimization
does not work at all. The biggest problem is that we skip the
whole intel_pipe_update_{start,end}() dance and thus never actually
complete the commit that is trying to do the wm/ddb change.

To fix this we need to move the do_async_flip flag to the crtc
state since we handle commits per-pipe, not per-plane.

Also since all planes can now be included in the first/last
"async flip" (which gets converted to a sync flip to do the
wm/ddb mangling) we need to be more careful when checking if
the plane state is async flip comptatible. Only planes doing
the async flip should be checked and other planes are perfectly
fine not adhereing to any async flip related limitations.

However for subsequent commits which are actually going do the
async flip in hardware we want to make sure no other planes
are in the state. That should never happen assuming we did our
job correctly, so we'll toss in a WARN to make sure we catch
any bugs here.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: c3639f3be480 ("drm/i915: Use wm0 only during async flips for DG2")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |  5 +--
 drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 40 +++++++++++--------
 .../drm/i915/display/intel_display_types.h    |  6 +--
 5 files changed, 31 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index e0667d163266..40da7910f845 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -262,6 +262,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->preload_luts = false;
 	crtc_state->inherited = false;
 	crtc_state->wm.need_postvbl_update = false;
+	crtc_state->do_async_flip = false;
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
 	crtc_state->dsb = NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index bec02333bdeb..df92cb9c7ff6 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -109,7 +109,6 @@ intel_plane_duplicate_state(struct drm_plane *plane)
 	intel_state->ggtt_vma = NULL;
 	intel_state->dpt_vma = NULL;
 	intel_state->flags = 0;
-	intel_state->do_async_flip = false;
 
 	/* add reference to fb */
 	if (intel_state->hw.fb)
@@ -492,7 +491,7 @@ void intel_plane_update_arm(struct intel_plane *plane,
 
 	trace_intel_plane_update_arm(&plane->base, crtc);
 
-	if (plane_state->do_async_flip)
+	if (crtc_state->do_async_flip && plane->async_flip)
 		plane->async_flip(plane, crtc_state, plane_state, true);
 	else
 		plane->update_arm(plane, crtc_state, plane_state);
@@ -517,7 +516,7 @@ void intel_update_planes_on_crtc(struct intel_atomic_state *state,
 	struct intel_plane *plane;
 	int i;
 
-	if (new_crtc_state->uapi.async_flip)
+	if (new_crtc_state->do_async_flip)
 		return;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 08ee3e17ee5c..65827481c1b1 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -485,7 +485,7 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 	DEFINE_WAIT(wait);
 
-	if (new_crtc_state->uapi.async_flip)
+	if (new_crtc_state->do_async_flip)
 		return;
 
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
@@ -630,7 +630,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	ktime_t end_vbl_time = ktime_get();
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (new_crtc_state->uapi.async_flip)
+	if (new_crtc_state->do_async_flip)
 		return;
 
 	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a8c7816d29e..93db8ffa54f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1231,10 +1231,8 @@ static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
 	int i;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->enable_flip_done &&
-		    plane->pipe == crtc->pipe &&
-		    update_planes & BIT(plane->id) &&
-		    plane_state->do_async_flip)
+		if (plane->pipe == crtc->pipe &&
+		    update_planes & BIT(plane->id))
 			plane->enable_flip_done(plane);
 	}
 }
@@ -1250,10 +1248,8 @@ static void intel_crtc_disable_flip_done(struct intel_atomic_state *state,
 	int i;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->disable_flip_done &&
-		    plane->pipe == crtc->pipe &&
-		    update_planes & BIT(plane->id) &&
-		    plane_state->do_async_flip)
+		if (plane->pipe == crtc->pipe &&
+		    update_planes & BIT(plane->id))
 			plane->disable_flip_done(plane);
 	}
 }
@@ -4772,7 +4768,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 		new_crtc_state->disable_lp_wm = true;
 
 	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
-		new_plane_state->do_async_flip = true;
+		new_crtc_state->do_async_flip = true;
 
 	return 0;
 }
@@ -7566,14 +7562,24 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			continue;
 
 		/*
-		 * TODO: Async flip is only supported through the page flip IOCTL
-		 * as of now. So support currently added for primary plane only.
-		 * Support for other planes on platforms on which supports
-		 * this(vlv/chv and icl+) should be added when async flip is
-		 * enabled in the atomic IOCTL path.
+		 * Only async flip capable planes should be in the state
+		 * if we're really about to ask the hardware to perform
+		 * an async flip. We should never get this far otherwise.
+		 */
+		if (drm_WARN_ON(&i915->drm,
+				new_crtc_state->do_async_flip && !plane->async_flip))
+			return -EINVAL;
+
+		/*
+		 * Only check async flip capable planes other planes
+		 * may be involved in the initial commit due to
+		 * the wm0/ddb optimization.
+		 *
+		 * TODO maybe should track which planes actually
+		 * were requested to do the async flip...
 		 */
 		if (!plane->async_flip)
-			return -EINVAL;
+			continue;
 
 		/*
 		 * FIXME: This check is kept generic for all platforms.
@@ -8527,7 +8533,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_dbuf_pre_plane_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (new_crtc_state->uapi.async_flip)
+		if (new_crtc_state->do_async_flip)
 			intel_crtc_enable_flip_done(state, crtc);
 	}
 
@@ -8553,7 +8559,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	drm_atomic_helper_wait_for_flip_done(dev, &state->base);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (new_crtc_state->uapi.async_flip)
+		if (new_crtc_state->do_async_flip)
 			intel_crtc_disable_flip_done(state, crtc);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 60e15226a8cb..adfd19b5a77d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -634,9 +634,6 @@ struct intel_plane_state {
 
 	struct intel_fb_view view;
 
-	/* Indicates if async flip is required */
-	bool do_async_flip;
-
 	/* Plane pxp decryption state */
 	bool decrypt;
 
@@ -972,6 +969,9 @@ struct intel_crtc_state {
 	bool preload_luts;
 	bool inherited; /* state inherited from BIOS? */
 
+	/* Ask the hardware to actually async flip? */
+	bool do_async_flip;
+
 	/* Pipe source size (ie. panel fitter input size)
 	 * All planes will be positioned inside this space,
 	 * and get clipped at the edges. */
-- 
2.34.1

