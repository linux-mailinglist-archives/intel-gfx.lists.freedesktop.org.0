Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E55435416
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A436E6E9FE;
	Wed, 20 Oct 2021 19:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901AF6E3C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:51:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209663434"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="209663434"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="444495870"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Wed, 20 Oct 2021 22:51:33 +0300
Message-Id: <20211020195138.1841242-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211020195138.1841242-1-imre.deak@intel.com>
References: <20211020195138.1841242-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/11] drm/i915: Move
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

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  8 -----
 drivers/gpu/drm/i915/display/intel_display.h  |  3 --
 drivers/gpu/drm/i915/display/intel_fb.c       | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  4 +++
 drivers/gpu/drm/i915/intel_pm.c               |  1 +
 6 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 0be8c00e3db9a..f61a48e1a562b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -39,6 +39,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_pm.h"
 #include "intel_sprite.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 86333c0cd7937..c66d525612ad1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -595,14 +595,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
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
index c2efba7c6c172..38c15ec30ee7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -605,9 +605,6 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
 
 bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
-bool
-intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
-				    u64 modifier);
 
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 1da55c0f7b21e..73634966a04cd 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -336,6 +336,36 @@ bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier)
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
index c331df575490d..a2cdf48f13395 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -38,6 +38,10 @@ bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
 const struct drm_format_info *
 intel_fb_get_format_info(const struct drm_mode_fb_cmd2 *cmd);
 
+bool
+intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
+				    u64 modifier);
+
 bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
 
 int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 201477ca408a5..cffb3df35a636 100644
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

