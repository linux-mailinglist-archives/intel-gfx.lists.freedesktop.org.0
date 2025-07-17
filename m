Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4099EB092F0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB9A10E861;
	Thu, 17 Jul 2025 17:14:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwOtI0DC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4C510E861;
 Thu, 17 Jul 2025 17:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772457; x=1784308457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2mZYafNEDUyjP0cfr9uyp2qiBS4NXfitDqezcgg5JQ0=;
 b=bwOtI0DCYB054QzpvLzLu73+Ls1EZdEqt5/Dhy9T9fy6cHTWqBjWdq4A
 s27BkA69tvqgYChKt6vaq3A3s6QnUAZWZLGUP4LQsNviYAKqH59vl0ugB
 5014ZCe+jVZwZzHK0vhHduRCix6ByEf3lIssd+mLBs7VQxs9XQlKCCfyt
 PUf7aA+tgCpc4EAEiCEaZqDToToQIApoGrMKoAmQU/uOFveGwDLAz9FJQ
 hiw1oM7/UPsxdZkkyyLolx8MQcXzFpGFSoMw6HPIq7kZ1FfBzrf6KgcZT
 kD+naOt44KkcxpNgUo65flkIFyYvGyb6RFu/SsDcdoJ0vGXhz774Pnsra g==;
X-CSE-ConnectionGUID: sBFk7HLwQ4Cz/1BW8rJ0ww==
X-CSE-MsgGUID: rYvDl69wQIuldazzH8sBEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729043"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729043"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:14:17 -0700
X-CSE-ConnectionGUID: vlCmD5EvSXyWnD+At/GjYw==
X-CSE-MsgGUID: Qu1nQyVCQVOlk79jJAUUtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488972"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:14:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:14:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 6/6] drm/i915: Don't pass crtc_state to foo_plane_ctl() &
 co.
Date: Thu, 17 Jul 2025 20:13:52 +0300
Message-ID: <20250717171353.23090-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
References: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c         |  5 ++---
 drivers/gpu/drm/i915/display/intel_cursor.c       | 10 ++++------
 drivers/gpu/drm/i915/display/intel_sprite.c       | 15 ++++++---------
 .../gpu/drm/i915/display/skl_universal_plane.c    | 11 ++++-------
 4 files changed, 16 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index d572e95c3c92..3eb96d8abba8 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -155,8 +155,7 @@ static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 			i9xx_plane == PLANE_C;
 }
 
-static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 i9xx_plane_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -355,7 +354,7 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	plane_state->ctl = i9xx_plane_ctl(crtc_state, plane_state);
+	plane_state->ctl = i9xx_plane_ctl(plane_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 83718b627bb0..d4d181f9dca5 100644
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
index 230f90e79d2a..75bbaa923204 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -264,8 +264,7 @@ static u32 vlv_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return sprctl;
 }
 
-static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 vlv_sprite_ctl(const struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
@@ -660,8 +659,7 @@ static bool ivb_need_sprite_gamma(const struct intel_plane_state *plane_state)
 		(display->platform.ivybridge || display->platform.haswell);
 }
 
-static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 ivb_sprite_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1010,8 +1008,7 @@ static u32 g4x_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return dvscntr;
 }
 
-static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
-			  const struct intel_plane_state *plane_state)
+static u32 g4x_sprite_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1378,9 +1375,9 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	if (DISPLAY_VER(display) >= 7)
-		plane_state->ctl = ivb_sprite_ctl(crtc_state, plane_state);
+		plane_state->ctl = ivb_sprite_ctl(plane_state);
 	else
-		plane_state->ctl = g4x_sprite_ctl(crtc_state, plane_state);
+		plane_state->ctl = g4x_sprite_ctl(plane_state);
 
 	return 0;
 }
@@ -1430,7 +1427,7 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	plane_state->ctl = vlv_sprite_ctl(crtc_state, plane_state);
+	plane_state->ctl = vlv_sprite_ctl(plane_state);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 39c107b10a48..ec3fe75f2c6c 100644
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
2.49.0

