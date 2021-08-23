Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F5C3F4A9C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E3089DBF;
	Mon, 23 Aug 2021 12:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42DFC89DBF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:26:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="213959272"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="213959272"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:05 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="454786821"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:26:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Mon, 23 Aug 2021 15:25:34 +0300
Message-Id: <7c97d29eeff676b510eafd242e2a6d7c8ed4a3a6.1629721467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/fb: move intel_fb_align_height()
 to intel_fb.c
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

Split out fb related stuff from intel_display.c to intel_fb.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ---------
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 drivers/gpu/drm/i915/display/intel_fb.c      | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      | 3 ++-
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 1 +
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6118bd782b57..ddc6bd436b01 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -879,15 +879,6 @@ intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 	       info->num_planes == (is_ccs_modifier(modifier) ? 4 : 2);
 }
 
-unsigned int
-intel_fb_align_height(const struct drm_framebuffer *fb,
-		      int color_plane, unsigned int height)
-{
-	unsigned int tile_height = intel_tile_height(fb, color_plane);
-
-	return ALIGN(height, tile_height);
-}
-
 unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info)
 {
 	unsigned int size = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e04394c8a9ad..695b874adacc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -548,8 +548,6 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv);
 unsigned int intel_fb_xy_to_linear(int x, int y,
 				   const struct intel_plane_state *state,
 				   int plane);
-unsigned int intel_fb_align_height(const struct drm_framebuffer *fb,
-				   int color_plane, unsigned int height);
 void intel_add_fb_offsets(int *x, int *y,
 			  const struct intel_plane_state *state, int plane);
 unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 870c1366e7e6..9e722cc1a7fd 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -163,6 +163,15 @@ unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_pla
 	return fb->pitches[color_plane] * tile_height;
 }
 
+unsigned int
+intel_fb_align_height(const struct drm_framebuffer *fb,
+		      int color_plane, unsigned int height)
+{
+	unsigned int tile_height = intel_tile_height(fb, color_plane);
+
+	return ALIGN(height, tile_height);
+}
+
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
 {
 	if (IS_I830(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 4768360401ae..f3d677cd6b6e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -31,7 +31,8 @@ unsigned int intel_tile_size(const struct drm_i915_private *i915);
 unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
-
+unsigned int intel_fb_align_height(const struct drm_framebuffer *fb,
+				   int color_plane, unsigned int height);
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915);
 
 void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index df05d285f0bd..60d3ded27047 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -45,6 +45,7 @@
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_fbdev.h"
 #include "intel_frontbuffer.h"
 
-- 
2.20.1

