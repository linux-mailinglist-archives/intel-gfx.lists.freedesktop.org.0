Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB9C495F5C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005E210EA33;
	Fri, 21 Jan 2022 13:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5D210EA35
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770073; x=1674306073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8pU/laNvd4JFI0iWCz3PcKeb0XuXc7QA6dcTS1M1vX0=;
 b=JwKZbC9ms0tYMD9h1kA9W8UiD+wgcIA9JdfATfJLx+kZ7ILSSdlpmRRd
 +hsZCDg92l7YYdyV7LyJZE2t7iY8N5yhnJGDRSBQlHKwclpndHt9wGbXX
 ZcFcUCx3BCd0JpF7V35VazktkbxtCkep8NzSTO2IYT2wnK/GnbDbZ+xGQ
 0mZODixGmFFRenGmtHBY8OcapErB8pb9N+9yvG1S0f+y32uCL+breBWPJ
 zv9WC9wycbgLtQ+sJUFL7kMTkhFPC3HUqKl80vbXUGLfVHKmrDXW9sowK
 J6TCG4za9ykL1FfkrJXgY0M9yLApkZnBiy0Q2PtXJMMB9lIcPHqM2b8AT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="306369086"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="306369086"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="478236942"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:34 +0200
Message-Id: <9742b56ee0935a6b833f108ca8f72a29935853df.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/plane: convert to drm device based
 logging and WARN
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer drm device based logging and WARN.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  5 +++--
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 10 ++++++----
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c2c512cd8ec0..dd51818f6684 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -601,6 +601,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      int min_scale, int max_scale,
 				      bool can_position)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
 	struct drm_rect *dst = &plane_state->uapi.dst;
@@ -619,7 +620,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
 	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
 	if (hscale < 0 || vscale < 0) {
-		DRM_DEBUG_KMS("Invalid scaling of plane\n");
+		drm_dbg_kms(&i915->drm, "Invalid scaling of plane\n");
 		drm_rect_debug_print("src: ", src, true);
 		drm_rect_debug_print("dst: ", dst, false);
 		return -ERANGE;
@@ -644,7 +645,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 
 	if (!can_position && plane_state->uapi.visible &&
 	    !drm_rect_equals(dst, &clip)) {
-		DRM_DEBUG_KMS("Plane must cover entire CRTC\n");
+		drm_dbg_kms(&i915->drm, "Plane must cover entire CRTC\n");
 		drm_rect_debug_print("dst: ", dst, false);
 		drm_rect_debug_print("clip: ", &clip, false);
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 72dcc341bb1f..1223075595ff 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -961,6 +961,7 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 			    int color_plane)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	u32 offset = plane_state->view.color_plane[color_plane].offset;
 
@@ -969,11 +970,11 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 		 * The DPT object contains only one vma, so the VMA's offset
 		 * within the DPT is always 0.
 		 */
-		WARN_ON(plane_state->dpt_vma->node.start);
-		WARN_ON(offset & 0x1fffff);
+		drm_WARN_ON(&i915->drm, plane_state->dpt_vma->node.start);
+		drm_WARN_ON(&i915->drm, offset & 0x1fffff);
 		return offset >> 9;
 	} else {
-		WARN_ON(offset & 0xfff);
+		drm_WARN_ON(&i915->drm, offset & 0xfff);
 		return offset;
 	}
 }
@@ -1350,6 +1351,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
 
 static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
@@ -1359,7 +1361,7 @@ static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_s
 	    src_w & 3 &&
 	    (rotation == DRM_MODE_ROTATE_270 ||
 	     rotation == (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
-		DRM_DEBUG_KMS("src width must be multiple of 4 for rotated planar YUV\n");
+		drm_dbg_kms(&i915->drm, "src width must be multiple of 4 for rotated planar YUV\n");
 		return -EINVAL;
 	}
 
-- 
2.30.2

