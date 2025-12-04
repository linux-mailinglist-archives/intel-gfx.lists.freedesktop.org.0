Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE5CCA4BF7
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 18:24:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865D710E998;
	Thu,  4 Dec 2025 17:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WMKOl2JQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F04710E998;
 Thu,  4 Dec 2025 17:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764869073; x=1796405073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1NG9XKuFxA6Dwdb0Lu4PIf/4DYnWucsQSv+QJWWmujA=;
 b=WMKOl2JQa+HPMf19SBrv5QJ7X8z0sj0kWXMdoP/7A07i9eM/exXCjDkc
 Obyi9DHy/j/V5KkGpClLyhIc31A64lCMDzeX/P+5/mbXQYqfAAOudHvVP
 1me9FZJFdDv8N6rc2tlCChEFNuBRANivcgg5atxS2d7qdLqu2BphwJfg0
 LLoY0i5hX0aj0+qF5cpN8DqlTl2t7fUDnhiI5YSNQ7h7ITWTBYQBssR1O
 4QxvLAkakNR2frAMOGOMNYXPPeHHr7/hurnRjSoNLL04aCPMDsG6WjEI1
 BCSJ7d/iq1rc0Y7syFi8qmApZXbq94LBWd6dCQhRw/dy8JdsWvypsd+1+ A==;
X-CSE-ConnectionGUID: 07jFXz0FQBa4Winm5CLc3Q==
X-CSE-MsgGUID: Nqut+oHrR8qUxIqgqMWhVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67060899"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="67060899"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 09:24:33 -0800
X-CSE-ConnectionGUID: g3FowviJQLK7Nrf2WjzOfw==
X-CSE-MsgGUID: MA6cZauWQxKK3FjDfcs64w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="200169563"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 09:24:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915/fbc: let to_intel_display() do its generic magic
Date: Thu,  4 Dec 2025 19:24:04 +0200
Message-ID: <9e140af2ad2a9ad881a46d8374de0cd12b33d575.1764868989.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764868989.git.jani.nikula@intel.com>
References: <cover.1764868989.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

to_intel_display() generics can handle struct intel_plane_state, struct
intel_atomic_state, and struct intel_crtc just fine. Pass them directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 34 ++++++++++++------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index dd306e30d620..66d9674b4e47 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -215,7 +215,7 @@ static unsigned int _intel_fbc_cfb_stride(struct intel_display *display,
 
 static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
 	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
@@ -246,7 +246,7 @@ static unsigned int _intel_fbc_cfb_size(struct intel_display *display,
 
 static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int height = drm_rect_height(&plane_state->uapi.src) >> 16;
 
 	return _intel_fbc_cfb_size(display, height, intel_fbc_cfb_stride(plane_state));
@@ -254,7 +254,7 @@ static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_sta
 
 static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1025,7 +1025,7 @@ static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
 
 static bool stride_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 11)
 		return icl_fbc_stride_is_valid(plane_state);
@@ -1041,7 +1041,7 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 
 static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->format->format) {
@@ -1061,7 +1061,7 @@ static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane
 
 static bool g4x_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->format->format) {
@@ -1140,7 +1140,7 @@ intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state
 
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 35)
 		return xe3p_lpd_fbc_pixel_format_is_valid(plane_state);
@@ -1176,7 +1176,7 @@ static bool skl_fbc_rotation_is_valid(const struct intel_plane_state *plane_stat
 
 static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 9)
 		return skl_fbc_rotation_is_valid(plane_state);
@@ -1215,7 +1215,7 @@ static void intel_fbc_max_surface_size(struct intel_display *display,
  */
 static bool intel_fbc_surface_size_ok(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int effective_w, effective_h, max_w, max_h;
 
 	intel_fbc_max_surface_size(display, &max_w, &max_h);
@@ -1248,7 +1248,7 @@ static void intel_fbc_max_plane_size(struct intel_display *display,
 
 static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int w, h, max_w, max_h;
 
 	intel_fbc_max_plane_size(display, &max_w, &max_h);
@@ -1273,7 +1273,7 @@ static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
 
 static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 9)
 		return skl_fbc_tiling_valid(plane_state);
@@ -1353,7 +1353,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
@@ -1386,7 +1386,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 
 static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	/*
 	 * The use of a CPU fence is one of two ways to detect writes by the
@@ -1493,7 +1493,7 @@ static int _intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state)
 static int intel_fbc_check_plane(struct intel_atomic_state *state,
 				 struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1720,7 +1720,7 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_fbc *fbc = plane->fbc;
 	bool need_vblank_wait = false;
 
@@ -1933,7 +1933,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
@@ -1995,7 +1995,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
  */
 void intel_fbc_disable(struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane;
 
 	for_each_intel_plane(display->drm, plane) {
-- 
2.47.3

