Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3092046519C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:27:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5883C6ECFB;
	Wed,  1 Dec 2021 15:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79806ECFB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:27:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236706318"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236706318"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="654818605"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Dec 2021 07:26:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:50 +0200
Message-Id: <20211201152552.7821-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Extract skl_plane_aux_dist()
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

Extract the PLANE_AUX_DIST stuff into a small helper to
dclutter skl_program_plane_arm() a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 35 ++++++++++++-------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 79998eb67280..c7de643d16dd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -981,6 +981,26 @@ static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
 	return plane_surf;
 }
 
+static u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
+			      int color_plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
+	u32 aux_dist;
+
+	if (!aux_plane)
+		return 0;
+
+	aux_dist = skl_surf_address(plane_state, aux_plane) -
+		skl_surf_address(plane_state, color_plane);
+
+	if (DISPLAY_VER(i915) < 12)
+		aux_dist |= PLANE_AUX_STRIDE(skl_plane_stride(plane_state, aux_plane));
+
+	return aux_dist;
+}
+
 static void icl_plane_csc_load_black(struct intel_plane *plane)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
@@ -1075,11 +1095,9 @@ skl_program_plane_arm(struct intel_plane *plane,
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
 	u32 x = plane_state->view.color_plane[color_plane].x;
 	u32 y = plane_state->view.color_plane[color_plane].y;
-	u32 keymsk, keymax, aux_dist = 0, plane_color_ctl = 0;
+	u32 keymsk, keymax, plane_color_ctl = 0;
 	u8 alpha = plane_state->hw.alpha >> 8;
 	u32 plane_ctl = plane_state->ctl;
 	unsigned long irqflags;
@@ -1096,14 +1114,6 @@ skl_program_plane_arm(struct intel_plane *plane,
 	if (alpha < 0xff)
 		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
 
-	if (aux_plane) {
-		aux_dist = skl_surf_address(plane_state, aux_plane) -
-			skl_surf_address(plane_state, color_plane);
-
-		if (DISPLAY_VER(dev_priv) < 12)
-			aux_dist |= PLANE_AUX_STRIDE(skl_plane_stride(plane_state, aux_plane));
-	}
-
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
@@ -1114,7 +1124,8 @@ skl_program_plane_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
 			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
 
-	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
+	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
+			  skl_plane_aux_dist(plane_state, color_plane));
 
 	if (DISPLAY_VER(dev_priv) < 11)
 		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
-- 
2.32.0

