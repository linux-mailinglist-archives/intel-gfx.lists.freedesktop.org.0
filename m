Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E871D95F753
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 19:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7985310E26A;
	Mon, 26 Aug 2024 17:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E8E10E25D;
 Mon, 26 Aug 2024 17:01:20 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Subject: [PATCH v6 1/2] drm/i915/display: Plane capability for 64k phys
 alignment
Date: Mon, 26 Aug 2024 19:01:15 +0200
Message-ID: <20240826170117.327709-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
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

Some plane formats have been designed to require 64k physical alignment.
By returning whether this is the case for certain formats, we do not
need to hardcode this check inside Xe.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fb.h |  2 ++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2716915d046d..5be7bb43e2e0d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -169,7 +169,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
 		.display_ver = { 14, -1 },
-		.plane_caps = INTEL_PLANE_CAP_TILING_4,
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_NEED64K_PHYS,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
 		.display_ver = { 14, 14 },
@@ -420,6 +420,24 @@ bool intel_fb_is_mc_ccs_modifier(u64 modifier)
 				      INTEL_PLANE_CAP_CCS_MC);
 }
 
+/**
+ * intel_fb_needs_64k_phys: Check if modifier requires 64k physical placement.
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier requires 64k aligned physical pages.
+ */
+bool intel_fb_needs_64k_phys(u64 modifier)
+{
+	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
+
+	if (!md)
+		return false;
+
+	return plane_caps_contain_any(md->plane_caps,
+				      INTEL_PLANE_CAP_NEED64K_PHYS);
+}
+
 static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
 					     u8 display_ver_from, u8 display_ver_until)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 6dee0c8b7f226..10de437e8ef84 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,11 +28,13 @@ struct intel_plane_state;
 #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
 #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
 #define INTEL_PLANE_CAP_TILING_4	BIT(6)
+#define INTEL_PLANE_CAP_NEED64K_PHYS	BIT(7)
 
 bool intel_fb_is_tiled_modifier(u64 modifier);
 bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
+bool intel_fb_needs_64k_phys(u64 modifier);
 
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
-- 
2.45.2

