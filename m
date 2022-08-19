Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FF7599B5B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9382F10EAEE;
	Fri, 19 Aug 2022 12:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BFE10E964
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910590; x=1692446590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NMzMfAzXKrxkX9FYtZJvRdtEVktGvtgqbNpH+lBh//E=;
 b=Gov7zRd8vtbuJ3kDI0H6t6r5dH6yJ7UAmzKI9/lWd/+07N4qkcj9NLar
 m1DkIFAjiLpxUnZNnOD2lchxnhj5tdAUchXiLVbdDp5hZ6Zj7rKccLTFj
 bPv9bHWCL7BXMwnAtnS9vq/ZUyeCqJnSB0JXMHoPagCCKoeN2WoABR8WQ
 jOPdxFA+iquA9oeTI/0V7ATSfBKrrk6xJhaKaZ7ESV8sy0v4021Lnt5L5
 mvxYRrbZpoQNnjikt4coT3ROkYPp9vwHCw3PwEftGpZBx3QozI9gG43IS
 JHZTFretF+LMX3Z2HpHPiuJdhSo0AKAk6gaCcWoz6rBskBjR95SBRv+P8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="294273876"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="294273876"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="584637949"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:37 +0300
Message-Id: <6bdf6cc0d67e3ed8042d2b92303351111147ba47.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/14] drm/i915: move graphics.ver and
 graphics.rel to runtime info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If it's modified runtime, it's runtime info.

mock_gem_device() is the only one that modifies them. If that could be
fixed, we wouldn't have to do this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h                |  6 +++---
 drivers/gpu/drm/i915/i915_pci.c                | 18 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c       |  8 ++++----
 drivers/gpu/drm/i915/intel_device_info.h       |  3 ++-
 .../gpu/drm/i915/selftests/mock_gem_device.c   |  2 +-
 5 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4733c5a01da..02e55199b0e8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -856,9 +856,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define IP_VER(ver, rel)		((ver) << 8 | (rel))
 
-#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics.ver)
-#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics.ver, \
-					       INTEL_INFO(i915)->graphics.rel)
+#define GRAPHICS_VER(i915)		(RUNTIME_INFO(i915)->graphics.ver)
+#define GRAPHICS_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->graphics.ver, \
+					       RUNTIME_INFO(i915)->graphics.rel)
 #define IS_GRAPHICS_VER(i915, from, until) \
 	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d8446bb25d5e..5758438d52be 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -34,7 +34,7 @@
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
-	.graphics.ver = (x), \
+	.__runtime.graphics.ver = (x), \
 	.media.ver = (x), \
 	.display.ver = (x)
 
@@ -919,7 +919,7 @@ static const struct intel_device_info rkl_info = {
 static const struct intel_device_info dg1_info = {
 	GEN12_FEATURES,
 	DGFX_FEATURES,
-	.graphics.rel = 10,
+	.__runtime.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
@@ -1006,8 +1006,8 @@ static const struct intel_device_info adl_p_info = {
 		      I915_GTT_PAGE_SIZE_2M
 
 #define XE_HP_FEATURES \
-	.graphics.ver = 12, \
-	.graphics.rel = 50, \
+	.__runtime.graphics.ver = 12, \
+	.__runtime.graphics.rel = 50, \
 	XE_HP_PAGE_SIZES, \
 	.dma_mask_size = 46, \
 	.has_3d_pipeline = 1, \
@@ -1053,7 +1053,7 @@ static const struct intel_device_info xehpsdv_info = {
 	XE_HP_FEATURES, \
 	XE_HPM_FEATURES, \
 	DGFX_FEATURES, \
-	.graphics.rel = 55, \
+	.__runtime.graphics.rel = 55, \
 	.media.rel = 55, \
 	PLATFORM(INTEL_DG2), \
 	.has_4tile = 1, \
@@ -1096,7 +1096,7 @@ static const struct intel_device_info pvc_info = {
 	XE_HPC_FEATURES,
 	XE_HPM_FEATURES,
 	DGFX_FEATURES,
-	.graphics.rel = 60,
+	.__runtime.graphics.rel = 60,
 	.media.rel = 60,
 	PLATFORM(INTEL_PONTEVECCHIO),
 	.display = { 0 },
@@ -1122,8 +1122,8 @@ static const struct intel_device_info mtl_info = {
 	 * Real graphics IP version will be obtained from hardware GMD_ID
 	 * register.  Value provided here is just for sanity checking.
 	 */
-	.graphics.ver = 12,
-	.graphics.rel = 70,
+	.__runtime.graphics.ver = 12,
+	.__runtime.graphics.rel = 70,
 	.media.ver = 13,
 	PLATFORM(INTEL_METEORLAKE),
 	.display.has_modular_fia = 1,
@@ -1280,7 +1280,7 @@ bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
 
 static bool intel_mmio_bar_valid(struct pci_dev *pdev, struct intel_device_info *intel_info)
 {
-	int gttmmaddr_bar = intel_info->graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
+	int gttmmaddr_bar = intel_info->__runtime.graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
 
 	return i915_pci_resource_valid(pdev, gttmmaddr_bar);
 }
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 7793ce243981..15f5723a140f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -92,11 +92,11 @@ void intel_device_info_print(const struct intel_device_info *info,
 			     const struct intel_runtime_info *runtime,
 			     struct drm_printer *p)
 {
-	if (info->graphics.rel)
-		drm_printf(p, "graphics version: %u.%02u\n", info->graphics.ver,
-			   info->graphics.rel);
+	if (runtime->graphics.rel)
+		drm_printf(p, "graphics version: %u.%02u\n", runtime->graphics.ver,
+			   runtime->graphics.rel);
 	else
-		drm_printf(p, "graphics version: %u\n", info->graphics.ver);
+		drm_printf(p, "graphics version: %u\n", runtime->graphics.ver);
 
 	if (info->media.rel)
 		drm_printf(p, "media version: %u.%02u\n", info->media.ver, info->media.rel);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 4f4d1d77925a..ce876f22f8cc 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -203,6 +203,8 @@ struct ip_version {
 };
 
 struct intel_runtime_info {
+	struct ip_version graphics;
+
 	/*
 	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
 	 * into single runtime conditionals, and also to provide groundwork
@@ -224,7 +226,6 @@ struct intel_runtime_info {
 };
 
 struct intel_device_info {
-	struct ip_version graphics;
 	struct ip_version media;
 
 	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 9c31a16f8380..86456744431b 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -172,7 +172,7 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Using the global GTT may ask questions about KMS users, so prepare */
 	drm_mode_config_init(&i915->drm);
 
-	mkwrite_device_info(i915)->graphics.ver = -1;
+	RUNTIME_INFO(i915)->graphics.ver = -1;
 
 	mkwrite_device_info(i915)->page_sizes =
 		I915_GTT_PAGE_SIZE_4K |
-- 
2.34.1

