Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBF96893C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15CDC10E2FC;
	Mon,  2 Sep 2024 13:54:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L8cgFEdN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4548910E2FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285255; x=1756821255;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6hkE7ZPEQgF/V9Lgtg5QSAgaRLkCdi3RF7X090tmCZU=;
 b=L8cgFEdN+Ejml7Zu4UEEenHxeMKDForErbJ59Dqo5qKQboteUMWvnHsA
 8j3EGkwWCxRDf6kh/1ABo/pEzHZU3pcUA4isLZ5GUNKN/jWDPV5JNwrbB
 gmyC5JWMqzO+s7LGPLWPNVyMDjejZoyeCDaz6KRxutz/LqOmtrBVifN8W
 HQQD7aV/WUY58qg5V2AqKNlt/hTQ0vCnGvgToy0+GRLoxT0/A15d0hWxT
 lKmWS3DvD80uy3JiWvD6vuwFEsNxBIdwIpGBWjoHxeW4vIKV9YTtZQBuB
 KLSiXlxo+kH4tttKYlVZFgTmDhqec2juL4PV+ywC+/FXo03yxCJs6kwwh A==;
X-CSE-ConnectionGUID: M6hfrWnARo6Z4v5tss41+Q==
X-CSE-MsgGUID: VMEx7Zq7SWu8hApB7/BaXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343657"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343657"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:15 -0700
X-CSE-ConnectionGUID: MKFgyW1/RzSVzKEZwz1hpg==
X-CSE-MsgGUID: WpCeJS4AQiinJ0qVOznXvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623917"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:54:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:54:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/13] drm/i915: Plumb 'dsb' all way to the plane hooks
Date: Mon,  2 Sep 2024 16:53:40 +0300
Message-ID: <20240902135342.1050-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
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

We need to be able to do both MMIO and DSB based pipe/plane
programming. To that end plumb the 'dsb' all way from the top
into the plane commit hooks.

The compiler appears smart enough to combine the branches from
all the back-to-back register writes into a single branch.
So the generated asm ends up looking more or less like this:
plane_hook()
{
	if (dsb) {
		intel_dsb_reg_write();
		intel_dsb_reg_write();
		...
	} else {
		intel_de_write_fw();
		intel_de_write_fw();
		...
	}
}
which seems like a reasonably efficient way to do this.

An alternative I was also considering is some kind of closure
(register write function + display vs. dsb pointer passed to it).
That does result is smaller code as there are no branches anymore,
but having each register access go via function pointer sounds
less efficient.

Not that I actually measured the overhead of either approach yet.
Also the reg_rw tracepoint seems to be making a huge mess of the
generated code for the mmio path. And additionally there's some
kind of IS_GSI_REG() hack in __raw_uncore_read() which ends up
generating a pointless branch for every mmio register access.
So looks like there might be quite a bit of room for improvement
in the mmio path still.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  22 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  49 +--
 .../gpu/drm/i915/display/intel_atomic_plane.h |  19 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   | 101 +++---
 drivers/gpu/drm/i915/display/intel_de.h       |  11 +
 drivers/gpu/drm/i915/display/intel_display.c  |  27 +-
 .../drm/i915/display/intel_display_types.h    |  16 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  27 +-
 .../drm/i915/display/skl_universal_plane.c    | 305 ++++++++++--------
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   2 +-
 10 files changed, 333 insertions(+), 246 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 9447f7229b60..17a1e3801a85 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -416,7 +416,8 @@ static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	return DIV_ROUND_UP(pixel_rate * num, den);
 }
 
-static void i9xx_plane_update_noarm(struct intel_plane *plane,
+static void i9xx_plane_update_noarm(struct intel_dsb *dsb,
+				    struct intel_plane *plane,
 				    const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state)
 {
@@ -444,7 +445,8 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 	}
 }
 
-static void i9xx_plane_update_arm(struct intel_plane *plane,
+static void i9xx_plane_update_arm(struct intel_dsb *dsb,
+				  struct intel_plane *plane,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct intel_plane_state *plane_state)
 {
@@ -507,7 +509,8 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
-static void i830_plane_update_arm(struct intel_plane *plane,
+static void i830_plane_update_arm(struct intel_dsb *dsb,
+				  struct intel_plane *plane,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct intel_plane_state *plane_state)
 {
@@ -517,11 +520,12 @@ static void i830_plane_update_arm(struct intel_plane *plane,
 	 * Additional breakage on i830 causes register reads to return
 	 * the last latched value instead of the last written value [ALM026].
 	 */
-	i9xx_plane_update_noarm(plane, crtc_state, plane_state);
-	i9xx_plane_update_arm(plane, crtc_state, plane_state);
+	i9xx_plane_update_noarm(dsb, plane, crtc_state, plane_state);
+	i9xx_plane_update_arm(dsb, plane, crtc_state, plane_state);
 }
 
-static void i9xx_plane_disable_arm(struct intel_plane *plane,
+static void i9xx_plane_disable_arm(struct intel_dsb *dsb,
+				   struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
@@ -549,7 +553,8 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 }
 
 static void
-g4x_primary_async_flip(struct intel_plane *plane,
+g4x_primary_async_flip(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state,
 		       const struct intel_plane_state *plane_state,
 		       bool async_flip)
@@ -569,7 +574,8 @@ g4x_primary_async_flip(struct intel_plane *plane,
 }
 
 static void
-vlv_primary_async_flip(struct intel_plane *plane,
+vlv_primary_async_flip(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state,
 		       const struct intel_plane_state *plane_state,
 		       bool async_flip)
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..5c2a7987cccb 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -790,7 +790,8 @@ skl_next_plane_to_commit(struct intel_atomic_state *state,
 	return NULL;
 }
 
-void intel_plane_update_noarm(struct intel_plane *plane,
+void intel_plane_update_noarm(struct intel_dsb *dsb,
+			      struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state)
 {
@@ -799,10 +800,11 @@ void intel_plane_update_noarm(struct intel_plane *plane,
 	trace_intel_plane_update_noarm(plane, crtc);
 
 	if (plane->update_noarm)
-		plane->update_noarm(plane, crtc_state, plane_state);
+		plane->update_noarm(dsb, plane, crtc_state, plane_state);
 }
 
-void intel_plane_async_flip(struct intel_plane *plane,
+void intel_plane_async_flip(struct intel_dsb *dsb,
+			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state,
 			    bool async_flip)
@@ -810,34 +812,37 @@ void intel_plane_async_flip(struct intel_plane *plane,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	trace_intel_plane_async_flip(plane, crtc, async_flip);
-	plane->async_flip(plane, crtc_state, plane_state, async_flip);
+	plane->async_flip(dsb, plane, crtc_state, plane_state, async_flip);
 }
 
-void intel_plane_update_arm(struct intel_plane *plane,
+void intel_plane_update_arm(struct intel_dsb *dsb,
+			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (crtc_state->do_async_flip && plane->async_flip) {
-		intel_plane_async_flip(plane, crtc_state, plane_state, true);
+		intel_plane_async_flip(dsb, plane, crtc_state, plane_state, true);
 		return;
 	}
 
 	trace_intel_plane_update_arm(plane, crtc);
-	plane->update_arm(plane, crtc_state, plane_state);
+	plane->update_arm(dsb, plane, crtc_state, plane_state);
 }
 
-void intel_plane_disable_arm(struct intel_plane *plane,
+void intel_plane_disable_arm(struct intel_dsb *dsb,
+			     struct intel_plane *plane,
 			     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	trace_intel_plane_disable_arm(plane, crtc);
-	plane->disable_arm(plane, crtc_state);
+	plane->disable_arm(dsb, plane, crtc_state);
 }
 
-void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
+void intel_crtc_planes_update_noarm(struct intel_dsb *dsb,
+				    struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *new_crtc_state =
@@ -862,11 +867,13 @@ void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
 		/* TODO: for mailbox updates this should be skipped */
 		if (new_plane_state->uapi.visible ||
 		    new_plane_state->planar_slave)
-			intel_plane_update_noarm(plane, new_crtc_state, new_plane_state);
+			intel_plane_update_noarm(dsb, plane,
+						 new_crtc_state, new_plane_state);
 	}
 }
 
-static void skl_crtc_planes_update_arm(struct intel_atomic_state *state,
+static void skl_crtc_planes_update_arm(struct intel_dsb *dsb,
+				       struct intel_atomic_state *state,
 				       struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *old_crtc_state =
@@ -893,13 +900,14 @@ static void skl_crtc_planes_update_arm(struct intel_atomic_state *state,
 		 */
 		if (new_plane_state->uapi.visible ||
 		    new_plane_state->planar_slave)
-			intel_plane_update_arm(plane, new_crtc_state, new_plane_state);
+			intel_plane_update_arm(dsb, plane, new_crtc_state, new_plane_state);
 		else
-			intel_plane_disable_arm(plane, new_crtc_state);
+			intel_plane_disable_arm(dsb, plane, new_crtc_state);
 	}
 }
 
-static void i9xx_crtc_planes_update_arm(struct intel_atomic_state *state,
+static void i9xx_crtc_planes_update_arm(struct intel_dsb *dsb,
+					struct intel_atomic_state *state,
 					struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *new_crtc_state =
@@ -919,21 +927,22 @@ static void i9xx_crtc_planes_update_arm(struct intel_atomic_state *state,
 		 * would have to be called here as well.
 		 */
 		if (new_plane_state->uapi.visible)
-			intel_plane_update_arm(plane, new_crtc_state, new_plane_state);
+			intel_plane_update_arm(dsb, plane, new_crtc_state, new_plane_state);
 		else
-			intel_plane_disable_arm(plane, new_crtc_state);
+			intel_plane_disable_arm(dsb, plane, new_crtc_state);
 	}
 }
 
-void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
+void intel_crtc_planes_update_arm(struct intel_dsb *dsb,
+				  struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
 	if (DISPLAY_VER(i915) >= 9)
-		skl_crtc_planes_update_arm(state, crtc);
+		skl_crtc_planes_update_arm(dsb, state, crtc);
 	else
-		i9xx_crtc_planes_update_arm(state, crtc);
+		i9xx_crtc_planes_update_arm(dsb, state, crtc);
 }
 
 int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 6c4fe3596465..0f982f452ff3 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -14,6 +14,7 @@ struct drm_rect;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dsb;
 struct intel_plane;
 struct intel_plane_state;
 enum plane_id;
@@ -32,26 +33,32 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 				       struct intel_crtc *crtc);
 void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 			       const struct intel_plane_state *from_plane_state);
-void intel_plane_async_flip(struct intel_plane *plane,
+void intel_plane_async_flip(struct intel_dsb *dsb,
+			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state,
 			    bool async_flip);
-void intel_plane_update_noarm(struct intel_plane *plane,
+void intel_plane_update_noarm(struct intel_dsb *dsb,
+			      struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state);
-void intel_plane_update_arm(struct intel_plane *plane,
+void intel_plane_update_arm(struct intel_dsb *dsb,
+			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
-void intel_plane_disable_arm(struct intel_plane *plane,
+void intel_plane_disable_arm(struct intel_dsb *dsb,
+			     struct intel_plane *plane,
 			     const struct intel_crtc_state *crtc_state);
 struct intel_plane *intel_plane_alloc(void);
 void intel_plane_free(struct intel_plane *plane);
 struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *plane);
 void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
-void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
+void intel_crtc_planes_update_noarm(struct intel_dsb *dsb,
+				    struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
-void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
+void intel_crtc_planes_update_arm(struct intel_dsb *dsbx,
+				  struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_state,
 					struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9ad53e1cbbd0..aeadb834d332 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -275,7 +275,8 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 }
 
 /* TODO: split into noarm+arm pair */
-static void i845_cursor_update_arm(struct intel_plane *plane,
+static void i845_cursor_update_arm(struct intel_dsb *dsb,
+				   struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state)
 {
@@ -315,10 +316,11 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 	}
 }
 
-static void i845_cursor_disable_arm(struct intel_plane *plane,
+static void i845_cursor_disable_arm(struct intel_dsb *dsb,
+				    struct intel_plane *plane,
 				    const struct intel_crtc_state *crtc_state)
 {
-	i845_cursor_update_arm(plane, crtc_state, NULL);
+	i845_cursor_update_arm(dsb, plane, crtc_state, NULL);
 }
 
 static bool i845_cursor_get_hw_state(struct intel_plane *plane,
@@ -527,22 +529,25 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_dsb *dsb,
+					      struct intel_plane *plane,
 					      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), 0);
+	intel_de_write_dsb(display, dsb, SEL_FETCH_CUR_CTL(pipe), 0);
 }
 
-static void wa_16021440873(struct intel_plane *plane,
+static void wa_16021440873(struct intel_dsb *dsb,
+			   struct intel_plane *plane,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	u32 ctl = plane_state->ctl;
 	int et_y_position = drm_rect_height(&crtc_state->pipe_src) + 1;
@@ -551,16 +556,18 @@ static void wa_16021440873(struct intel_plane *plane,
 	ctl &= ~MCURSOR_MODE_MASK;
 	ctl |= MCURSOR_MODE_64_2B;
 
-	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
+	intel_de_write_dsb(display, dsb, SEL_FETCH_CUR_CTL(pipe), ctl);
 
-	intel_de_write(dev_priv, CURPOS_ERLY_TPT(dev_priv, pipe),
-		       CURSOR_POS_Y(et_y_position));
+	intel_de_write_dsb(display, dsb, CURPOS_ERLY_TPT(dev_priv, pipe),
+			   CURSOR_POS_Y(et_y_position));
 }
 
-static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
+static void i9xx_cursor_update_sel_fetch_arm(struct intel_dsb *dsb,
+					     struct intel_plane *plane,
 					     const struct intel_crtc_state *crtc_state,
 					     const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
@@ -571,19 +578,17 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 		if (crtc_state->enable_psr2_su_region_et) {
 			u32 val = intel_cursor_position(crtc_state, plane_state,
 				true);
-			intel_de_write_fw(dev_priv,
-					  CURPOS_ERLY_TPT(dev_priv, pipe),
-					  val);
+
+			intel_de_write_dsb(display, dsb, CURPOS_ERLY_TPT(dev_priv, pipe), val);
 		}
 
-		intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe),
-				  plane_state->ctl);
+		intel_de_write_dsb(display, dsb, SEL_FETCH_CUR_CTL(pipe), plane_state->ctl);
 	} else {
 		/* Wa_16021440873 */
 		if (crtc_state->enable_psr2_su_region_et)
-			wa_16021440873(plane, crtc_state, plane_state);
+			wa_16021440873(dsb, plane, crtc_state, plane_state);
 		else
-			i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
+			i9xx_cursor_disable_sel_fetch_arm(dsb, plane, crtc_state);
 	}
 }
 
@@ -610,9 +615,11 @@ static u32 skl_cursor_wm_reg_val(const struct skl_wm_level *level)
 	return val;
 }
 
-static void skl_write_cursor_wm(struct intel_plane *plane,
+static void skl_write_cursor_wm(struct intel_dsb *dsb,
+				struct intel_plane *plane,
 				const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
@@ -622,30 +629,32 @@ static void skl_write_cursor_wm(struct intel_plane *plane,
 	int level;
 
 	for (level = 0; level < i915->display.wm.num_levels; level++)
-		intel_de_write_fw(i915, CUR_WM(pipe, level),
-				  skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
+		intel_de_write_dsb(display, dsb, CUR_WM(pipe, level),
+				   skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
 
-	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
-			  skl_cursor_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
+	intel_de_write_dsb(display, dsb, CUR_WM_TRANS(pipe),
+			   skl_cursor_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
 
 	if (HAS_HW_SAGV_WM(i915)) {
 		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
 
-		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
-				  skl_cursor_wm_reg_val(&wm->sagv.wm0));
-		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
-				  skl_cursor_wm_reg_val(&wm->sagv.trans_wm));
+		intel_de_write_dsb(display, dsb, CUR_WM_SAGV(pipe),
+				   skl_cursor_wm_reg_val(&wm->sagv.wm0));
+		intel_de_write_dsb(display, dsb, CUR_WM_SAGV_TRANS(pipe),
+				   skl_cursor_wm_reg_val(&wm->sagv.trans_wm));
 	}
 
-	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
-			  skl_cursor_ddb_reg_val(ddb));
+	intel_de_write_dsb(display, dsb, CUR_BUF_CFG(pipe),
+			   skl_cursor_ddb_reg_val(ddb));
 }
 
 /* TODO: split into noarm+arm pair */
-static void i9xx_cursor_update_arm(struct intel_plane *plane,
+static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
+				   struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	u32 cntl = 0, base = 0, pos = 0, fbc_ctl = 0;
@@ -685,38 +694,36 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 	 */
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_write_cursor_wm(plane, crtc_state);
+		skl_write_cursor_wm(dsb, plane, crtc_state);
 
 	if (plane_state)
-		i9xx_cursor_update_sel_fetch_arm(plane, crtc_state,
-						 plane_state);
+		i9xx_cursor_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
 	else
-		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
+		i9xx_cursor_disable_sel_fetch_arm(dsb, plane, crtc_state);
 
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != fbc_ctl ||
 	    plane->cursor.cntl != cntl) {
 		if (HAS_CUR_FBC(dev_priv))
-			intel_de_write_fw(dev_priv,
-					  CUR_FBC_CTL(dev_priv, pipe),
-					  fbc_ctl);
-		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, pipe), cntl);
-		intel_de_write_fw(dev_priv, CURPOS(dev_priv, pipe), pos);
-		intel_de_write_fw(dev_priv, CURBASE(dev_priv, pipe), base);
+			intel_de_write_dsb(display, dsb, CUR_FBC_CTL(dev_priv, pipe), fbc_ctl);
+		intel_de_write_dsb(display, dsb, CURCNTR(dev_priv, pipe), cntl);
+		intel_de_write_dsb(display, dsb, CURPOS(dev_priv, pipe), pos);
+		intel_de_write_dsb(display, dsb, CURBASE(dev_priv, pipe), base);
 
 		plane->cursor.base = base;
 		plane->cursor.size = fbc_ctl;
 		plane->cursor.cntl = cntl;
 	} else {
-		intel_de_write_fw(dev_priv, CURPOS(dev_priv, pipe), pos);
-		intel_de_write_fw(dev_priv, CURBASE(dev_priv, pipe), base);
+		intel_de_write_dsb(display, dsb, CURPOS(dev_priv, pipe), pos);
+		intel_de_write_dsb(display, dsb, CURBASE(dev_priv, pipe), base);
 	}
 }
 
-static void i9xx_cursor_disable_arm(struct intel_plane *plane,
+static void i9xx_cursor_disable_arm(struct intel_dsb *dsb,
+				    struct intel_plane *plane,
 				    const struct intel_crtc_state *crtc_state)
 {
-	i9xx_cursor_update_arm(plane, crtc_state, NULL);
+	i9xx_cursor_update_arm(dsb, plane, crtc_state, NULL);
 }
 
 static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
@@ -905,10 +912,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	}
 
 	if (new_plane_state->uapi.visible) {
-		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
-		intel_plane_update_arm(plane, crtc_state, new_plane_state);
+		intel_plane_update_noarm(NULL, plane, crtc_state, new_plane_state);
+		intel_plane_update_arm(NULL, plane, crtc_state, new_plane_state);
 	} else {
-		intel_plane_disable_arm(plane, crtc_state);
+		intel_plane_disable_arm(NULL, plane, crtc_state);
 	}
 
 	local_irq_enable();
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index e881bfeafb47..e017cd4a8168 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -8,6 +8,7 @@
 
 #include "i915_drv.h"
 #include "i915_trace.h"
+#include "intel_dsb.h"
 #include "intel_uncore.h"
 
 static inline struct intel_uncore *__to_uncore(struct intel_display *display)
@@ -233,4 +234,14 @@ __intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
 }
 #define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
 
+static __always_inline void
+intel_de_write_dsb(struct intel_display *display, struct intel_dsb *dsb,
+		   i915_reg_t reg, u32 val)
+{
+	if (dsb)
+		intel_dsb_reg_write(dsb, reg, val);
+	else
+		intel_de_write_fw(display, reg, val);
+}
+
 #endif /* __INTEL_DE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a3555885597d..d673e134c73b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -135,7 +135,8 @@
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
-static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state);
+static void bdw_set_pipe_misc(struct intel_dsb *dsb,
+			      const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
@@ -715,7 +716,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) == 2 && !crtc_state->active_planes)
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 
-	intel_plane_disable_arm(plane, crtc_state);
+	intel_plane_disable_arm(NULL, plane, crtc_state);
 	intel_crtc_wait_for_next_vblank(crtc);
 }
 
@@ -1172,8 +1173,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 			 * Apart from the async flip bit we want to
 			 * preserve the old state for the plane.
 			 */
-			intel_plane_async_flip(plane, old_crtc_state,
-					       old_plane_state, false);
+			intel_plane_async_flip(NULL, plane,
+					       old_crtc_state, old_plane_state, false);
 			need_vbl_wait = true;
 		}
 	}
@@ -1315,7 +1316,7 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 		    !(update_mask & BIT(plane->id)))
 			continue;
 
-		intel_plane_disable_arm(plane, new_crtc_state);
+		intel_plane_disable_arm(NULL, plane, new_crtc_state);
 
 		if (old_plane_state->uapi.visible)
 			fb_bits |= plane->frontbuffer_bit;
@@ -1507,7 +1508,7 @@ static void intel_disable_primary_plane(const struct intel_crtc_state *crtc_stat
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 
-	plane->disable_arm(plane, crtc_state);
+	plane->disable_arm(NULL, plane, crtc_state);
 }
 
 static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
@@ -1716,7 +1717,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_set_pipe_src_size(pipe_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-			bdw_set_pipe_misc(pipe_crtc_state);
+			bdw_set_pipe_misc(NULL, pipe_crtc_state);
 	}
 
 	if (!transcoder_is_dsi(cpu_transcoder))
@@ -3246,9 +3247,11 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 }
 
-static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
+static void bdw_set_pipe_misc(struct intel_dsb *dsb,
+			      const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 val = 0;
 
@@ -3293,7 +3296,7 @@ static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
 	if (IS_BROADWELL(dev_priv))
 		val |= PIPE_MISC_PSR_MASK_SPRITE_ENABLE;
 
-	intel_de_write(dev_priv, PIPE_MISC(crtc->pipe), val);
+	intel_de_write_dsb(display, dsb, PIPE_MISC(crtc->pipe), val);
 }
 
 int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc)
@@ -6823,7 +6826,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_color_commit_arm(new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-			bdw_set_pipe_misc(new_crtc_state);
+			bdw_set_pipe_misc(NULL, new_crtc_state);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
@@ -6923,7 +6926,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 	    intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_commit_noarm(new_crtc_state);
 
-	intel_crtc_planes_update_noarm(state, crtc);
+	intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
 
 static void intel_update_crtc(struct intel_atomic_state *state,
@@ -6939,7 +6942,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	commit_pipe_pre_planes(state, crtc);
 
-	intel_crtc_planes_update_arm(state, crtc);
+	intel_crtc_planes_update_arm(NULL, state, crtc);
 
 	commit_pipe_post_planes(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1af74c224f86..36f52f2d0104 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1036,6 +1036,10 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
+void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
+
+typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1580,22 +1584,26 @@ struct intel_plane {
 				   u32 pixel_format, u64 modifier,
 				   unsigned int rotation);
 	/* Write all non-self arming plane registers */
-	void (*update_noarm)(struct intel_plane *plane,
+	void (*update_noarm)(struct intel_dsb *dsb,
+			     struct intel_plane *plane,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct intel_plane_state *plane_state);
 	/* Write all self-arming plane registers */
-	void (*update_arm)(struct intel_plane *plane,
+	void (*update_arm)(struct intel_dsb *dsb,
+			   struct intel_plane *plane,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct intel_plane_state *plane_state);
 	/* Disable the plane, must arm */
-	void (*disable_arm)(struct intel_plane *plane,
+	void (*disable_arm)(struct intel_dsb *dsb,
+			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state);
 	bool (*get_hw_state)(struct intel_plane *plane, enum pipe *pipe);
 	int (*check_plane)(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state);
 	int (*min_cdclk)(const struct intel_crtc_state *crtc_state,
 			 const struct intel_plane_state *plane_state);
-	void (*async_flip)(struct intel_plane *plane,
+	void (*async_flip)(struct intel_dsb *dsb,
+			   struct intel_plane *plane,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct intel_plane_state *plane_state,
 			   bool async_flip);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index e657b09ede99..e6fadcef58e0 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -378,7 +378,8 @@ static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
 }
 
 static void
-vlv_sprite_update_noarm(struct intel_plane *plane,
+vlv_sprite_update_noarm(struct intel_dsb *dsb,
+			struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
@@ -399,7 +400,8 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 }
 
 static void
-vlv_sprite_update_arm(struct intel_plane *plane,
+vlv_sprite_update_arm(struct intel_dsb *dsb,
+		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
@@ -449,7 +451,8 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 }
 
 static void
-vlv_sprite_disable_arm(struct intel_plane *plane,
+vlv_sprite_disable_arm(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
@@ -795,7 +798,8 @@ static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
 }
 
 static void
-ivb_sprite_update_noarm(struct intel_plane *plane,
+ivb_sprite_update_noarm(struct intel_dsb *dsb,
+			struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
@@ -826,7 +830,8 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 }
 
 static void
-ivb_sprite_update_arm(struct intel_plane *plane,
+ivb_sprite_update_arm(struct intel_dsb *dsb,
+		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
@@ -874,7 +879,8 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 }
 
 static void
-ivb_sprite_disable_arm(struct intel_plane *plane,
+ivb_sprite_disable_arm(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
@@ -1133,7 +1139,8 @@ static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
 }
 
 static void
-g4x_sprite_update_noarm(struct intel_plane *plane,
+g4x_sprite_update_noarm(struct intel_dsb *dsb,
+			struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
@@ -1162,7 +1169,8 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 }
 
 static void
-g4x_sprite_update_arm(struct intel_plane *plane,
+g4x_sprite_update_arm(struct intel_dsb *dsb,
+		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
@@ -1206,7 +1214,8 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 }
 
 static void
-g4x_sprite_disable_arm(struct intel_plane *plane,
+g4x_sprite_disable_arm(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9452cad41d07..212b2d0d170e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -593,11 +593,11 @@ static u32 skl_plane_min_alignment(struct intel_plane *plane,
  * in full-range YCbCr.
  */
 static void
-icl_program_input_csc(struct intel_plane *plane,
-		      const struct intel_crtc_state *crtc_state,
+icl_program_input_csc(struct intel_dsb *dsb,
+		      struct intel_plane *plane,
 		      const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 
@@ -641,31 +641,31 @@ icl_program_input_csc(struct intel_plane *plane,
 	};
 	const u16 *csc = input_csc_matrix[plane_state->hw.color_encoding];
 
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
-			  ROFF(csc[0]) | GOFF(csc[1]));
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1),
-			  BOFF(csc[2]));
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2),
-			  ROFF(csc[3]) | GOFF(csc[4]));
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3),
-			  BOFF(csc[5]));
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4),
-			  ROFF(csc[6]) | GOFF(csc[7]));
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5),
-			  BOFF(csc[8]));
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
+			   ROFF(csc[0]) | GOFF(csc[1]));
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1),
+			   BOFF(csc[2]));
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2),
+			   ROFF(csc[3]) | GOFF(csc[4]));
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3),
+			   BOFF(csc[5]));
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4),
+			   ROFF(csc[6]) | GOFF(csc[7]));
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5),
+			   BOFF(csc[8]));
 
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
-			  PREOFF_YUV_TO_RGB_HI);
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
-			  PREOFF_YUV_TO_RGB_ME);
-	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
-			  PREOFF_YUV_TO_RGB_LO);
-	intel_de_write_fw(dev_priv,
-			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
-	intel_de_write_fw(dev_priv,
-			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
-	intel_de_write_fw(dev_priv,
-			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
+			   PREOFF_YUV_TO_RGB_HI);
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
+			   PREOFF_YUV_TO_RGB_ME);
+	intel_de_write_dsb(display, dsb, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
+			   PREOFF_YUV_TO_RGB_LO);
+	intel_de_write_dsb(display, dsb,
+			   PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
+	intel_de_write_dsb(display, dsb,
+			   PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
+	intel_de_write_dsb(display, dsb,
+			   PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
 }
 
 static unsigned int skl_plane_stride_mult(const struct drm_framebuffer *fb,
@@ -719,9 +719,11 @@ static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 	return val;
 }
 
-static void skl_write_plane_wm(struct intel_plane *plane,
+static void skl_write_plane_wm(struct intel_dsb *dsb,
+			       struct intel_plane *plane,
 			       const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
@@ -733,71 +735,75 @@ static void skl_write_plane_wm(struct intel_plane *plane,
 	int level;
 
 	for (level = 0; level < i915->display.wm.num_levels; level++)
-		intel_de_write_fw(i915, PLANE_WM(pipe, plane_id, level),
-				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
+		intel_de_write_dsb(display, dsb, PLANE_WM(pipe, plane_id, level),
+				   skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
 
-	intel_de_write_fw(i915, PLANE_WM_TRANS(pipe, plane_id),
-			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
+	intel_de_write_dsb(display, dsb, PLANE_WM_TRANS(pipe, plane_id),
+			   skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
 
 	if (HAS_HW_SAGV_WM(i915)) {
 		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
 
-		intel_de_write_fw(i915, PLANE_WM_SAGV(pipe, plane_id),
-				  skl_plane_wm_reg_val(&wm->sagv.wm0));
-		intel_de_write_fw(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
-				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
+		intel_de_write_dsb(display, dsb, PLANE_WM_SAGV(pipe, plane_id),
+				   skl_plane_wm_reg_val(&wm->sagv.wm0));
+		intel_de_write_dsb(display, dsb, PLANE_WM_SAGV_TRANS(pipe, plane_id),
+				   skl_plane_wm_reg_val(&wm->sagv.trans_wm));
 	}
 
-	intel_de_write_fw(i915, PLANE_BUF_CFG(pipe, plane_id),
-			  skl_plane_ddb_reg_val(ddb));
+	intel_de_write_dsb(display, dsb, PLANE_BUF_CFG(pipe, plane_id),
+			   skl_plane_ddb_reg_val(ddb));
 
 	if (DISPLAY_VER(i915) < 11)
-		intel_de_write_fw(i915, PLANE_NV12_BUF_CFG(pipe, plane_id),
-				  skl_plane_ddb_reg_val(ddb_y));
+		intel_de_write_dsb(display, dsb, PLANE_NV12_BUF_CFG(pipe, plane_id),
+				   skl_plane_ddb_reg_val(ddb_y));
 }
 
 static void
-skl_plane_disable_arm(struct intel_plane *plane,
+skl_plane_disable_arm(struct intel_dsb *dsb,
+		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 
-	skl_write_plane_wm(plane, crtc_state);
+	skl_write_plane_wm(dsb, plane, crtc_state);
 
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
+	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);
 }
 
-static void icl_plane_disable_sel_fetch_arm(struct intel_plane *plane,
+static void icl_plane_disable_sel_fetch_arm(struct intel_dsb *dsb,
+					    struct intel_plane *plane,
 					    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
+	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
 }
 
 static void
-icl_plane_disable_arm(struct intel_plane *plane,
+icl_plane_disable_arm(struct intel_dsb *dsb,
+		      struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 
 	if (icl_is_hdr_plane(dev_priv, plane_id))
-		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
+		intel_de_write_dsb(display, dsb, PLANE_CUS_CTL(pipe, plane_id), 0);
 
-	skl_write_plane_wm(plane, crtc_state);
+	skl_write_plane_wm(dsb, plane, crtc_state);
 
-	icl_plane_disable_sel_fetch_arm(plane, crtc_state);
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
+	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
+	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);
 }
 
 static bool
@@ -1234,28 +1240,30 @@ static u32 skl_plane_keymsk(const struct intel_plane_state *plane_state)
 	return keymsk;
 }
 
-static void icl_plane_csc_load_black(struct intel_plane *plane)
+static void icl_plane_csc_load_black(struct intel_dsb *dsb,
+				     struct intel_plane *plane,
+				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 
-	intel_de_write_fw(i915, PLANE_CSC_COEFF(pipe, plane_id, 0), 0);
-	intel_de_write_fw(i915, PLANE_CSC_COEFF(pipe, plane_id, 1), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_COEFF(pipe, plane_id, 0), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_COEFF(pipe, plane_id, 1), 0);
 
-	intel_de_write_fw(i915, PLANE_CSC_COEFF(pipe, plane_id, 2), 0);
-	intel_de_write_fw(i915, PLANE_CSC_COEFF(pipe, plane_id, 3), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_COEFF(pipe, plane_id, 2), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_COEFF(pipe, plane_id, 3), 0);
 
-	intel_de_write_fw(i915, PLANE_CSC_COEFF(pipe, plane_id, 4), 0);
-	intel_de_write_fw(i915, PLANE_CSC_COEFF(pipe, plane_id, 5), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_COEFF(pipe, plane_id, 4), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_COEFF(pipe, plane_id, 5), 0);
 
-	intel_de_write_fw(i915, PLANE_CSC_PREOFF(pipe, plane_id, 0), 0);
-	intel_de_write_fw(i915, PLANE_CSC_PREOFF(pipe, plane_id, 1), 0);
-	intel_de_write_fw(i915, PLANE_CSC_PREOFF(pipe, plane_id, 2), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_PREOFF(pipe, plane_id, 0), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_PREOFF(pipe, plane_id, 1), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_PREOFF(pipe, plane_id, 2), 0);
 
-	intel_de_write_fw(i915, PLANE_CSC_POSTOFF(pipe, plane_id, 0), 0);
-	intel_de_write_fw(i915, PLANE_CSC_POSTOFF(pipe, plane_id, 1), 0);
-	intel_de_write_fw(i915, PLANE_CSC_POSTOFF(pipe, plane_id, 2), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_POSTOFF(pipe, plane_id, 0), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_POSTOFF(pipe, plane_id, 1), 0);
+	intel_de_write_dsb(display, dsb, PLANE_CSC_POSTOFF(pipe, plane_id, 2), 0);
 }
 
 static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
@@ -1268,11 +1276,12 @@ static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
 }
 
 static void
-skl_plane_update_noarm(struct intel_plane *plane,
+skl_plane_update_noarm(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state,
 		       const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 stride = skl_plane_stride(plane_state, 0);
@@ -1287,21 +1296,23 @@ skl_plane_update_noarm(struct intel_plane *plane,
 		crtc_y = 0;
 	}
 
-	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
-			  PLANE_STRIDE_(stride));
-	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
-			  PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
-	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
-			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
+	intel_de_write_dsb(display, dsb, PLANE_STRIDE(pipe, plane_id),
+			   PLANE_STRIDE_(stride));
+	intel_de_write_dsb(display, dsb, PLANE_POS(pipe, plane_id),
+			   PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
+	intel_de_write_dsb(display, dsb, PLANE_SIZE(pipe, plane_id),
+			   PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
 
-	skl_write_plane_wm(plane, crtc_state);
+	skl_write_plane_wm(dsb, plane, crtc_state);
 }
 
 static void
-skl_plane_update_arm(struct intel_plane *plane,
+skl_plane_update_arm(struct intel_dsb *dsb,
+		     struct intel_plane *plane,
 		     const struct intel_crtc_state *crtc_state,
 		     const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
@@ -1321,22 +1332,26 @@ skl_plane_update_arm(struct intel_plane *plane,
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
-	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
-	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
-	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
+	intel_de_write_dsb(display, dsb, PLANE_KEYVAL(pipe, plane_id),
+			   skl_plane_keyval(plane_state));
+	intel_de_write_dsb(display, dsb, PLANE_KEYMSK(pipe, plane_id),
+			   skl_plane_keymsk(plane_state));
+	intel_de_write_dsb(display, dsb, PLANE_KEYMAX(pipe, plane_id),
+			   skl_plane_keymax(plane_state));
 
-	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
-			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
+	intel_de_write_dsb(display, dsb, PLANE_OFFSET(pipe, plane_id),
+			   PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
 
-	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
-			  skl_plane_aux_dist(plane_state, 0));
+	intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
+			   skl_plane_aux_dist(plane_state, 0));
 
-	intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
-			  PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
-			  PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
+	intel_de_write_dsb(display, dsb, PLANE_AUX_OFFSET(pipe, plane_id),
+			   PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
+			   PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
 
 	if (DISPLAY_VER(dev_priv) >= 10)
-		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
+		intel_de_write_dsb(display, dsb, PLANE_COLOR_CTL(pipe, plane_id),
+				   plane_color_ctl);
 
 	/*
 	 * Enable the scaler before the plane so that we don't
@@ -1353,17 +1368,19 @@ skl_plane_update_arm(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
-			  skl_plane_surf(plane_state, 0));
+	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
+			   plane_ctl);
+	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
+			   skl_plane_surf(plane_state, 0));
 }
 
-static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
+static void icl_plane_update_sel_fetch_noarm(struct intel_dsb *dsb,
+					     struct intel_plane *plane,
 					     const struct intel_crtc_state *crtc_state,
 					     const struct intel_plane_state *plane_state,
 					     int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	const struct drm_rect *clip;
 	u32 val;
@@ -1380,7 +1397,7 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
 		y = (clip->y1 + plane_state->uapi.dst.y1);
 	val = y << 16;
 	val |= plane_state->uapi.dst.x1;
-	intel_de_write_fw(i915, SEL_FETCH_PLANE_POS(pipe, plane->id), val);
+	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_POS(pipe, plane->id), val);
 
 	x = plane_state->view.color_plane[color_plane].x;
 
@@ -1395,20 +1412,21 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
 
 	val = y << 16 | x;
 
-	intel_de_write_fw(i915, SEL_FETCH_PLANE_OFFSET(pipe, plane->id),
-			  val);
+	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_OFFSET(pipe, plane->id), val);
 
 	/* Sizes are 0 based */
 	val = (drm_rect_height(clip) - 1) << 16;
 	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
-	intel_de_write_fw(i915, SEL_FETCH_PLANE_SIZE(pipe, plane->id), val);
+	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_SIZE(pipe, plane->id), val);
 }
 
 static void
-icl_plane_update_noarm(struct intel_plane *plane,
+icl_plane_update_noarm(struct intel_dsb *dsb,
+		       struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state,
 		       const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
@@ -1432,76 +1450,82 @@ icl_plane_update_noarm(struct intel_plane *plane,
 		crtc_y = 0;
 	}
 
-	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
-			  PLANE_STRIDE_(stride));
-	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
-			  PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
-	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
-			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
+	intel_de_write_dsb(display, dsb, PLANE_STRIDE(pipe, plane_id),
+			   PLANE_STRIDE_(stride));
+	intel_de_write_dsb(display, dsb, PLANE_POS(pipe, plane_id),
+			   PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
+	intel_de_write_dsb(display, dsb, PLANE_SIZE(pipe, plane_id),
+			   PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
 
-	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
-	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
-	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
+	intel_de_write_dsb(display, dsb, PLANE_KEYVAL(pipe, plane_id),
+			   skl_plane_keyval(plane_state));
+	intel_de_write_dsb(display, dsb, PLANE_KEYMSK(pipe, plane_id),
+			   skl_plane_keymsk(plane_state));
+	intel_de_write_dsb(display, dsb, PLANE_KEYMAX(pipe, plane_id),
+			   skl_plane_keymax(plane_state));
 
-	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
-			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
+	intel_de_write_dsb(display, dsb, PLANE_OFFSET(pipe, plane_id),
+			   PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
 
 	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier)) {
-		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 0),
-				  lower_32_bits(plane_state->ccval));
-		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 1),
-				  upper_32_bits(plane_state->ccval));
+		intel_de_write_dsb(display, dsb, PLANE_CC_VAL(pipe, plane_id, 0),
+				   lower_32_bits(plane_state->ccval));
+		intel_de_write_dsb(display, dsb, PLANE_CC_VAL(pipe, plane_id, 1),
+				   upper_32_bits(plane_state->ccval));
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
 	if (!HAS_FLAT_CCS(dev_priv) && DISPLAY_VER(dev_priv) < 20)
-		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
-				  skl_plane_aux_dist(plane_state, color_plane));
+		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
+				   skl_plane_aux_dist(plane_state, color_plane));
 
 	if (icl_is_hdr_plane(dev_priv, plane_id))
-		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
-				  plane_state->cus_ctl);
+		intel_de_write_dsb(display, dsb, PLANE_CUS_CTL(pipe, plane_id),
+				   plane_state->cus_ctl);
 
-	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
+	intel_de_write_dsb(display, dsb, PLANE_COLOR_CTL(pipe, plane_id),
+			   plane_color_ctl);
 
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
-		icl_program_input_csc(plane, crtc_state, plane_state);
+		icl_program_input_csc(dsb, plane, plane_state);
 
-	skl_write_plane_wm(plane, crtc_state);
+	skl_write_plane_wm(dsb, plane, crtc_state);
 
 	/*
 	 * FIXME: pxp session invalidation can hit any time even at time of commit
 	 * or after the commit, display content will be garbage.
 	 */
 	if (plane_state->force_black)
-		icl_plane_csc_load_black(plane);
+		icl_plane_csc_load_black(dsb, plane, crtc_state);
 
-	icl_plane_update_sel_fetch_noarm(plane, crtc_state, plane_state, color_plane);
+	icl_plane_update_sel_fetch_noarm(dsb, plane, crtc_state, plane_state, color_plane);
 }
 
-static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
+static void icl_plane_update_sel_fetch_arm(struct intel_dsb *dsb,
+					   struct intel_plane *plane,
 					   const struct intel_crtc_state *crtc_state,
 					   const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
 	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
-		intel_de_write_fw(i915, SEL_FETCH_PLANE_CTL(pipe, plane->id),
-				  SEL_FETCH_PLANE_CTL_ENABLE);
+		intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane->id),
+				   SEL_FETCH_PLANE_CTL_ENABLE);
 	else
-		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
+		icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
 }
 
 static void
-icl_plane_update_arm(struct intel_plane *plane,
+icl_plane_update_arm(struct intel_dsb *dsb,
+		     struct intel_plane *plane,
 		     const struct intel_crtc_state *crtc_state,
 		     const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	int color_plane = icl_plane_color_plane(plane_state);
@@ -1520,25 +1544,27 @@ icl_plane_update_arm(struct intel_plane *plane,
 	if (plane_state->scaler_id >= 0)
 		skl_program_plane_scaler(plane, crtc_state, plane_state);
 
-	icl_plane_update_sel_fetch_arm(plane, crtc_state, plane_state);
+	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
 
 	/*
 	 * The control register self-arms if the plane was previously
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
-			  skl_plane_surf(plane_state, color_plane));
+	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
+			   plane_ctl);
+	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
+			   skl_plane_surf(plane_state, color_plane));
 }
 
 static void
-skl_plane_async_flip(struct intel_plane *plane,
+skl_plane_async_flip(struct intel_dsb *dsb,
+		     struct intel_plane *plane,
 		     const struct intel_crtc_state *crtc_state,
 		     const struct intel_plane_state *plane_state,
 		     bool async_flip)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 plane_ctl = plane_state->ctl;
@@ -1548,9 +1574,10 @@ skl_plane_async_flip(struct intel_plane *plane,
 	if (async_flip)
 		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
 
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
-			  skl_plane_surf(plane_state, 0));
+	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
+			   plane_ctl);
+	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
+			   skl_plane_surf(plane_state, 0));
 }
 
 static bool intel_format_is_p01x(u32 format)
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index a50ab9eae40a..0ae3f02b9261 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -248,7 +248,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	 * the lookup of sysmem scratch pages.
 	 */
 	plane->check_plane(crtc_state, plane_state);
-	plane->async_flip(plane, crtc_state, plane_state, true);
+	plane->async_flip(NULL, plane, crtc_state, plane_state, true);
 	return;
 
 nofb:
-- 
2.44.2

