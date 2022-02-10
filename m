Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9644B063B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 07:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 713CF89DE5;
	Thu, 10 Feb 2022 06:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3363089DE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 06:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644474249; x=1676010249;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mRDS9w9xoJfithiqi6GNq9VbIfH4UJr49VX2xnMpC3Y=;
 b=KgVcPVu0DA1qUGXiQMssUVSLYuVAJhRl7GRgGPLSsWua169Du6TnIzbH
 USeq/gFgy+ZQNzmtoIzM532Yo5+rBAzGNyXq1y/AQ5dcXvBndyCm1Oz02
 QRISDALXGow01gyAJCW0jJSYJWec0p6aRmqMqMwgRzouN3HV80f7WpHiI
 Z+9xqpTplOiOSoLuPDiUZoPJmRfj25gUnFJHVSkylkmWVht98yTsAuqW/
 3Z3NqTgZTV0/Mg7HmG/BdYL9B72EyBIzIHno+58HWll7UADOXGkDJIoPg
 SmoKd+DIZOTo4AuwqD+FWKhJ+vTj06EkNC9H/btNAMTNWyJFAzdvBiEbk Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="229390491"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="229390491"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 22:24:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="537206988"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 09 Feb 2022 22:24:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Feb 2022 08:24:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 08:23:59 +0200
Message-Id: <20220210062403.18690-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915: Optimize icl+ universal plane
 programming
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

On icl+ all plane registers are armed by PLANE_SURF, so we can
move almost everything over into the update_noarm() hook.

The PLANE_CTL write has to stay in the icl_update_arm() hook though
as it still exhibits the somewhat annoying self-arming behaviour
when the plane transitioning from disabled to enabled.

We could either do a full split for skl+ vs. icl+, or we could try
some other kind of split where we'd eg. keep most things in the skl+
functions and call them from the icl+ functions. I think a full split
is probably the cleaner approach since we've anyway accumulated quite
a bit of icl+ specific things, so that is what I opted to do.

Some i915_update_info stats for tgl:
before:                             after:
Updates: 5043                       Updates: 5043
       |                                   |
   1us |                               1us |
       |**                                 |***
   4us |******                         4us |********
       |**********                         |***********
  16us |***********                   16us |**********
       |****                               |*
  66us |                              66us |
       |                                   |
 262us |                             262us |
       |                                   |
   1ms |                               1ms |
       |                                   |
   4ms |                               4ms |
       |                                   |
  17ms |                              17ms |
       |                                   |
Min update: 3494ns                  Min update: 2983ns
Max update: 49491ns                 Max update: 39986ns
Average update: 18031ns             Average update: 13423ns
Overruns > 100us: 0                 Overruns > 100us: 0

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 195 ++++++++++++++----
 1 file changed, 155 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1223075595ff..5b1b089e045d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -619,6 +619,25 @@ skl_plane_disable_arm(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
+	skl_write_plane_wm(plane, crtc_state);
+
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
+static void
+icl_plane_disable_arm(struct intel_plane *plane,
+		      const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum plane_id plane_id = plane->id;
+	enum pipe pipe = plane->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
 	if (icl_is_hdr_plane(dev_priv, plane_id))
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
 
@@ -1065,7 +1084,7 @@ static void icl_plane_csc_load_black(struct intel_plane *plane)
 	intel_de_write_fw(i915, PLANE_CSC_POSTOFF(pipe, plane_id, 2), 0);
 }
 
-static int skl_plane_color_plane(const struct intel_plane_state *plane_state)
+static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
 {
 	/* Program the UV plane on planar master */
 	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
@@ -1082,9 +1101,7 @@ skl_plane_update_noarm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	int color_plane = skl_plane_color_plane(plane_state);
-	u32 stride = skl_plane_stride(plane_state, color_plane);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	u32 stride = skl_plane_stride(plane_state, 0);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
 	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
@@ -1099,12 +1116,109 @@ skl_plane_update_noarm(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
+	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
+			  PLANE_STRIDE_(stride));
+	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
+			  PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
+	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
+			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
+
+	skl_write_plane_wm(plane, crtc_state);
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
+static void
+skl_plane_update_arm(struct intel_plane *plane,
+		     const struct intel_crtc_state *crtc_state,
+		     const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum plane_id plane_id = plane->id;
+	enum pipe pipe = plane->pipe;
+	u32 x = plane_state->view.color_plane[0].x;
+	u32 y = plane_state->view.color_plane[0].y;
+	u32 plane_ctl, plane_color_ctl = 0;
+	unsigned long irqflags;
+
+	plane_ctl = plane_state->ctl |
+		skl_plane_ctl_crtc(crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 10)
+		plane_color_ctl = plane_state->color_ctl |
+			glk_plane_color_ctl_crtc(crtc_state);
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
+	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
+	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
+	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
+
+	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
+			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
+
+	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
+			  skl_plane_aux_dist(plane_state, 0));
+
+	intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
+			  PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
+			  PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
+
+	if (DISPLAY_VER(dev_priv) >= 10)
+		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
+
+	/*
+	 * Enable the scaler before the plane so that we don't
+	 * get a catastrophic underrun even if the two operations
+	 * end up happening in two different frames.
+	 *
+	 * TODO: split into noarm+arm pair
+	 */
+	if (plane_state->scaler_id >= 0)
+		skl_program_plane_scaler(plane, crtc_state, plane_state);
+
 	/*
-	 * FIXME: pxp session invalidation can hit any time even at time of commit
-	 * or after the commit, display content will be garbage.
+	 * The control register self-arms if the plane was previously
+	 * disabled. Try to make the plane enable atomic by writing
+	 * the control register just before the surface register.
 	 */
-	if (plane_state->force_black)
-		icl_plane_csc_load_black(plane);
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
+			  skl_plane_surf(plane_state, 0));
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
+static void
+icl_plane_update_noarm(struct intel_plane *plane,
+		       const struct intel_crtc_state *crtc_state,
+		       const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum plane_id plane_id = plane->id;
+	enum pipe pipe = plane->pipe;
+	int color_plane = icl_plane_color_plane(plane_state);
+	u32 stride = skl_plane_stride(plane_state, color_plane);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	int crtc_x = plane_state->uapi.dst.x1;
+	int crtc_y = plane_state->uapi.dst.y1;
+	int x = plane_state->view.color_plane[color_plane].x;
+	int y = plane_state->view.color_plane[color_plane].y;
+	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
+	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
+	u32 plane_color_ctl;
+	unsigned long irqflags;
+
+	plane_color_ctl = plane_state->color_ctl |
+		glk_plane_color_ctl_crtc(crtc_state);
+
+	/* The scaler will handle the output position */
+	if (plane_state->scaler_id >= 0) {
+		crtc_x = 0;
+		crtc_y = 0;
+	}
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
 			  PLANE_STRIDE_(stride));
@@ -1113,6 +1227,13 @@ skl_plane_update_noarm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
 			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
 
+	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
+	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
+	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
+
+	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
+			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
+
 	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier)) {
 		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 0),
 				  lower_32_bits(plane_state->ccval));
@@ -1120,61 +1241,49 @@ skl_plane_update_noarm(struct intel_plane *plane,
 				  upper_32_bits(plane_state->ccval));
 	}
 
+	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
+			  skl_plane_aux_dist(plane_state, color_plane));
+
 	if (icl_is_hdr_plane(dev_priv, plane_id))
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
 				  plane_state->cus_ctl);
 
+	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
+
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
 	skl_write_plane_wm(plane, crtc_state);
 
+	/*
+	 * FIXME: pxp session invalidation can hit any time even at time of commit
+	 * or after the commit, display content will be garbage.
+	 */
+	if (plane_state->force_black)
+		icl_plane_csc_load_black(plane);
+
 	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
-skl_plane_update_arm(struct intel_plane *plane,
+icl_plane_update_arm(struct intel_plane *plane,
 		     const struct intel_crtc_state *crtc_state,
 		     const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	int color_plane = skl_plane_color_plane(plane_state);
-	u32 x = plane_state->view.color_plane[color_plane].x;
-	u32 y = plane_state->view.color_plane[color_plane].y;
-	u32 plane_color_ctl = 0;
-	u32 plane_ctl = plane_state->ctl;
+	int color_plane = icl_plane_color_plane(plane_state);
+	u32 plane_ctl;
 	unsigned long irqflags;
 
-	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
-
-	if (DISPLAY_VER(dev_priv) >= 10)
-		plane_color_ctl = plane_state->color_ctl |
-			glk_plane_color_ctl_crtc(crtc_state);
+	plane_ctl = plane_state->ctl |
+		skl_plane_ctl_crtc(crtc_state);
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
-	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
-	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
-
-	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
-			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
-
-	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
-			  skl_plane_aux_dist(plane_state, color_plane));
-
-	if (DISPLAY_VER(dev_priv) < 11)
-		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
-				  PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
-				  PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
-
-	if (DISPLAY_VER(dev_priv) >= 10)
-		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
-
 	/*
 	 * Enable the scaler before the plane so that we don't
 	 * get a catastrophic underrun even if the two operations
@@ -2162,9 +2271,15 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	}
 
 	plane->max_stride = skl_plane_max_stride;
-	plane->update_noarm = skl_plane_update_noarm;
-	plane->update_arm = skl_plane_update_arm;
-	plane->disable_arm = skl_plane_disable_arm;
+	if (DISPLAY_VER(dev_priv) >= 11) {
+		plane->update_noarm = icl_plane_update_noarm;
+		plane->update_arm = icl_plane_update_arm;
+		plane->disable_arm = icl_plane_disable_arm;
+	} else {
+		plane->update_noarm = skl_plane_update_noarm;
+		plane->update_arm = skl_plane_update_arm;
+		plane->disable_arm = skl_plane_disable_arm;
+	}
 	plane->get_hw_state = skl_plane_get_hw_state;
 	plane->check_plane = skl_plane_check;
 
-- 
2.34.1

