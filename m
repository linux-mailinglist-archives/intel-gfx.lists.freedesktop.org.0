Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1894B063C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 07:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4CB89E15;
	Thu, 10 Feb 2022 06:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C574F89DE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 06:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644474251; x=1676010251;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PpGFh7a/OY4Logt2t/BUrFXtZtJqcnt/JlgJv5p6g5Q=;
 b=IZ0DYRvpMc+i7VLtOsT4nTPRZG7WoB6vMZtO+znOI2B09pxw7K0GKzNH
 P4vWQV/ggU+RSceIF0CvqYtA/SX+5Rx+P6znXTSECv4OparN2jYIN5yZh
 8JC6BdeExgjpZXe54XILsJ9Kes1emexF6mbuR5JmOl0K2kmq/DD0FxZmN
 b6BUKbxMqxbAFMbAjq0A27Kx2BIy4lq7hTKSeK5BW5qaiHls+0e7dBGx4
 2ECe4Jvmkj/aNHexbQjSaHo3pwI2YpTRng1CGAs7/z2xWJFUZwFiGuCsb
 W25TAxWUZjsIR4XgLnQdSkjyPT5WZB6TEF/T1ilfXorskv1LNEZ2C340P A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="229390494"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="229390494"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 22:24:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="679041687"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 09 Feb 2022 22:24:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Feb 2022 08:24:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 08:24:00 +0200
Message-Id: <20220210062403.18690-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915: Make skl+ universal plane
 registers unlocked
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

Drop the locks around most universal plane register writes.
The lock isn't needed since each plane's register are neatly
contained on their own cachelines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 35 -------------------
 1 file changed, 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 5b1b089e045d..db9e31c12169 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -615,16 +615,11 @@ skl_plane_disable_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	skl_write_plane_wm(plane, crtc_state);
 
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -634,9 +629,6 @@ icl_plane_disable_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	if (icl_is_hdr_plane(dev_priv, plane_id))
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
@@ -646,8 +638,6 @@ icl_plane_disable_arm(struct intel_plane *plane,
 	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static bool
@@ -1106,7 +1096,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
 	int crtc_y = plane_state->uapi.dst.y1;
 	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	unsigned long irqflags;
 
 	/* The scaler will handle the output position */
 	if (plane_state->scaler_id >= 0) {
@@ -1114,8 +1103,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
 		crtc_y = 0;
 	}
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
 			  PLANE_STRIDE_(stride));
 	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
@@ -1124,8 +1111,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
 			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
 
 	skl_write_plane_wm(plane, crtc_state);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1139,7 +1124,6 @@ skl_plane_update_arm(struct intel_plane *plane,
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
 	u32 plane_ctl, plane_color_ctl = 0;
-	unsigned long irqflags;
 
 	plane_ctl = plane_state->ctl |
 		skl_plane_ctl_crtc(crtc_state);
@@ -1148,8 +1132,6 @@ skl_plane_update_arm(struct intel_plane *plane,
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
 	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
 	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
@@ -1185,8 +1167,6 @@ skl_plane_update_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
 			  skl_plane_surf(plane_state, 0));
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1207,7 +1187,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	u32 plane_color_ctl;
-	unsigned long irqflags;
 
 	plane_color_ctl = plane_state->color_ctl |
 		glk_plane_color_ctl_crtc(crtc_state);
@@ -1218,8 +1197,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
 		crtc_y = 0;
 	}
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
 			  PLANE_STRIDE_(stride));
 	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
@@ -1263,8 +1240,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
 		icl_plane_csc_load_black(plane);
 
 	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1277,13 +1252,10 @@ icl_plane_update_arm(struct intel_plane *plane,
 	enum pipe pipe = plane->pipe;
 	int color_plane = icl_plane_color_plane(plane_state);
 	u32 plane_ctl;
-	unsigned long irqflags;
 
 	plane_ctl = plane_state->ctl |
 		skl_plane_ctl_crtc(crtc_state);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	/*
 	 * Enable the scaler before the plane so that we don't
 	 * get a catastrophic underrun even if the two operations
@@ -1302,8 +1274,6 @@ icl_plane_update_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
 			  skl_plane_surf(plane_state, color_plane));
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1313,7 +1283,6 @@ skl_plane_async_flip(struct intel_plane *plane,
 		     bool async_flip)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	unsigned long irqflags;
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 plane_ctl = plane_state->ctl;
@@ -1323,13 +1292,9 @@ skl_plane_async_flip(struct intel_plane *plane,
 	if (async_flip)
 		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
 			  skl_plane_surf(plane_state, 0));
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static bool intel_format_is_p01x(u32 format)
-- 
2.34.1

