Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0436C4455A8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7068D89FE8;
	Thu,  4 Nov 2021 14:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA99489FCC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:46:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="212463269"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="212463269"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:46:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="468484943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 04 Nov 2021 07:46:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:46:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:20 +0200
Message-Id: <20211104144520.22605-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/17] drm/1915/fbc: Replace plane->has_fbc with
 a pointer to the fbc instance
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

With multiple fbc instances we need to find the right one for each
plane. Rather than going looking for the right instance every time
let's just replace the has_fbc boolean with a pointer that gets us
there straight away.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 10 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  4 +++-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 24 +++++++++----------
 .../drm/i915/display/skl_universal_plane.c    | 10 ++++----
 5 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index c8722771aa40..8a59fd0fd2ca 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -774,12 +774,10 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	plane->id = PLANE_PRIMARY;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
 
-	plane->has_fbc = i9xx_plane_has_fbc(dev_priv, plane->i9xx_plane);
-	if (plane->has_fbc) {
-		struct intel_fbc *fbc = &dev_priv->fbc;
-
-		fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
-	}
+	if (i9xx_plane_has_fbc(dev_priv, plane->i9xx_plane))
+		plane->fbc = &dev_priv->fbc;
+	if (plane->fbc)
+		plane->fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		formats = vlv_primary_formats;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3be82f075655..8118e65ec732 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -645,7 +645,7 @@ bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 
 	return DISPLAY_VER(dev_priv) < 4 ||
-		(plane->has_fbc &&
+		(plane->fbc &&
 		 plane_state->view.gtt.type == I915_GGTT_VIEW_NORMAL);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a174b0b83640..aa759999aac9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -49,6 +49,7 @@
 struct drm_printer;
 struct __intel_global_objs_state;
 struct intel_ddi_buf_trans;
+struct intel_fbc;
 
 /*
  * Display related stuff
@@ -1331,7 +1332,6 @@ struct intel_plane {
 	enum i9xx_plane_id i9xx_plane;
 	enum plane_id id;
 	enum pipe pipe;
-	bool has_fbc;
 	bool need_async_flip_disable_wa;
 	u32 frontbuffer_bit;
 
@@ -1339,6 +1339,8 @@ struct intel_plane {
 		u32 base, cntl, size;
 	} cursor;
 
+	struct intel_fbc *fbc;
+
 	/*
 	 * NOTE: Do not place new plane state fields here (e.g., when adding
 	 * new plane properties).  New runtime state should now be placed in
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e8235d55e76a..a7e0f79ceb63 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1217,11 +1217,11 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = plane->fbc;
 	const char *reason = "update pending";
 	bool need_vblank_wait = false;
 
-	if (!plane->has_fbc || !plane_state)
+	if (!fbc || !plane_state)
 		return need_vblank_wait;
 
 	mutex_lock(&fbc->lock);
@@ -1309,13 +1309,12 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = plane->fbc;
 
-	if (!plane->has_fbc || !plane_state)
+	if (!fbc || !plane_state)
 		return;
 
 	mutex_lock(&fbc->lock);
@@ -1419,7 +1418,7 @@ void intel_fbc_choose_crtc(struct drm_i915_private *i915,
 		struct intel_crtc_state *crtc_state;
 		struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
 
-		if (!plane->has_fbc)
+		if (plane->fbc != fbc)
 			continue;
 
 		if (!plane_state->uapi.visible)
@@ -1458,13 +1457,15 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_fbc *fbc = &i915->fbc;
-	struct intel_fbc_state_cache *cache = &fbc->state_cache;
+	struct intel_fbc *fbc = plane->fbc;
+	struct intel_fbc_state_cache *cache;
 	int min_limit;
 
-	if (!plane->has_fbc || !plane_state)
+	if (!fbc || !plane_state)
 		return;
 
+	cache = &fbc->state_cache;
+
 	min_limit = intel_fbc_min_limit(plane_state->hw.fb ?
 					plane_state->hw.fb->format->cpp[0] : 0);
 
@@ -1514,11 +1515,10 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
  */
 void intel_fbc_disable(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = plane->fbc;
 
-	if (!plane->has_fbc)
+	if (!fbc)
 		return;
 
 	mutex_lock(&fbc->lock);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 91a79b1582c9..077a96c150d1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2060,12 +2060,10 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->id = plane_id;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane_id);
 
-	plane->has_fbc = skl_plane_has_fbc(dev_priv, pipe, plane_id);
-	if (plane->has_fbc) {
-		struct intel_fbc *fbc = &dev_priv->fbc;
-
-		fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
-	}
+	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
+		plane->fbc = &dev_priv->fbc;
+	if (plane->fbc)
+		plane->fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
-- 
2.32.0

