Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF20E7F0D77
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 09:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D291210E240;
	Mon, 20 Nov 2023 08:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB6810E1EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 08:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700468786; x=1732004786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=adHeLdOo/te+go1ZnLASbIWyr3FY5xthyO+ab6hY7TI=;
 b=OGpxvqf5lt9rD2D9TyBXIKxDPPevzCvxBrDc9ru5aFI8+r/dBZnZ1rVI
 XC2o1LVTTI0w/8LSsFrhQt+KiOw7NGtQuziVvY0NYU3t4Df6CKYUHLMtu
 NDRE33i268vqlubXqsfgZijOAsZbcJ/G8Q6Cvj3Qd1yjjtKO0jFadg9j8
 IPS4cfnahhGgahrvATYIG+6+XtaJv59b5Q4J7MypGbEg+dtfoNVoqi4MB
 RLdgN+Vp3xm3FfHeoLCSNm1U3SWtZz58gvnB5bCFT1WHW4G3firPA29sw
 G6VN5NvA4NVO4b55EBKvIB35YTU2poP8XB1yi1mIeW+JDe5kXJleo9POL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="4750878"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; 
   d="scan'208";a="4750878"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 00:26:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="883787730"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="883787730"
Received: from dbailonh-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.59])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 00:26:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 10:26:05 +0200
Message-Id: <20231120082606.3156488-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120082606.3156488-1-jouni.hogander@intel.com>
References: <20231120082606.3156488-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/psr: Move plane sel fetch
 configuration into plane source files
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

Currently selective fetch configuration for planes is implemented in psr
code. More suitable place for this code is where everything else is
configured for planes -> move it into skl_universal_plane.c and
intel_cursor.c. This also allows us to drop hooks for cursor handling.

v3: Checkpatch warnings fixed
v2: Removed setting sel_fetch_area->y1/y2 as -1

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 33 +++++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 75 -------------------
 drivers/gpu/drm/i915/display/intel_psr.h      | 10 ---
 .../drm/i915/display/skl_universal_plane.c    | 75 ++++++++++++++++++-
 4 files changed, 102 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index b342fad180ca..c025cafda7d9 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -21,6 +21,7 @@
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
 #include "intel_psr.h"
+#include "intel_psr_regs.h"
 #include "skl_watermark.h"
 
 /* Cursor formats */
@@ -484,6 +485,32 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
+					     const struct intel_crtc_state *crtc_state,
+					     const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+			  plane_state->ctl);
+}
+
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+}
+
 /* TODO: split into noarm+arm pair */
 static void i9xx_cursor_update_arm(struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state,
@@ -531,10 +558,10 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 		skl_write_cursor_wm(plane, crtc_state);
 
 	if (plane_state)
-		intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state,
-						       plane_state);
+		i9xx_cursor_update_sel_fetch_arm(plane, crtc_state,
+						 plane_state);
 	else
-		intel_psr2_disable_plane_sel_fetch_arm(plane, crtc_state);
+		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
 
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != fbc_ctl ||
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8d180132a74b..87eb1535ba98 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1914,81 +1914,6 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 }
 
-void intel_psr2_disable_plane_sel_fetch_arm(struct intel_plane *plane,
-					    const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	enum pipe pipe = plane->pipe;
-
-	if (!crtc_state->enable_psr2_sel_fetch)
-		return;
-
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
-}
-
-void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
-					    const struct intel_crtc_state *crtc_state,
-					    const struct intel_plane_state *plane_state)
-{
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	enum pipe pipe = plane->pipe;
-
-	if (!crtc_state->enable_psr2_sel_fetch)
-		return;
-
-	if (plane->id == PLANE_CURSOR)
-		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-				  plane_state->ctl);
-	else
-		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-				  PLANE_SEL_FETCH_CTL_ENABLE);
-}
-
-void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
-					      const struct intel_crtc_state *crtc_state,
-					      const struct intel_plane_state *plane_state,
-					      int color_plane)
-{
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	enum pipe pipe = plane->pipe;
-	const struct drm_rect *clip;
-	u32 val;
-	int x, y;
-
-	if (!crtc_state->enable_psr2_sel_fetch)
-		return;
-
-	if (plane->id == PLANE_CURSOR)
-		return;
-
-	clip = &plane_state->psr2_sel_fetch_area;
-
-	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
-	val |= plane_state->uapi.dst.x1;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
-
-	x = plane_state->view.color_plane[color_plane].x;
-
-	/*
-	 * From Bspec: UV surface Start Y Position = half of Y plane Y
-	 * start position.
-	 */
-	if (!color_plane)
-		y = plane_state->view.color_plane[color_plane].y + clip->y1;
-	else
-		y = plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
-
-	val = y << 16 | x;
-
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
-			  val);
-
-	/* Sizes are 0 based */
-	val = (drm_rect_height(clip) - 1) << 16;
-	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
-}
-
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 6a1f4573852b..143e0595c097 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -55,16 +55,6 @@ bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
-void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
-					      const struct intel_crtc_state *crtc_state,
-					      const struct intel_plane_state *plane_state,
-					      int color_plane);
-void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
-					    const struct intel_crtc_state *crtc_state,
-					    const struct intel_plane_state *plane_state);
-
-void intel_psr2_disable_plane_sel_fetch_arm(struct intel_plane *plane,
-					    const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 39499a0ec6c0..7cafa75c0802 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -18,6 +18,7 @@
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
 #include "intel_psr.h"
+#include "intel_psr_regs.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
@@ -629,6 +630,18 @@ skl_plane_disable_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
 }
 
+static void icl_plane_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+}
+
 static void
 icl_plane_disable_arm(struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state)
@@ -642,7 +655,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
 
 	skl_write_plane_wm(plane, crtc_state);
 
-	intel_psr2_disable_plane_sel_fetch_arm(plane, crtc_state);
+	icl_plane_disable_sel_fetch_arm(plane, crtc_state);
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
 }
@@ -1196,6 +1209,48 @@ skl_plane_update_arm(struct intel_plane *plane,
 			  skl_plane_surf(plane_state, 0));
 }
 
+static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
+					     const struct intel_crtc_state *crtc_state,
+					     const struct intel_plane_state *plane_state,
+					     int color_plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+	const struct drm_rect *clip;
+	u32 val;
+	int x, y;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	clip = &plane_state->psr2_sel_fetch_area;
+
+	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
+	val |= plane_state->uapi.dst.x1;
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
+
+	x = plane_state->view.color_plane[color_plane].x;
+
+	/*
+	 * From Bspec: UV surface Start Y Position = half of Y plane Y
+	 * start position.
+	 */
+	if (!color_plane)
+		y = plane_state->view.color_plane[color_plane].y + clip->y1;
+	else
+		y = plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
+
+	val = y << 16 | x;
+
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
+			  val);
+
+	/* Sizes are 0 based */
+	val = (drm_rect_height(clip) - 1) << 16;
+	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
+}
+
 static void
 icl_plane_update_noarm(struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state,
@@ -1268,7 +1323,21 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	if (plane_state->force_black)
 		icl_plane_csc_load_black(plane);
 
-	intel_psr2_program_plane_sel_fetch_noarm(plane, crtc_state, plane_state, color_plane);
+	icl_plane_update_sel_fetch_noarm(plane, crtc_state, plane_state, color_plane);
+}
+
+static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
+					   const struct intel_crtc_state *crtc_state,
+					   const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+			  PLANE_SEL_FETCH_CTL_ENABLE);
 }
 
 static void
@@ -1295,7 +1364,7 @@ icl_plane_update_arm(struct intel_plane *plane,
 	if (plane_state->scaler_id >= 0)
 		skl_program_plane_scaler(plane, crtc_state, plane_state);
 
-	intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state, plane_state);
+	icl_plane_update_sel_fetch_arm(plane, crtc_state, plane_state);
 
 	/*
 	 * The control register self-arms if the plane was previously
-- 
2.34.1

