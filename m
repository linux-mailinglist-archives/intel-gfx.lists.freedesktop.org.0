Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DE3425DA6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 22:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894066F4DE;
	Thu,  7 Oct 2021 20:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1F36F4D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 20:35:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="213303816"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="213303816"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="458926556"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Oct 2021 23:35:12 +0300
Message-Id: <20211007203517.3364336-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211007203517.3364336-1-imre.deak@intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Move
 intel_format_info_is_yuv_semiplanar() to intel_fb.c
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

Move intel_format_info_is_yuv_semiplanar() to intel_fb.c . The number of
planes for YUV semiplanar formats using CCS modifiers will change on
future platforms. We can use the modifier descriptors to simplify
getting the plane numbers for all modifiers, prepare for that here.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  8 -----
 drivers/gpu/drm/i915/display/intel_display.h  |  4 ---
 drivers/gpu/drm/i915/display/intel_fb.c       | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  4 +++
 drivers/gpu/drm/i915/intel_pm.c               |  1 +
 6 files changed, 36 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 47234d8985490..0eb7323717d30 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -39,6 +39,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_pm.h"
 #include "intel_sprite.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 90802d16fbf91..8043a9fd665a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -821,14 +821,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
 
-bool
-intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
-				    u64 modifier)
-{
-	return info->is_yuv &&
-	       info->num_planes == (is_ccs_modifier(modifier) ? 4 : 2);
-}
-
 unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info)
 {
 	unsigned int size = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 3028072c2cf35..84ae8b555ea0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -619,10 +619,6 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
 int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
 
-bool
-intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
-				    u64 modifier);
-
 int intel_plane_pin_fb(struct intel_plane_state *plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
 struct intel_encoder *
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 19aa99375502a..f0d8c848b23e1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -353,6 +353,36 @@ bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier)
 	return false;
 }
 
+static bool format_is_yuv_semiplanar(const struct intel_modifier_desc *md,
+				     const struct drm_format_info *info)
+{
+	int yuv_planes;
+
+	if (!info->is_yuv)
+		return false;
+
+	if (is_ccs_type_modifier(md, INTEL_CCS_ANY))
+		yuv_planes = 4;
+	else
+		yuv_planes = 2;
+
+	return info->num_planes == yuv_planes;
+}
+
+/**
+ * intel_format_info_is_yuv_semiplanar: Check if the given format is YUV semiplanar
+ * @info: format to check
+ * @modifier: modifier used with the format
+ *
+ * Returns:
+ * %true if @info / @modifier is YUV semiplanar.
+ */
+bool intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
+					 u64 modifier)
+{
+	return format_is_yuv_semiplanar(lookup_modifier(modifier), info);
+}
+
 bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
 {
 	if (!is_ccs_modifier(fb->modifier))
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index a198914c0088b..d9693fc767c54 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -33,6 +33,10 @@ bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
 const struct drm_format_info *
 intel_fb_get_format_info(const struct drm_mode_fb_cmd2 *cmd);
 
+bool
+intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
+				    u64 modifier);
+
 bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
 
 int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8dbf8ec0d8905..bafcac58ac096 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -37,6 +37,7 @@
 #include "display/intel_bw.h"
 #include "display/intel_de.h"
 #include "display/intel_display_types.h"
+#include "display/intel_fb.h"
 #include "display/intel_fbc.h"
 #include "display/intel_sprite.h"
 #include "display/skl_universal_plane.h"
-- 
2.27.0

