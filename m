Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BC5A793C1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 19:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E34E10E871;
	Wed,  2 Apr 2025 17:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mea+K3W2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742A810E871;
 Wed,  2 Apr 2025 17:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743614583; x=1775150583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZDTKX0RZroMNzNb3Vu/57mb3n7hIpcjkYddX+4ROLY4=;
 b=Mea+K3W2WuqRkNcWqq4Ss6/07MKagrTn2hViLA/9xubOwGTGt4T0lb7C
 XfpUsDTCIq+EE54lwt17EgUFaSNiZQoI7u9QyVttOYJQC1mvgYWf2ylXe
 qMANAgtzgTuOy+y2wXR1UumfZcFFUijOeviXMLQUvMrsJMUlkuiV7m309
 ySBUG8NRD6Djd8lUMQj88oR/TwqRBcriO1lX2wwG8pRdY4C4D+i0cwHhl
 EPtUYGktaTqfL5Ah6DGekTkcAk6mPIKbzB7P8qYfTh/u7LVyY2SWy70uJ
 QJQtHv1mO6KjyAVSqwsbrGMNLE3nT/MKBMpz/A2eRhUDWVwges/aySks1 w==;
X-CSE-ConnectionGUID: BztOpzLsQnK+11LnI00uhQ==
X-CSE-MsgGUID: kDFClN3VRj+QCR/2r1DlYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44891157"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44891157"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 10:23:03 -0700
X-CSE-ConnectionGUID: HeqQWNnSTU65P9+rt0yOLg==
X-CSE-MsgGUID: vIHyT2CpRN2+WSREVPVoEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="131964920"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 02 Apr 2025 10:23:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 20:22:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 6/6] drm/i915: Don't pass crtc_state to foo_plane_ctl() &
 co.
Date: Wed,  2 Apr 2025 20:22:40 +0300
Message-ID: <20250402172240.9275-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
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

