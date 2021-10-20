Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 506D0435543
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 23:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1FE6E3D6;
	Wed, 20 Oct 2021 21:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B496E3D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 21:28:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="229156617"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="229156617"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 14:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="491524487"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 20 Oct 2021 14:27:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Oct 2021 00:27:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Date: Thu, 21 Oct 2021 00:27:57 +0300
Message-Id: <20211020212757.13517-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018115030.3547-7-ville.syrjala@linux.intel.com>
References: <20211018115030.3547-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Split pre-skl primary plane
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

Also we must remind ourselves that i830/i845 are a bit borked
in that all of their plane registers are self-arming.

I didn't do any i915_update_info measurements for this one
alone. I'll get total numbers with the corrsponding sprite
plane changes.

v2: Don't break my precious i830/i845

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c | 85 ++++++++++++++++-------
 1 file changed, 61 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 93163f9100a8..66aa79abe71c 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -418,32 +418,13 @@ static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	return DIV_ROUND_UP(pixel_rate * num, den);
 }
 
-/* TODO: split into noarm+arm pair */
-static void i9xx_plane_update_arm(struct intel_plane *plane,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct intel_plane_state *plane_state)
+static void i9xx_plane_update_noarm(struct intel_plane *plane,
+				    const struct intel_crtc_state *crtc_state,
+				    const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	u32 linear_offset;
-	int x = plane_state->view.color_plane[0].x;
-	int y = plane_state->view.color_plane[0].y;
-	int crtc_x = plane_state->uapi.dst.x1;
-	int crtc_y = plane_state->uapi.dst.y1;
-	int crtc_w = drm_rect_width(&plane_state->uapi.dst);
-	int crtc_h = drm_rect_height(&plane_state->uapi.dst);
 	unsigned long irqflags;
-	u32 dspaddr_offset;
-	u32 dspcntr;
-
-	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
-
-	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
-
-	if (DISPLAY_VER(dev_priv) >= 4)
-		dspaddr_offset = plane_state->view.color_plane[0].offset;
-	else
-		dspaddr_offset = linear_offset;
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
@@ -451,6 +432,11 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 			  plane_state->view.color_plane[0].stride);
 
 	if (DISPLAY_VER(dev_priv) < 4) {
+		int crtc_x = plane_state->uapi.dst.x1;
+		int crtc_y = plane_state->uapi.dst.y1;
+		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
+		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
+
 		/*
 		 * PLANE_A doesn't actually have a full window
 		 * generator but let's assume we still need to
@@ -460,7 +446,39 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 				  (crtc_y << 16) | crtc_x);
 		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
 				  ((crtc_h - 1) << 16) | (crtc_w - 1));
-	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
+	}
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
+static void i9xx_plane_update_arm(struct intel_plane *plane,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	int x = plane_state->view.color_plane[0].x;
+	int y = plane_state->view.color_plane[0].y;
+	u32 dspcntr, dspaddr_offset, linear_offset;
+	unsigned long irqflags;
+
+	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
+
+	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
+
+	if (DISPLAY_VER(dev_priv) >= 4)
+		dspaddr_offset = plane_state->view.color_plane[0].offset;
+	else
+		dspaddr_offset = linear_offset;
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
+	if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
+		int crtc_x = plane_state->uapi.dst.x1;
+		int crtc_y = plane_state->uapi.dst.y1;
+		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
+		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
+
 		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
 				  (crtc_y << 16) | crtc_x);
 		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
@@ -494,6 +512,20 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
+static void i830_plane_update_arm(struct intel_plane *plane,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct intel_plane_state *plane_state)
+{
+	/*
+	 * On i830/i845 all registers are self-arming [ALM040].
+	 *
+	 * Additional breakage on i830 causes register reads to return
+	 * the last latched value instead of the last written value [ALM026].
+	 */
+	i9xx_plane_update_noarm(plane, crtc_state, plane_state);
+	i9xx_plane_update_arm(plane, crtc_state, plane_state);
+}
+
 static void i9xx_plane_disable_arm(struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state)
 {
@@ -852,7 +884,12 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 			plane->max_stride = ilk_primary_max_stride;
 	}
 
-	plane->update_arm = i9xx_plane_update_arm;
+	if (IS_I830(dev_priv) || IS_I845G(dev_priv)) {
+		plane->update_arm = i830_plane_update_arm;
+	} else {
+		plane->update_noarm = i9xx_plane_update_noarm;
+		plane->update_arm = i9xx_plane_update_arm;
+	}
 	plane->disable_arm = i9xx_plane_disable_arm;
 	plane->get_hw_state = i9xx_plane_get_hw_state;
 	plane->check_plane = i9xx_plane_check;
-- 
2.32.0

