Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC14A34451
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B7FC10EB02;
	Thu, 13 Feb 2025 15:02:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FJKqX9eC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063A610EB02
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458977; x=1770994977;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=85bZtx50SV2FGfTswGh95qGr9Ev+wmc+uN4ESxNIKWk=;
 b=FJKqX9eCWKRfltsvDlPdJWGy/Ch7KwSv0Por2NjY1roxWQliIIdsaatv
 3az3kWJ8SlT8R23tCeJRTTQ5PXBUN3gMoOAsYfeDK+u3O9gTM4N4h3PU5
 z05J4BsD+cK5DyrxZ0f97udQ4PP63KFFQcTE3kSlhTpFFNt6007Q1eOuB
 oDQY2YUF/PyatjraQR1jbZ7Z367UzaJ2lfI90WPA/OHAV7URvnFIqvWwE
 yoTqLQctN9IAXjKbVASh4Fwfa+sKGaIiqjZnejQ6Ptpaj5Hxz7xz5Wzqk
 2VYgte7ZLEY7Cte8kfe742xH0sDCR7F8k5R20Zq1P4lE+roBXY5xfEMve Q==;
X-CSE-ConnectionGUID: v9hTmShDRiyREQ5ZKSNUOA==
X-CSE-MsgGUID: pFBhotmnQsC/IW2FD0PRMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567620"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567620"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:57 -0800
X-CSE-ConnectionGUID: TuKT25+hS8K0nD8/R1585A==
X-CSE-MsgGUID: 8QJ2Ep1URPKp5fGYxXaiDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349631"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/12] drm/i915: s/state/plane_state/
Date: Thu, 13 Feb 2025 17:02:20 +0200
Message-ID: <20250213150220.13580-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

Use the canonical 'plane_state' name for funciton arguments where
appropriate.

Also do the s/int plane/int color_plane/ in couple of the
function prototypes while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 32 ++++++++++++-------------
 drivers/gpu/drm/i915/display/intel_fb.h | 11 +++++----
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 399babb57030..97d54b40cf1d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1049,13 +1049,13 @@ static u32 intel_adjust_aligned_offset(int *x, int *y,
  * the x/y offsets.
  */
 u32 intel_plane_adjust_aligned_offset(int *x, int *y,
-				      const struct intel_plane_state *state,
+				      const struct intel_plane_state *plane_state,
 				      int color_plane,
 				      u32 old_offset, u32 new_offset)
 {
-	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
-					   state->hw.rotation,
-					   state->view.color_plane[color_plane].mapping_stride,
+	return intel_adjust_aligned_offset(x, y, plane_state->hw.fb, color_plane,
+					   plane_state->hw.rotation,
+					   plane_state->view.color_plane[color_plane].mapping_stride,
 					   old_offset, new_offset);
 }
 
@@ -1129,14 +1129,14 @@ static u32 intel_compute_aligned_offset(struct intel_display *display,
 }
 
 u32 intel_plane_compute_aligned_offset(int *x, int *y,
-				       const struct intel_plane_state *state,
+				       const struct intel_plane_state *plane_state,
 				       int color_plane)
 {
-	struct intel_display *display = to_intel_display(state);
-	struct intel_plane *plane = to_intel_plane(state->uapi.plane);
-	const struct drm_framebuffer *fb = state->hw.fb;
-	unsigned int rotation = state->hw.rotation;
-	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
+	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int rotation = plane_state->hw.rotation;
+	unsigned int pitch = plane_state->view.color_plane[color_plane].mapping_stride;
 	unsigned int alignment = plane->min_alignment(plane, fb, color_plane);
 
 	return intel_compute_aligned_offset(display, x, y, fb, color_plane,
@@ -1944,12 +1944,12 @@ void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotatio
  * with gen2/3, and 90/270 degree rotations isn't supported on any of them.
  */
 u32 intel_fb_xy_to_linear(int x, int y,
-			  const struct intel_plane_state *state,
+			  const struct intel_plane_state *plane_state,
 			  int color_plane)
 {
-	const struct drm_framebuffer *fb = state->hw.fb;
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int cpp = fb->format->cpp[color_plane];
-	unsigned int pitch = state->view.color_plane[color_plane].mapping_stride;
+	unsigned int pitch = plane_state->view.color_plane[color_plane].mapping_stride;
 
 	return y * pitch + x * cpp;
 }
@@ -1960,12 +1960,12 @@ u32 intel_fb_xy_to_linear(int x, int y,
  * specify the start of scanout from the beginning of the gtt mapping.
  */
 void intel_add_fb_offsets(int *x, int *y,
-			  const struct intel_plane_state *state,
+			  const struct intel_plane_state *plane_state,
 			  int color_plane)
 
 {
-	*x += state->view.color_plane[color_plane].x;
-	*y += state->view.color_plane[color_plane].y;
+	*x += plane_state->view.color_plane[color_plane].x;
+	*y += plane_state->view.color_plane[color_plane].y;
 }
 
 static
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 46286a40e10e..bdd76b372957 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -71,11 +71,11 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 				    int color_plane);
 
 u32 intel_plane_adjust_aligned_offset(int *x, int *y,
-				      const struct intel_plane_state *state,
+				      const struct intel_plane_state *plane_state,
 				      int color_plane,
 				      u32 old_offset, u32 new_offset);
 u32 intel_plane_compute_aligned_offset(int *x, int *y,
-				       const struct intel_plane_state *state,
+				       const struct intel_plane_state *plane_state,
 				       int color_plane);
 
 bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
@@ -94,10 +94,11 @@ unsigned int intel_fb_view_vtd_guard(const struct drm_framebuffer *fb,
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
 
 unsigned int intel_fb_xy_to_linear(int x, int y,
-				   const struct intel_plane_state *state,
-				   int plane);
+				   const struct intel_plane_state *plane_state,
+				   int color_plane);
 void intel_add_fb_offsets(int *x, int *y,
-			  const struct intel_plane_state *state, int plane);
+			  const struct intel_plane_state *plane_state,
+			  int color_plane);
 
 int intel_framebuffer_init(struct intel_framebuffer *ifb,
 			   struct drm_gem_object *obj,
-- 
2.45.3

