Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F71495E6B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4738E10EA8D;
	Fri, 21 Jan 2022 11:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2717710EA89
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764658; x=1674300658;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rMozzt+FRQNZLaZHDDRmYF+sPIxTWahxRx87SA1jY3E=;
 b=ngi/X/YM5vPVp1OVs2g5C7Op2jNNjsobwN5p775ZNnCOT3aAhxlcWTZA
 PcF0OuKuxvTJBiCNBPMvUNP1Hz5xA1jhNFv83lIUY7qQesoTmZ2EXVkWl
 ySAz24y99J4r3lr77Dqg0imxHd1ucCfRTRtOaZ7/dViLqN4xplFeqBRL+
 iuXdamoKKwe3R/K1FXAhkhQNU43Mkm+qkrq9drXRRjoyAnnediVzs9ZdG
 ESjba6bpA3alJfyhXUYJXGB8iW6/3hLBWbA9Ad2wAgUFh9yeRH7GytGso
 VgJSX4Q8BCh5m/fYYqlBbxq0LG+ReyujZvlC2f+4Eu1QrEmxUBgFIXupQ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245419587"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245419587"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:30:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561846652"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 21 Jan 2022 03:30:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:30:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 13:30:33 +0200
Message-Id: <20220121113036.23240-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
References: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Make skl+ universal plane
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
index 07c64ea5b362..c2596b6aa3ab 100644
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
@@ -1105,7 +1095,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
 	int crtc_y = plane_state->uapi.dst.y1;
 	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	unsigned long irqflags;
 
 	/* The scaler will handle the output position */
 	if (plane_state->scaler_id >= 0) {
@@ -1113,8 +1102,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
 		crtc_y = 0;
 	}
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
 			  PLANE_STRIDE_(stride));
 	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
@@ -1123,8 +1110,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
 			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
 
 	skl_write_plane_wm(plane, crtc_state);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1138,7 +1123,6 @@ skl_plane_update_arm(struct intel_plane *plane,
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
 	u32 plane_ctl, plane_color_ctl = 0;
-	unsigned long irqflags;
 
 	plane_ctl = plane_state->ctl |
 		skl_plane_ctl_crtc(crtc_state);
@@ -1147,8 +1131,6 @@ skl_plane_update_arm(struct intel_plane *plane,
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
 	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
 	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
@@ -1184,8 +1166,6 @@ skl_plane_update_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
 			  skl_plane_surf(plane_state, 0));
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1206,7 +1186,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	u32 plane_color_ctl;
-	unsigned long irqflags;
 
 	plane_color_ctl = plane_state->color_ctl |
 		glk_plane_color_ctl_crtc(crtc_state);
@@ -1217,8 +1196,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
 		crtc_y = 0;
 	}
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
 			  PLANE_STRIDE_(stride));
 	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
@@ -1262,8 +1239,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
 		icl_plane_csc_load_black(plane);
 
 	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1276,13 +1251,10 @@ icl_plane_update_arm(struct intel_plane *plane,
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
@@ -1301,8 +1273,6 @@ icl_plane_update_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
 			  skl_plane_surf(plane_state, color_plane));
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1312,7 +1282,6 @@ skl_plane_async_flip(struct intel_plane *plane,
 		     bool async_flip)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	unsigned long irqflags;
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 plane_ctl = plane_state->ctl;
@@ -1322,13 +1291,9 @@ skl_plane_async_flip(struct intel_plane *plane,
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
2.32.0

