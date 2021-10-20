Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A631434282
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 02:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BE589D9B;
	Wed, 20 Oct 2021 00:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B69C89D4D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 00:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292121654"
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="292121654"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:17:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="462967146"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:17:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 19 Oct 2021 17:23:51 -0700
Message-Id: <20211020002353.193893-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
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

Adding a structure to standardize access to IP versioning as future
platforms will have this information populated at runtime.

The constant platform display version is not using this new struct but
the runtime variant will definitely use it.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c               |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 12 ++++++------
 drivers/gpu/drm/i915/i915_pci.c               | 18 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c      | 19 ++++++++++++-------
 drivers/gpu/drm/i915/intel_device_info.h      | 12 ++++++++----
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 6 files changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 1e5b75ae99329..bdf85d202c55c 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -808,7 +808,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 
 	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!i915->params.nuclear_pageflip && match_info->graphics_ver < 5)
+	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 12256218634f4..26b6e2b8bb5e8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1327,15 +1327,15 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 
 #define IP_VER(ver, rel)		((ver) << 8 | (rel))
 
-#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
-#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics_ver, \
-					       INTEL_INFO(i915)->graphics_rel)
+#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics.ver)
+#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics.ver, \
+					       INTEL_INFO(i915)->graphics.rel)
 #define IS_GRAPHICS_VER(i915, from, until) \
 	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
 
-#define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
-#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media_ver, \
-					       INTEL_INFO(i915)->media_rel)
+#define MEDIA_VER(i915)			(INTEL_INFO(i915)->media.ver)
+#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media.arch, \
+					       INTEL_INFO(i915)->media.rel)
 #define IS_MEDIA_VER(i915, from, until) \
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 169837de395d3..5e6795853dc31 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -32,8 +32,8 @@
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
-	.graphics_ver = (x), \
-	.media_ver = (x), \
+	.graphics.ver = (x), \
+	.media.ver = (x), \
 	.display.ver = (x)
 
 #define I845_PIPE_OFFSETS \
@@ -899,7 +899,7 @@ static const struct intel_device_info rkl_info = {
 static const struct intel_device_info dg1_info = {
 	GEN12_FEATURES,
 	DGFX_FEATURES,
-	.graphics_rel = 10,
+	.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
@@ -986,8 +986,8 @@ static const struct intel_device_info adl_p_info = {
 		      I915_GTT_PAGE_SIZE_2M
 
 #define XE_HP_FEATURES \
-	.graphics_ver = 12, \
-	.graphics_rel = 50, \
+	.graphics.ver = 12, \
+	.graphics.rel = 50, \
 	XE_HP_PAGE_SIZES, \
 	.dma_mask_size = 46, \
 	.has_64bit_reloc = 1, \
@@ -1005,8 +1005,8 @@ static const struct intel_device_info adl_p_info = {
 	.ppgtt_type = INTEL_PPGTT_FULL
 
 #define XE_HPM_FEATURES \
-	.media_ver = 12, \
-	.media_rel = 50
+	.media.ver = 12, \
+	.media.rel = 50
 
 __maybe_unused
 static const struct intel_device_info xehpsdv_info = {
@@ -1030,8 +1030,8 @@ static const struct intel_device_info dg2_info = {
 	XE_HPM_FEATURES,
 	XE_LPD_FEATURES,
 	DGFX_FEATURES,
-	.graphics_rel = 55,
-	.media_rel = 55,
+	.graphics.rel = 55,
+	.media.rel = 55,
 	PLATFORM(INTEL_DG2),
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 305facedd2841..6e6b317bc33ce 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -97,17 +97,22 @@ static const char *iommu_name(void)
 void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p)
 {
-	if (info->graphics_rel)
-		drm_printf(p, "graphics version: %u.%02u\n", info->graphics_ver, info->graphics_rel);
+	if (info->graphics.rel)
+		drm_printf(p, "graphics version: %u.%02u\n", info->graphics.ver,
+			   info->graphics.rel);
 	else
-		drm_printf(p, "graphics version: %u\n", info->graphics_ver);
+		drm_printf(p, "graphics version: %u\n", info->graphics.ver);
 
-	if (info->media_rel)
-		drm_printf(p, "media version: %u.%02u\n", info->media_ver, info->media_rel);
+	if (info->media.rel)
+		drm_printf(p, "media version: %u.%02u\n", info->media.ver, info->media.rel);
 	else
-		drm_printf(p, "media version: %u\n", info->media_ver);
+		drm_printf(p, "media version: %u\n", info->media.ver);
+
+	if (info->display.rel)
+		drm_printf(p, "display version: %u.%02u\n", info->display.ver, info->display.rel);
+	else
+		drm_printf(p, "display version: %u\n", info->display.ver);
 
-	drm_printf(p, "display version: %u\n", info->display.ver);
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "iommu: %s\n", iommu_name());
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 8e6f48d1eb7bc..669f0d26c3c38 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -166,11 +166,14 @@ enum intel_ppgtt_type {
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
+struct ip_version {
+	u8 ver;
+	u8 rel;
+};
+
 struct intel_device_info {
-	u8 graphics_ver;
-	u8 graphics_rel;
-	u8 media_ver;
-	u8 media_rel;
+	struct ip_version graphics;
+	struct ip_version media;
 
 	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
 
@@ -200,6 +203,7 @@ struct intel_device_info {
 
 	struct {
 		u8 ver;
+		u8 rel;
 
 #define DEFINE_FLAG(name) u8 name:1
 		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 4f81801468881..9ab3f284d1dd9 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -165,7 +165,7 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Using the global GTT may ask questions about KMS users, so prepare */
 	drm_mode_config_init(&i915->drm);
 
-	mkwrite_device_info(i915)->graphics_ver = -1;
+	mkwrite_device_info(i915)->graphics.ver = -1;
 
 	mkwrite_device_info(i915)->page_sizes =
 		I915_GTT_PAGE_SIZE_4K |
-- 
2.33.1

