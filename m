Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD9CA729D
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 11:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BA910EAAC;
	Fri,  5 Dec 2025 10:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yl95tXRk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE6710E98C;
 Fri,  5 Dec 2025 10:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764930650; x=1796466650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/1Dnm38+P2k8F7CCLa8bNTyB2V/h/wbBEVxnj9+BQ0Q=;
 b=Yl95tXRkC6+6eCQDNHP1FHuoXNud3Sh+Y2dKM5PG4SwYY/MMFnt21O4j
 whpcLfWmPtjeuYKo/ULRT+ZCEwx4wKdtYVWvK3FBLcqfvdE97cbQV1kEi
 YG8lLdMR3AYl+mndoFZREG6CtBmB8+1GBmlctXfYJQTfhUx0/DwcA2kY5
 1b9fb450vqv5dR2YgQI7STZp8IzjmiIpPhyQ6vGYQ3SiWEMO/RcyvZ6lQ
 Dl+rnuoj9ZciSYy9wBFjdPZq/r6abQJqo2zz/GoIyLmVLXJAEFuaWxW1c
 kZaVGMFHqShvrCne0kkfv6ZA7A52UZo2zZbEvskxOtT87EUPEw3WJLttN g==;
X-CSE-ConnectionGUID: quCcu/odQu6kVEhp3YciFQ==
X-CSE-MsgGUID: mNXPjnimTl2bIghGSZw9BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67001165"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="67001165"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:41 -0800
X-CSE-ConnectionGUID: qJV2xpN+RPWvUlaryfbg7A==
X-CSE-MsgGUID: skLcXDCcRnuZ0kOMviKxfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="194562899"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/4] drm/i915/fbc: let to_intel_display() do its generic
 magic
Date: Fri,  5 Dec 2025 12:30:27 +0200
Message-ID: <14d0979eea358fb3713640eae74a7a8801cd8eec.1764930576.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764930576.git.jani.nikula@intel.com>
References: <cover.1764930576.git.jani.nikula@intel.com>
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
index 155b308ed66f..0e946bed484f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -217,7 +217,7 @@ static unsigned int _intel_fbc_cfb_stride(struct intel_display *display,
 
 static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
 	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
@@ -248,7 +248,7 @@ static unsigned int _intel_fbc_cfb_size(struct intel_display *display,
 
 static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int height = drm_rect_height(&plane_state->uapi.src) >> 16;
 
 	return _intel_fbc_cfb_size(display, height, intel_fbc_cfb_stride(plane_state));
@@ -256,7 +256,7 @@ static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_sta
 
 static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1098,7 +1098,7 @@ static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
 
 static bool stride_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 11)
 		return icl_fbc_stride_is_valid(plane_state);
@@ -1114,7 +1114,7 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 
 static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->format->format) {
@@ -1134,7 +1134,7 @@ static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane
 
 static bool g4x_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->format->format) {
@@ -1213,7 +1213,7 @@ intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state
 
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 35)
 		return xe3p_lpd_fbc_pixel_format_is_valid(plane_state);
@@ -1249,7 +1249,7 @@ static bool skl_fbc_rotation_is_valid(const struct intel_plane_state *plane_stat
 
 static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 9)
 		return skl_fbc_rotation_is_valid(plane_state);
@@ -1288,7 +1288,7 @@ static void intel_fbc_max_surface_size(struct intel_display *display,
  */
 static bool intel_fbc_surface_size_ok(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int effective_w, effective_h, max_w, max_h;
 
 	intel_fbc_max_surface_size(display, &max_w, &max_h);
@@ -1321,7 +1321,7 @@ static void intel_fbc_max_plane_size(struct intel_display *display,
 
 static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 	unsigned int w, h, max_w, max_h;
 
 	intel_fbc_max_plane_size(display, &max_w, &max_h);
@@ -1346,7 +1346,7 @@ static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
 
 static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	if (DISPLAY_VER(display) >= 9)
 		return skl_fbc_tiling_valid(plane_state);
@@ -1426,7 +1426,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state =
@@ -1459,7 +1459,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 
 static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(plane_state);
 
 	/*
 	 * The use of a CPU fence is one of two ways to detect writes by the
@@ -1566,7 +1566,7 @@ static int _intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state)
 static int intel_fbc_check_plane(struct intel_atomic_state *state,
 				 struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1793,7 +1793,7 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_fbc *fbc = plane->fbc;
 	bool need_vblank_wait = false;
 
@@ -2008,7 +2008,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_plane *plane)
 {
-	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
@@ -2072,7 +2072,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
  */
 void intel_fbc_disable(struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane;
 
 	for_each_intel_plane(display->drm, plane) {
-- 
2.47.3

