Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7544743181E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 13:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35B06E9EC;
	Mon, 18 Oct 2021 11:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05A86E9E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 11:50:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="291700303"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="291700303"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 04:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="572806382"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 18 Oct 2021 04:50:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 14:50:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Date: Mon, 18 Oct 2021 14:50:27 +0300
Message-Id: <20211018115030.3547-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Split pre-skl primary plane
 update into noarm+arm pair
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

Chop i9xx_plane_update() into two halves. Fist half becomes
the _noarm() variant, second part the _arm() variant.

Fortunately I have already previously grouped the register
writes into roughtly the correct order, so the split looks
surprisingly clean.

One slightly surprising fact was that the CHV pipe B PRIMPOS/SIZE
registers are self arming unlike their pre-ctg DSPPOS/SIZE
counterparts. In fact all the new CHV pipe B registers are
self arming.

I didn't do any i915_update_info measurements for this one
alone. I'll get total numbers with the corrsponding sprite
plane changes.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c | 61 +++++++++++++++--------
 1 file changed, 40 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 93163f9100a8..9dfd0a53e0ee 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -418,23 +418,49 @@ static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	return DIV_ROUND_UP(pixel_rate * num, den);
 }
 
-/* TODO: split into noarm+arm pair */
+static void i9xx_plane_update_noarm(struct intel_plane *plane,
+				    const struct intel_crtc_state *crtc_state,
+				    const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
+	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
+			  plane_state->view.color_plane[0].stride);
+
+	if (DISPLAY_VER(dev_priv) < 4) {
+		int crtc_x = plane_state->uapi.dst.x1;
+		int crtc_y = plane_state->uapi.dst.y1;
+		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
+		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
+
+		/*
+		 * PLANE_A doesn't actually have a full window
+		 * generator but let's assume we still need to
+		 * program whatever is there.
+		 */
+		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
+				  (crtc_y << 16) | crtc_x);
+		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
+				  ((crtc_h - 1) << 16) | (crtc_w - 1));
+	}
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
 static void i9xx_plane_update_arm(struct intel_plane *plane,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	u32 linear_offset;
 	int x = plane_state->view.color_plane[0].x;
 	int y = plane_state->view.color_plane[0].y;
-	int crtc_x = plane_state->uapi.dst.x1;
-	int crtc_y = plane_state->uapi.dst.y1;
-	int crtc_w = drm_rect_width(&plane_state->uapi.dst);
-	int crtc_h = drm_rect_height(&plane_state->uapi.dst);
+	u32 dspcntr, dspaddr_offset, linear_offset;
 	unsigned long irqflags;
-	u32 dspaddr_offset;
-	u32 dspcntr;
 
 	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 
@@ -447,20 +473,12 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
-			  plane_state->view.color_plane[0].stride);
+	if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
+		int crtc_x = plane_state->uapi.dst.x1;
+		int crtc_y = plane_state->uapi.dst.y1;
+		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
+		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
 
-	if (DISPLAY_VER(dev_priv) < 4) {
-		/*
-		 * PLANE_A doesn't actually have a full window
-		 * generator but let's assume we still need to
-		 * program whatever is there.
-		 */
-		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
-				  (crtc_y << 16) | crtc_x);
-		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
-				  ((crtc_h - 1) << 16) | (crtc_w - 1));
-	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
 		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
 				  (crtc_y << 16) | crtc_x);
 		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
@@ -852,6 +870,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 			plane->max_stride = ilk_primary_max_stride;
 	}
 
+	plane->update_noarm = i9xx_plane_update_noarm;
 	plane->update_arm = i9xx_plane_update_arm;
 	plane->disable_arm = i9xx_plane_disable_arm;
 	plane->get_hw_state = i9xx_plane_get_hw_state;
-- 
2.32.0

