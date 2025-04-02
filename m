Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E901A7859C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB31110E695;
	Wed,  2 Apr 2025 00:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="esmjgXhy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B0810E67A;
 Wed,  2 Apr 2025 00:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553351; x=1775089351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZDTKX0RZroMNzNb3Vu/57mb3n7hIpcjkYddX+4ROLY4=;
 b=esmjgXhyLOn7qnfldqxc/rRkdKQPBpTovr9//Y+vv4AyUmrBaGWQGmer
 M3cip36mMokVhsBw/AZGTJkYPlT1dn/4/z/3uf7GgTVrzs9wBo7zwL72Q
 tnYADSILYRIoSJqxunVv+G2bH77ApYfbjJI/GwDV8APRbm7Or+sCURUpg
 YvM6j6DFLr8UEcOAxNSb4CFHguxp6Mnug4FTE211mF0uFaFNBZZk+sUmu
 Z68kT8vR/sTg3PlAJqMM9IoAtDtjGNHYpFwzZGXgKEgK6WrOef+q89uNk
 uGOJegf5b/dATTcz3F0aHZaj5xcZjdF8o6bVYfefx6XNzgGziezKtNjDL w==;
X-CSE-ConnectionGUID: sYbcgoD+QpiKHcWwxqajGg==
X-CSE-MsgGUID: OEuYwWW4RlyX+pNEmFc0Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021948"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021948"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:31 -0700
X-CSE-ConnectionGUID: 24yDRhaiR2W9rxvNzCNeZQ==
X-CSE-MsgGUID: U7/47SBCSGqVwfYcZmwpJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729588"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915: Don't pass crtc_state to foo_plane_ctl() & co.
Date: Wed,  2 Apr 2025 03:22:06 +0300
Message-ID: <20250402002209.24987-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

The *_plane_ctl() functions only consider the state of the
plane (the state of the crtc is handled by the corresponding
*_plane_ctl_crtc()), and thus they don't need the crtc_state
at all. Don't pass it in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c         |  5 ++---
 drivers/gpu/drm/i915/display/intel_cursor.c       | 10 ++++------
 drivers/gpu/drm/i915/display/intel_sprite.c       | 15 ++++++---------
 .../gpu/drm/i915/display/skl_universal_plane.c    | 11 ++++-------
 4 files changed, 16 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index bfeb4bf864e2..6a2609402431 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -151,8 +151,7 @@ static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 			i9xx_plane == PLANE_C;
 }
 
-static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 i9xx_plane_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -351,7 +350,7 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	plane_state->ctl = i9xx_plane_ctl(crtc_state, plane_state);
+	plane_state->ctl = i9xx_plane_ctl(plane_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 5333b34a5776..8f9c8f0f4b27 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -205,8 +205,7 @@ static u32 i845_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return cntl;
 }
 
-static u32 i845_cursor_ctl(const struct intel_crtc_state *crtc_state,
-			   const struct intel_plane_state *plane_state)
+static u32 i845_cursor_ctl(const struct intel_plane_state *plane_state)
 {
 	return CURSOR_ENABLE |
 		CURSOR_FORMAT_ARGB |
@@ -266,7 +265,7 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	plane_state->ctl = i845_cursor_ctl(crtc_state, plane_state);
+	plane_state->ctl = i845_cursor_ctl(plane_state);
 
 	return 0;
 }
@@ -398,8 +397,7 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return cntl;
 }
 
-static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
-			   const struct intel_plane_state *plane_state)
+static u32 i9xx_cursor_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	u32 cntl = 0;
@@ -526,7 +524,7 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	plane_state->ctl = i9xx_cursor_ctl(crtc_state, plane_state);
+	plane_state->ctl = i9xx_cursor_ctl(plane_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 9bcb8dda6129..269065840b31 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -263,8 +263,7 @@ static u32 vlv_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return sprctl;
 }
 
-static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 vlv_sprite_ctl(const struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
@@ -659,8 +658,7 @@ static bool ivb_need_sprite_gamma(const struct intel_plane_state *plane_state)
 		(display->platform.ivybridge || display->platform.haswell);
 }
 
-static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 ivb_sprite_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1009,8 +1007,7 @@ static u32 g4x_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return dvscntr;
 }
 
-static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 g4x_sprite_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1377,9 +1374,9 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	if (DISPLAY_VER(display) >= 7)
-		plane_state->ctl = ivb_sprite_ctl(crtc_state, plane_state);
+		plane_state->ctl = ivb_sprite_ctl(plane_state);
 	else
-		plane_state->ctl = g4x_sprite_ctl(crtc_state, plane_state);
+		plane_state->ctl = g4x_sprite_ctl(plane_state);
 
 	return 0;
 }
@@ -1429,7 +1426,7 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	plane_state->ctl = vlv_sprite_ctl(crtc_state, plane_state);
+	plane_state->ctl = vlv_sprite_ctl(plane_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 808580826b0e..cc64d9598c17 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1166,8 +1166,7 @@ static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_ctl;
 }
 
-static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
-			 const struct intel_plane_state *plane_state)
+static u32 skl_plane_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1225,8 +1224,7 @@ static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_color_ctl;
 }
 
-static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
-			       const struct intel_plane_state *plane_state)
+static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -2355,11 +2353,10 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		plane_state->damage = DRM_RECT_INIT(0, 0, 0, 0);
 	}
 
-	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
+	plane_state->ctl = skl_plane_ctl(plane_state);
 
 	if (DISPLAY_VER(display) >= 10)
-		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
-							     plane_state);
+		plane_state->color_ctl = glk_plane_color_ctl(plane_state);
 
 	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
 	    icl_is_hdr_plane(display, plane->id))
-- 
2.45.3

