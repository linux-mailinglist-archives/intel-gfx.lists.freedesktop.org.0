Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828959E048B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B6610E766;
	Mon,  2 Dec 2024 14:14:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSYQazhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CE910E75E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148882; x=1764684882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dPDVWd5cFZ0h+z3IpfCq5qzIH45MgS9lrNojiFR2mCE=;
 b=DSYQazhgJFF+18F+dVpSIMYNZbU/fkOeZHOjCEr0Zvjtx+GfGjYWeVgR
 44MMk3hUvSir5A8UhaGTuaMTjpxW6hILRYuX4sp7AFXTPTlQv+mHZ+h2h
 MQqxZE5/1BRTi/xOMBWm2v7f+FegTh34GkWh6EJQOU1D05rGh59HdCwIc
 1Zmtqt2ORfDf3AZjj1kYDCnrVtCeRRyCdgPCJY+YNgdIvtUn/MWgAmuoW
 fbQ+x+utjBQCPQZZiZgIdxlFW5jji7M3PBR4BUIAQo6/lyVxGrzJY+BhO
 DSt/H2tFe4Ii6SJWcDZIh56vXX2/JUDcRoUEjlME7YAEeTADvOf/iVJk0 A==;
X-CSE-ConnectionGUID: eUP8SlZZQymhv4ASvrfh/w==
X-CSE-MsgGUID: WSr4Cm8PTFu53ZmFjWfeSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807258"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807258"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:42 -0800
X-CSE-ConnectionGUID: W0GoIw/0QtumXwilENaeaQ==
X-CSE-MsgGUID: mM3UfNFnS1O+NN8QZGhbpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287741"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/9] drm/i915: Reuse vlv_primary_min_alignment() for
 sprites as well
Date: Mon,  2 Dec 2024 16:14:20 +0200
Message-ID: <20241202141424.21446-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

Rename vlv_primary_min_alignment() to vlv_plane_min_alignment()
and use it to replace vlv_sprite_min_alignment() since the
behaviour is now identical when the plane init doesn't set up
any async flips stuff.

Technically VLV/CHV sprites do support async flips, so this
also makes us a bit more future proof if/when we extend async
flip support to more than one plane.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c   |  8 ++++----
 drivers/gpu/drm/i915/display/i9xx_plane.h   |  4 ++++
 drivers/gpu/drm/i915/display/intel_sprite.c | 17 +----------------
 3 files changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 8d3346199645..943dcd3b7a0e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -775,9 +775,9 @@ i8xx_plane_max_stride(struct intel_plane *plane,
 		return 8 * 1024;
 }
 
-static unsigned int vlv_primary_min_alignment(struct intel_plane *plane,
-					      const struct drm_framebuffer *fb,
-					      int color_plane)
+unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
+				     const struct drm_framebuffer *fb,
+				     int color_plane)
 {
 	if (intel_plane_can_async_flip(plane, fb->modifier))
 		return 256 * 1024;
@@ -938,7 +938,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	}
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		plane->min_alignment = vlv_primary_min_alignment;
+		plane->min_alignment = vlv_plane_min_alignment;
 	else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		plane->min_alignment = g4x_primary_min_alignment;
 	else if (DISPLAY_VER(dev_priv) == 4)
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index 0ca12d1e6839..457f4bccf106 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 enum pipe;
+struct drm_framebuffer;
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_initial_plane_config;
@@ -19,6 +20,9 @@ struct intel_plane_state;
 unsigned int i965_plane_max_stride(struct intel_plane *plane,
 				   u32 pixel_format, u64 modifier,
 				   unsigned int rotation);
+unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
+				     const struct drm_framebuffer *fb,
+				     int colot_plane);
 int i9xx_check_plane_surface(struct intel_plane_state *plane_state);
 
 struct intel_plane *
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index e6fadcef58e0..13996d7059ad 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -253,21 +253,6 @@ int vlv_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 	return DIV_ROUND_UP(pixel_rate * num, den);
 }
 
-static unsigned int vlv_sprite_min_alignment(struct intel_plane *plane,
-					     const struct drm_framebuffer *fb,
-					     int color_plane)
-{
-	switch (fb->modifier) {
-	case I915_FORMAT_MOD_X_TILED:
-		return 4 * 1024;
-	case DRM_FORMAT_MOD_LINEAR:
-		return 128 * 1024;
-	default:
-		MISSING_CASE(fb->modifier);
-		return 0;
-	}
-}
-
 static u32 vlv_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
 	u32 sprctl = 0;
@@ -1616,7 +1601,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->get_hw_state = vlv_sprite_get_hw_state;
 		plane->check_plane = vlv_sprite_check;
 		plane->max_stride = i965_plane_max_stride;
-		plane->min_alignment = vlv_sprite_min_alignment;
+		plane->min_alignment = vlv_plane_min_alignment;
 		plane->min_cdclk = vlv_plane_min_cdclk;
 
 		if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
-- 
2.45.2

