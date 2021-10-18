Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FB8431820
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 13:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52D76E9ED;
	Mon, 18 Oct 2021 11:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11636E9ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 11:51:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="215158098"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="215158098"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 04:51:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="629174520"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 18 Oct 2021 04:50:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 14:50:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Date: Mon, 18 Oct 2021 14:50:29 +0300
Message-Id: <20211018115030.3547-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Split ivb+ sprite plane update
 into noarm+arm pair
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

Chop ivb_sprite_update() into two halves. Fist half becomes
the _noarm() variant, second part the _arm() variant.

Fortunately I have already previously grouped the register
writes into roughtly the correct order, so the split looks
surprisingly clean.

Didn't bother with i915_update_info numbers for this one.
I expect the results to be pretty much identical to the snb
numbers from the corresponding g4x+ sprite modification.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 42 ++++++++++++++-------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 03e3bf890ce9..4e5f95aebeca 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -835,30 +835,22 @@ static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
 	i++;
 }
 
-/* TODO: split into noarm+arm pair */
 static void
-ivb_sprite_update_arm(struct intel_plane *plane,
-		      const struct intel_crtc_state *crtc_state,
-		      const struct intel_plane_state *plane_state)
+ivb_sprite_update_noarm(struct intel_plane *plane,
+			const struct intel_crtc_state *crtc_state,
+			const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
-	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
-	u32 linear_offset;
-	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
 	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
 	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
-	u32 x = plane_state->view.color_plane[0].x;
-	u32 y = plane_state->view.color_plane[0].y;
 	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	u32 sprctl, sprscale = 0;
+	u32 sprscale = 0;
 	unsigned long irqflags;
 
-	sprctl = plane_state->ctl | ivb_sprite_ctl_crtc(crtc_state);
-
 	/* Sizes are 0 based */
 	src_w--;
 	src_h--;
@@ -868,8 +860,6 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 	if (crtc_w != src_w || crtc_h != src_h)
 		sprscale = SPRITE_SCALE_ENABLE | (src_w << 16) | src_h;
 
-	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
-
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
@@ -879,6 +869,29 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 	if (IS_IVYBRIDGE(dev_priv))
 		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
 
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
+static void
+ivb_sprite_update_arm(struct intel_plane *plane,
+		      const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
+	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
+	u32 x = plane_state->view.color_plane[0].x;
+	u32 y = plane_state->view.color_plane[0].y;
+	u32 sprctl, linear_offset;
+	unsigned long irqflags;
+
+	sprctl = plane_state->ctl | ivb_sprite_ctl_crtc(crtc_state);
+
+	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
 	if (key->flags) {
 		intel_de_write_fw(dev_priv, SPRKEYVAL(pipe), key->min_value);
 		intel_de_write_fw(dev_priv, SPRKEYMSK(pipe),
@@ -1796,6 +1809,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 
 		plane_funcs = &vlv_sprite_funcs;
 	} else if (DISPLAY_VER(dev_priv) >= 7) {
+		plane->update_noarm = ivb_sprite_update_noarm;
 		plane->update_arm = ivb_sprite_update_arm;
 		plane->disable_arm = ivb_sprite_disable_arm;
 		plane->get_hw_state = ivb_sprite_get_hw_state;
-- 
2.32.0

