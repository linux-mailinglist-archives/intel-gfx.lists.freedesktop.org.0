Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C48495F5D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6924210EA38;
	Fri, 21 Jan 2022 13:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A964210EA38
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770080; x=1674306080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=npf4/c7mpF+J62Lt5sp2knS6jEiVMskUmP8r+yDcnN8=;
 b=aTq8I1zkRBDpOKvO1ksKuWmkD6lK5+W+NiIhV/UvFrxuICXhI2k5z7RO
 U5c0cKAWDepp3vNsHe0qSMJdMI+813f4+XIdbx36z5P4zo61KoJaepW4g
 ORGLS+BWIzXb+Tz84lE+GTs0czYL8DRkpSWYyxkbrEePU2MAxaC6698N2
 xbrEubPtd8JN9xXp2EvWxtpIsUP6vxYTNfVx8J4/AiSOOCRsfBtHTWd6Q
 6XCr7sc9Gw6dzko3n/mgdyYmCc5e0+APPbiQg5hJkN3cOTe+RmnhNhzlb
 CWkNvdLQKxB5xbs3v4av6FsZcVsV4C6GGk25WwxI0JZH84kDlpQTjv50/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="225628746"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="225628746"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533266199"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:35 +0200
Message-Id: <f2a3b656c8c63bc9474b5d9cb5b5c018cde28546.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/sprite: convert to drm device
 based logging
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

Prefer drm device based logging.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 24 +++++++++++----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7ffca5669ab9..2d71294aaceb 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -53,6 +53,7 @@
 
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_rect *src = &plane_state->uapi.src;
 	u32 src_x, src_y, src_w, src_h, hsub, vsub;
@@ -94,14 +95,14 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		hsub = vsub = max(hsub, vsub);
 
 	if (src_x % hsub || src_w % hsub) {
-		DRM_DEBUG_KMS("src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
-			      src_x, src_w, hsub, yesno(rotated));
+		drm_dbg_kms(&i915->drm, "src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
+			    src_x, src_w, hsub, yesno(rotated));
 		return -EINVAL;
 	}
 
 	if (src_y % vsub || src_h % vsub) {
-		DRM_DEBUG_KMS("src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
-			      src_y, src_h, vsub, yesno(rotated));
+		drm_dbg_kms(&i915->drm, "src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
+			    src_y, src_h, vsub, yesno(rotated));
 		return -EINVAL;
 	}
 
@@ -1332,6 +1333,7 @@ static int
 g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 			 struct intel_plane_state *plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	const struct drm_rect *src = &plane_state->uapi.src;
 	const struct drm_rect *dst = &plane_state->uapi.dst;
@@ -1357,7 +1359,7 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
 		if (src_h & 1) {
-			DRM_DEBUG_KMS("Source height must be even with interlaced modes\n");
+			drm_dbg_kms(&i915->drm, "Source height must be even with interlaced modes\n");
 			return -EINVAL;
 		}
 		min_height = 6;
@@ -1369,20 +1371,20 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 
 	if (src_w < min_width || src_h < min_height ||
 	    src_w > 2048 || src_h > 2048) {
-		DRM_DEBUG_KMS("Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\n",
-			      src_w, src_h, min_width, min_height, 2048, 2048);
+		drm_dbg_kms(&i915->drm, "Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\n",
+			    src_w, src_h, min_width, min_height, 2048, 2048);
 		return -EINVAL;
 	}
 
 	if (width_bytes > 4096) {
-		DRM_DEBUG_KMS("Fetch width (%d) exceeds hardware max with scaling (%u)\n",
-			      width_bytes, 4096);
+		drm_dbg_kms(&i915->drm, "Fetch width (%d) exceeds hardware max with scaling (%u)\n",
+			    width_bytes, 4096);
 		return -EINVAL;
 	}
 
 	if (stride > 4096) {
-		DRM_DEBUG_KMS("Stride (%u) exceeds hardware max with scaling (%u)\n",
-			      stride, 4096);
+		drm_dbg_kms(&i915->drm, "Stride (%u) exceeds hardware max with scaling (%u)\n",
+			    stride, 4096);
 		return -EINVAL;
 	}
 
-- 
2.30.2

