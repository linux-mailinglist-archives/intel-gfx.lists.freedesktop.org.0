Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1D695EDDE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 11:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC3410E174;
	Mon, 26 Aug 2024 09:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C4610E174
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 09:58:56 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v5 2/2] drm/i915/display: Add function for checking 64k
 physical alignment workaround
Date: Mon, 26 Aug 2024 11:50:41 +0200
Message-ID: <20240826095041.75416-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
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

Instead of hardcoding the modifier in xe, the alternative approach is
setting a bit in the modifier description for 64k phys requirement.

This removes the hardcoding for the modifier in CCS.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

---
This might make the changes more palatable, but I personally believe
that hardcoding for a one-off check is fine. My optimism is that when
creating a new tiling format, the previous lessons will be taken into
account and this case will be tested.

Yeah, maybe just go for this patch too..
---
 drivers/gpu/drm/i915/display/intel_fb.c  | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fb.h  |  2 ++
 drivers/gpu/drm/xe/display/intel_fb_bo.c |  5 +++--
 3 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2716915d046d..5139172a8a3d1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -169,7 +169,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
 		.display_ver = { 14, -1 },
-		.plane_caps = INTEL_PLANE_CAP_TILING_4,
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_NEED64K_PHYS_WA,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
 		.display_ver = { 14, 14 },
@@ -420,6 +420,24 @@ bool intel_fb_is_mc_ccs_modifier(u64 modifier)
 				      INTEL_PLANE_CAP_CCS_MC);
 }
 
+/**
+ * intel_fb_needs_64k_phys_wa: Check if modifier requires 64k phys placement workaround.
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier requires 64k physical page alignment.
+ */
+bool intel_fb_needs_64k_phys_wa(u64 modifier)
+{
+	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
+
+	if (!md)
+		return false;
+
+	return plane_caps_contain_any(md->plane_caps,
+				      INTEL_PLANE_CAP_NEED64K_PHYS_WA);
+}
+
 static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
 					     u8 display_ver_from, u8 display_ver_until)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 6dee0c8b7f226..8a84b9abf9b91 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,11 +28,13 @@ struct intel_plane_state;
 #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
 #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
 #define INTEL_PLANE_CAP_TILING_4	BIT(6)
+#define INTEL_PLANE_CAP_NEED64K_PHYS_WA	BIT(7)
 
 bool intel_fb_is_tiled_modifier(u64 modifier);
 bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
+bool intel_fb_needs_64k_phys_wa(u64 modifier);
 
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index 6775c2557b9df..64bcd10d3f538 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -7,6 +7,7 @@
 #include <drm/ttm/ttm_bo.h>
 
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_fb_bo.h"
 #include "xe_bo.h"
 
@@ -28,8 +29,8 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
 	int ret;
 
-	/* Only this specific format is affected, and it's only available on VRAM */
-	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
+	/* Some modifiers require aligned 64k phys pages. */
+	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys_wa(mode_cmd->modifier[0]) &&
 			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
 		return -EINVAL;
 
-- 
2.45.2

