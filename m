Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 586F7465199
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2C36ECED;
	Wed,  1 Dec 2021 15:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9FA6ECD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="235208645"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="235208645"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="500291277"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 01 Dec 2021 07:26:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:52 +0200
Message-Id: <20211201152552.7821-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/14] drm/i915: Nuke pointless middle men for
 skl+ plane programming
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

There is no real point in having this two stage
skl_program_plane*() vs. skl_plane_update*() wrapper stuff.
All we need to do is determine the correct color plane and
we're done.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 53 ++++++-------------
 1 file changed, 17 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 92270679a99c..de2708ac1802 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1053,15 +1053,24 @@ static void icl_plane_csc_load_black(struct intel_plane *plane)
 	intel_de_write_fw(i915, PLANE_CSC_POSTOFF(pipe, plane_id, 2), 0);
 }
 
+static int skl_plane_color_plane(const struct intel_plane_state *plane_state)
+{
+	/* Program the UV plane on planar master */
+	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
+		return 1;
+	else
+		return 0;
+}
+
 static void
-skl_program_plane_noarm(struct intel_plane *plane,
-			const struct intel_crtc_state *crtc_state,
-			const struct intel_plane_state *plane_state,
-			int color_plane)
+skl_plane_update_noarm(struct intel_plane *plane,
+		       const struct intel_crtc_state *crtc_state,
+		       const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
+	int color_plane = skl_plane_color_plane(plane_state);
 	u32 stride = skl_plane_stride(plane_state, color_plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int crtc_x = plane_state->uapi.dst.x1;
@@ -1114,14 +1123,14 @@ skl_program_plane_noarm(struct intel_plane *plane,
 }
 
 static void
-skl_program_plane_arm(struct intel_plane *plane,
-		      const struct intel_crtc_state *crtc_state,
-		      const struct intel_plane_state *plane_state,
-		      int color_plane)
+skl_plane_update_arm(struct intel_plane *plane,
+		     const struct intel_crtc_state *crtc_state,
+		     const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
+	int color_plane = skl_plane_color_plane(plane_state);
 	u32 x = plane_state->view.color_plane[color_plane].x;
 	u32 y = plane_state->view.color_plane[color_plane].y;
 	u32 plane_color_ctl = 0;
@@ -1202,34 +1211,6 @@ skl_plane_async_flip(struct intel_plane *plane,
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
-static void
-skl_plane_update_noarm(struct intel_plane *plane,
-		       const struct intel_crtc_state *crtc_state,
-		       const struct intel_plane_state *plane_state)
-{
-	int color_plane = 0;
-
-	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
-		/* Program the UV plane on planar master */
-		color_plane = 1;
-
-	skl_program_plane_noarm(plane, crtc_state, plane_state, color_plane);
-}
-
-static void
-skl_plane_update_arm(struct intel_plane *plane,
-		     const struct intel_crtc_state *crtc_state,
-		     const struct intel_plane_state *plane_state)
-{
-	int color_plane = 0;
-
-	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
-		/* Program the UV plane on planar master */
-		color_plane = 1;
-
-	skl_program_plane_arm(plane, crtc_state, plane_state, color_plane);
-}
-
 static bool intel_format_is_p01x(u32 format)
 {
 	switch (format) {
-- 
2.32.0

