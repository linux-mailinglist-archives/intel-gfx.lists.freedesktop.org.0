Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BFF43181B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 13:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019BF6E9E8;
	Mon, 18 Oct 2021 11:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA6A6E9E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 11:50:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208333181"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208333181"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 04:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="566002339"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 18 Oct 2021 04:50:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 14:50:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Date: Mon, 18 Oct 2021 14:50:25 +0300
Message-Id: <20211018115030.3547-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Split update_plane() into
 update_noarm() + update_arm()
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

The amount of plane registers we have to write has been steadily
increasing, putting more pressure on the vblank evasion mechanism
and forcing us to increase its time budget. Let's try to take some
of the pressure off by splitting plane updates into two parts:
1) write all non-self arming plane registers, ie. the registers
   where the write actually does nothing until a separate arming
   register is also written which will cause the hardware to latch
   the new register values at the next start of vblank
2) write all self arming plane registers, ie. registers which always
   just latch at the next start of vblank, and registers which also
   arm other registers to do so

Here we just provide the mechanism, but don't actually implement
the split on any platform yet. so everything stays now in the _arm()
hooks. Subsequently we can move a whole bunch of stuff into the
_noarm() part, especially in more modern platforms where the number
of registers we have to write is also the greatest. On older
platforms this is less beneficial probably, but no real reason
to deviate from a common behaviour.

And let's sprinkle some TODOs around the areas that will need
adapting.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 15 ++--
 .../gpu/drm/i915/display/intel_atomic_plane.c | 88 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_atomic_plane.h | 23 +++--
 drivers/gpu/drm/i915/display/intel_cursor.c   | 44 +++++-----
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
 .../drm/i915/display/intel_display_types.h    | 12 ++-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 44 +++++-----
 .../drm/i915/display/skl_universal_plane.c    | 15 ++--
 drivers/gpu/drm/i915/i915_trace.h             | 33 ++++++-
 9 files changed, 192 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index b1439ba78f67..93163f9100a8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -418,9 +418,10 @@ static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	return DIV_ROUND_UP(pixel_rate * num, den);
 }
 
-static void i9xx_update_plane(struct intel_plane *plane,
-			      const struct intel_crtc_state *crtc_state,
-			      const struct intel_plane_state *plane_state)
+/* TODO: split into noarm+arm pair */
+static void i9xx_plane_update_arm(struct intel_plane *plane,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
@@ -493,8 +494,8 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
-static void i9xx_disable_plane(struct intel_plane *plane,
-			       const struct intel_crtc_state *crtc_state)
+static void i9xx_plane_disable_arm(struct intel_plane *plane,
+				   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
@@ -851,8 +852,8 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 			plane->max_stride = ilk_primary_max_stride;
 	}
 
-	plane->update_plane = i9xx_update_plane;
-	plane->disable_plane = i9xx_disable_plane;
+	plane->update_arm = i9xx_plane_update_arm;
+	plane->disable_arm = i9xx_plane_disable_arm;
 	plane->get_hw_state = i9xx_plane_get_hw_state;
 	plane->check_plane = i9xx_plane_check;
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 0be8c00e3db9..ae21770fc321 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -469,31 +469,72 @@ skl_next_plane_to_commit(struct intel_atomic_state *state,
 	return NULL;
 }
 
-void intel_update_plane(struct intel_plane *plane,
-			const struct intel_crtc_state *crtc_state,
-			const struct intel_plane_state *plane_state)
+void intel_plane_update_noarm(struct intel_plane *plane,
+			      const struct intel_crtc_state *crtc_state,
+			      const struct intel_plane_state *plane_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_update_plane(&plane->base, crtc);
+	trace_intel_plane_update_noarm(&plane->base, crtc);
+
+	if (plane->update_noarm)
+		plane->update_noarm(plane, crtc_state, plane_state);
+}
+
+void intel_plane_update_arm(struct intel_plane *plane,
+			    const struct intel_crtc_state *crtc_state,
+			    const struct intel_plane_state *plane_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	trace_intel_plane_update_arm(&plane->base, crtc);
 
 	if (crtc_state->uapi.async_flip && plane->async_flip)
 		plane->async_flip(plane, crtc_state, plane_state, true);
 	else
-		plane->update_plane(plane, crtc_state, plane_state);
+		plane->update_arm(plane, crtc_state, plane_state);
 }
 
-void intel_disable_plane(struct intel_plane *plane,
-			 const struct intel_crtc_state *crtc_state)
+void intel_plane_disable_arm(struct intel_plane *plane,
+			     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_disable_plane(&plane->base, crtc);
-	plane->disable_plane(plane, crtc_state);
+	trace_intel_plane_disable_arm(&plane->base, crtc);
+	plane->disable_arm(plane, crtc_state);
 }
 
-void skl_update_planes_on_crtc(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc)
+void intel_update_planes_on_crtc(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	u32 update_mask = new_crtc_state->update_planes;
+	struct intel_plane_state *new_plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	if (new_crtc_state->uapi.async_flip)
+		return;
+
+	/*
+	 * Since we only write non-arming registers here,
+	 * the order does not matter even for skl+.
+	 */
+	for_each_new_intel_plane_in_state(state, plane, new_plane_state, i) {
+		if (crtc->pipe != plane->pipe ||
+		    !(update_mask & BIT(plane->id)))
+			continue;
+
+		/* TODO: for mailbox updates this should be skipped */
+		if (new_plane_state->uapi.visible ||
+		    new_plane_state->planar_slave)
+			intel_plane_update_noarm(plane, new_crtc_state, new_plane_state);
+	}
+}
+
+void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -515,17 +556,20 @@ void skl_update_planes_on_crtc(struct intel_atomic_state *state,
 		struct intel_plane_state *new_plane_state =
 			intel_atomic_get_new_plane_state(state, plane);
 
+		/*
+		 * TODO: for mailbox updates intel_plane_update_noarm()
+		 * would have to be called here as well.
+		 */
 		if (new_plane_state->uapi.visible ||
-		    new_plane_state->planar_slave) {
-			intel_update_plane(plane, new_crtc_state, new_plane_state);
-		} else {
-			intel_disable_plane(plane, new_crtc_state);
-		}
+		    new_plane_state->planar_slave)
+			intel_plane_update_arm(plane, new_crtc_state, new_plane_state);
+		else
+			intel_plane_disable_arm(plane, new_crtc_state);
 	}
 }
 
-void i9xx_update_planes_on_crtc(struct intel_atomic_state *state,
-				struct intel_crtc *crtc)
+void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -539,10 +583,14 @@ void i9xx_update_planes_on_crtc(struct intel_atomic_state *state,
 		    !(update_mask & BIT(plane->id)))
 			continue;
 
+		/*
+		 * TODO: for mailbox updates intel_plane_update_noarm()
+		 * would have to be called here as well.
+		 */
 		if (new_plane_state->uapi.visible)
-			intel_update_plane(plane, new_crtc_state, new_plane_state);
+			intel_plane_update_arm(plane, new_crtc_state, new_plane_state);
 		else
-			intel_disable_plane(plane, new_crtc_state);
+			intel_plane_disable_arm(plane, new_crtc_state);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 62e5a2a77fd4..7907f601598e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -30,20 +30,25 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 				       struct intel_crtc *crtc);
 void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 			       const struct intel_plane_state *from_plane_state);
-void intel_update_plane(struct intel_plane *plane,
-			const struct intel_crtc_state *crtc_state,
-			const struct intel_plane_state *plane_state);
-void intel_disable_plane(struct intel_plane *plane,
-			 const struct intel_crtc_state *crtc_state);
+void intel_plane_update_noarm(struct intel_plane *plane,
+			      const struct intel_crtc_state *crtc_state,
+			      const struct intel_plane_state *plane_state);
+void intel_plane_update_arm(struct intel_plane *plane,
+			    const struct intel_crtc_state *crtc_state,
+			    const struct intel_plane_state *plane_state);
+void intel_plane_disable_arm(struct intel_plane *plane,
+			     const struct intel_crtc_state *crtc_state);
 struct intel_plane *intel_plane_alloc(void);
 void intel_plane_free(struct intel_plane *plane);
 struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *plane);
 void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
-void skl_update_planes_on_crtc(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc);
-void i9xx_update_planes_on_crtc(struct intel_atomic_state *state,
-				struct intel_crtc *crtc);
+void intel_update_planes_on_crtc(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc);
+void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc);
+void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
 int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_state,
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 11842f212613..826337a769b5 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -253,9 +253,10 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void i845_update_cursor(struct intel_plane *plane,
-			       const struct intel_crtc_state *crtc_state,
-			       const struct intel_plane_state *plane_state)
+/* TODO: split into noarm+arm pair */
+static void i845_cursor_update_arm(struct intel_plane *plane,
+				   const struct intel_crtc_state *crtc_state,
+				   const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	u32 cntl = 0, base = 0, pos = 0, size = 0;
@@ -298,10 +299,10 @@ static void i845_update_cursor(struct intel_plane *plane,
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
-static void i845_disable_cursor(struct intel_plane *plane,
-				const struct intel_crtc_state *crtc_state)
+static void i845_cursor_disable_arm(struct intel_plane *plane,
+				    const struct intel_crtc_state *crtc_state)
 {
-	i845_update_cursor(plane, crtc_state, NULL);
+	i845_cursor_update_arm(plane, crtc_state, NULL);
 }
 
 static bool i845_cursor_get_hw_state(struct intel_plane *plane,
@@ -488,9 +489,10 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void i9xx_update_cursor(struct intel_plane *plane,
-			       const struct intel_crtc_state *crtc_state,
-			       const struct intel_plane_state *plane_state)
+/* TODO: split into noarm+arm pair */
+static void i9xx_cursor_update_arm(struct intel_plane *plane,
+				   const struct intel_crtc_state *crtc_state,
+				   const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -562,10 +564,10 @@ static void i9xx_update_cursor(struct intel_plane *plane,
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
-static void i9xx_disable_cursor(struct intel_plane *plane,
-				const struct intel_crtc_state *crtc_state)
+static void i9xx_cursor_disable_arm(struct intel_plane *plane,
+				    const struct intel_crtc_state *crtc_state)
 {
-	i9xx_update_cursor(plane, crtc_state, NULL);
+	i9xx_cursor_update_arm(plane, crtc_state, NULL);
 }
 
 static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
@@ -717,10 +719,12 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 */
 	crtc_state->active_planes = new_crtc_state->active_planes;
 
-	if (new_plane_state->uapi.visible)
-		intel_update_plane(plane, crtc_state, new_plane_state);
-	else
-		intel_disable_plane(plane, crtc_state);
+	if (new_plane_state->uapi.visible) {
+		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
+		intel_plane_update_arm(plane, crtc_state, new_plane_state);
+	} else {
+		intel_plane_disable_arm(plane, crtc_state);
+	}
 
 	intel_plane_unpin_fb(old_plane_state);
 
@@ -766,14 +770,14 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 
 	if (IS_I845G(dev_priv) || IS_I865G(dev_priv)) {
 		cursor->max_stride = i845_cursor_max_stride;
-		cursor->update_plane = i845_update_cursor;
-		cursor->disable_plane = i845_disable_cursor;
+		cursor->update_arm = i845_cursor_update_arm;
+		cursor->disable_arm = i845_cursor_disable_arm;
 		cursor->get_hw_state = i845_cursor_get_hw_state;
 		cursor->check_plane = i845_check_cursor;
 	} else {
 		cursor->max_stride = i9xx_cursor_max_stride;
-		cursor->update_plane = i9xx_update_cursor;
-		cursor->disable_plane = i9xx_disable_cursor;
+		cursor->update_arm = i9xx_cursor_update_arm;
+		cursor->disable_arm = i9xx_cursor_disable_arm;
 		cursor->get_hw_state = i9xx_cursor_get_hw_state;
 		cursor->check_plane = i9xx_check_cursor;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8bb87e839f4a..a685aad738f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1126,7 +1126,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) == 2 && !crtc_state->active_planes)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 
-	intel_disable_plane(plane, crtc_state);
+	intel_plane_disable_arm(plane, crtc_state);
 	intel_wait_for_vblank(dev_priv, crtc->pipe);
 }
 
@@ -2156,7 +2156,7 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 		    !(update_mask & BIT(plane->id)))
 			continue;
 
-		intel_disable_plane(plane, new_crtc_state);
+		intel_plane_disable_arm(plane, new_crtc_state);
 
 		if (old_plane_state->uapi.visible)
 			fb_bits |= plane->frontbuffer_bit;
@@ -2423,7 +2423,7 @@ static void intel_disable_primary_plane(const struct intel_crtc_state *crtc_stat
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 
-	plane->disable_plane(plane, crtc_state);
+	plane->disable_arm(plane, crtc_state);
 }
 
 static void ilk_crtc_enable(struct intel_atomic_state *state,
@@ -9387,15 +9387,17 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	intel_fbc_update(state, crtc);
 
+	intel_update_planes_on_crtc(state, crtc);
+
 	/* Perform vblank evasion around commit operation */
 	intel_pipe_update_start(new_crtc_state);
 
 	commit_pipe_pre_planes(state, crtc);
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_update_planes_on_crtc(state, crtc);
+		skl_arm_planes_on_crtc(state, crtc);
 	else
-		i9xx_update_planes_on_crtc(state, crtc);
+		i9xx_arm_planes_on_crtc(state, crtc);
 
 	commit_pipe_post_planes(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 39e11eaec1a3..907389fd6f85 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1362,11 +1362,17 @@ struct intel_plane {
 	unsigned int (*max_stride)(struct intel_plane *plane,
 				   u32 pixel_format, u64 modifier,
 				   unsigned int rotation);
-	void (*update_plane)(struct intel_plane *plane,
+	/* Write all non-self arming plane registers */
+	void (*update_noarm)(struct intel_plane *plane,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct intel_plane_state *plane_state);
-	void (*disable_plane)(struct intel_plane *plane,
-			      const struct intel_crtc_state *crtc_state);
+	/* Write all self-arming plane registers */
+	void (*update_arm)(struct intel_plane *plane,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct intel_plane_state *plane_state);
+	/* Disable the plane, must arm */
+	void (*disable_arm)(struct intel_plane *plane,
+			    const struct intel_crtc_state *crtc_state);
 	bool (*get_hw_state)(struct intel_plane *plane, enum pipe *pipe);
 	int (*check_plane)(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 1daa3360cf02..9c36c1492b33 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -416,10 +416,11 @@ static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
 				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
 }
 
+/* TODO: split into noarm+arm pair */
 static void
-vlv_sprite_update(struct intel_plane *plane,
-		  const struct intel_crtc_state *crtc_state,
-		  const struct intel_plane_state *plane_state)
+vlv_sprite_update_arm(struct intel_plane *plane,
+		      const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -485,8 +486,8 @@ vlv_sprite_update(struct intel_plane *plane,
 }
 
 static void
-vlv_sprite_disable(struct intel_plane *plane,
-		   const struct intel_crtc_state *crtc_state)
+vlv_sprite_disable_arm(struct intel_plane *plane,
+		       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -834,10 +835,11 @@ static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
 	i++;
 }
 
+/* TODO: split into noarm+arm pair */
 static void
-ivb_sprite_update(struct intel_plane *plane,
-		  const struct intel_crtc_state *crtc_state,
-		  const struct intel_plane_state *plane_state)
+ivb_sprite_update_arm(struct intel_plane *plane,
+		      const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -908,8 +910,8 @@ ivb_sprite_update(struct intel_plane *plane,
 }
 
 static void
-ivb_sprite_disable(struct intel_plane *plane,
-		   const struct intel_crtc_state *crtc_state)
+ivb_sprite_disable_arm(struct intel_plane *plane,
+		       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -1163,9 +1165,9 @@ static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
 }
 
 static void
-g4x_sprite_update(struct intel_plane *plane,
-		  const struct intel_crtc_state *crtc_state,
-		  const struct intel_plane_state *plane_state)
+g4x_sprite_update_arm(struct intel_plane *plane,
+		      const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -1232,8 +1234,8 @@ g4x_sprite_update(struct intel_plane *plane,
 }
 
 static void
-g4x_sprite_disable(struct intel_plane *plane,
-		   const struct intel_crtc_state *crtc_state)
+g4x_sprite_disable_arm(struct intel_plane *plane,
+		       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -1762,8 +1764,8 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		return plane;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		plane->update_plane = vlv_sprite_update;
-		plane->disable_plane = vlv_sprite_disable;
+		plane->update_arm = vlv_sprite_update_arm;
+		plane->disable_arm = vlv_sprite_disable_arm;
 		plane->get_hw_state = vlv_sprite_get_hw_state;
 		plane->check_plane = vlv_sprite_check;
 		plane->max_stride = i965_plane_max_stride;
@@ -1780,8 +1782,8 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 
 		plane_funcs = &vlv_sprite_funcs;
 	} else if (DISPLAY_VER(dev_priv) >= 7) {
-		plane->update_plane = ivb_sprite_update;
-		plane->disable_plane = ivb_sprite_disable;
+		plane->update_arm = ivb_sprite_update_arm;
+		plane->disable_arm = ivb_sprite_disable_arm;
 		plane->get_hw_state = ivb_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 
@@ -1799,8 +1801,8 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 
 		plane_funcs = &snb_sprite_funcs;
 	} else {
-		plane->update_plane = g4x_sprite_update;
-		plane->disable_plane = g4x_sprite_disable;
+		plane->update_arm = g4x_sprite_update_arm;
+		plane->disable_arm = g4x_sprite_disable_arm;
 		plane->get_hw_state = g4x_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 		plane->max_stride = g4x_sprite_max_stride;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e2f024449149..74f3870d39b1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -642,8 +642,8 @@ static u32 skl_plane_stride(const struct intel_plane_state *plane_state,
 }
 
 static void
-skl_disable_plane(struct intel_plane *plane,
-		  const struct intel_crtc_state *crtc_state)
+skl_plane_disable_arm(struct intel_plane *plane,
+		      const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
@@ -1199,10 +1199,11 @@ skl_plane_async_flip(struct intel_plane *plane,
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
+/* TODO: split into noarm+arm pair */
 static void
-skl_update_plane(struct intel_plane *plane,
-		 const struct intel_crtc_state *crtc_state,
-		 const struct intel_plane_state *plane_state)
+skl_plane_update_arm(struct intel_plane *plane,
+		     const struct intel_crtc_state *crtc_state,
+		     const struct intel_plane_state *plane_state)
 {
 	int color_plane = 0;
 
@@ -2158,8 +2159,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	}
 
 	plane->max_stride = skl_plane_max_stride;
-	plane->update_plane = skl_update_plane;
-	plane->disable_plane = skl_disable_plane;
+	plane->update_arm = skl_plane_update_arm;
+	plane->disable_arm = skl_plane_disable_arm;
 	plane->get_hw_state = skl_plane_get_hw_state;
 	plane->check_plane = skl_plane_check;
 
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 9795f456cccf..214696d6b270 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -288,7 +288,7 @@ TRACE_EVENT(vlv_fifo_size,
 
 /* plane updates */
 
-TRACE_EVENT(intel_update_plane,
+TRACE_EVENT(intel_plane_update_noarm,
 	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
 	    TP_ARGS(plane, crtc),
 
@@ -317,7 +317,36 @@ TRACE_EVENT(intel_update_plane,
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
 );
 
-TRACE_EVENT(intel_disable_plane,
+TRACE_EVENT(intel_plane_update_arm,
+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_ARGS(plane, crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __array(int, src, 4)
+			     __array(int, dst, 4)
+			     __string(name, plane->name)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(name, plane->name);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
+			   ),
+
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline,
+		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
+		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
+);
+
+TRACE_EVENT(intel_plane_disable_arm,
 	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
 	    TP_ARGS(plane, crtc),
 
-- 
2.32.0

