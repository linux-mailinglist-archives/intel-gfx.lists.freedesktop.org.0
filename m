Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5465512F7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF3810E2C8;
	Mon, 20 Jun 2022 08:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D897D10E2C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714319; x=1687250319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OKeK9pfsRsC48Ilox5MEKIaKGC1yOOt4RJd5DvaF72c=;
 b=komh8yeKFcDQre/vM92+bv/VZMaWHc68wXYqpIUeURY2m6V2me7WVDzs
 TpQiCuSOuZlc07gThXBS8MDU76zzGVoO4EytEzCwxIkEs6yKsIHJsQ2oL
 DuEpAfEXK17TXJs7Q3j7gGI2wMjz5Zn0aE7OoLSwXUkHQGEOZTEDrho52
 V3X0YyVDNP9aokJVebfWz3wy2yiu+C2ygKDbUjGdRSXri39PYl8g811QR
 vn/otYNSvGtjvhPZTnEKfG6SuwPgaTmLjeRM+ARBCEvYtC+bNe/rpuEb+
 ogvZfOr4bS9S73VPXyYdaLhKiPL6OoFggLlm4eoWJTdAtr3Pd3GZJLq9+ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259662128"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259662128"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:39 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="654574608"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:38:04 +0300
Message-Id: <88144ea43cc8f6793b40a9492eef1c62691f7727.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/16] drm/i915: move page_sizes to runtime info
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

If it's	modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c      |  2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c    | 14 +++++++-------
 drivers/gpu/drm/i915/i915_drv.h                |  2 +-
 drivers/gpu/drm/i915/i915_gem.c                |  3 +--
 drivers/gpu/drm/i915/i915_pci.c                | 18 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c       |  2 +-
 drivers/gpu/drm/i915/intel_device_info.h       |  4 ++--
 .../gpu/drm/i915/selftests/mock_gem_device.c   |  2 +-
 8 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 97c820eee115..0325ffa54e37 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -19,7 +19,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 				 unsigned int sg_page_sizes)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	unsigned long supported = INTEL_INFO(i915)->page_sizes;
+	unsigned long supported = RUNTIME_INFO(i915)->page_sizes;
 	bool shrinkable;
 	int i;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index ef15967be51a..488a10c20b85 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -358,7 +358,7 @@ fake_huge_pages_object(struct drm_i915_private *i915, u64 size, bool single)
 static int igt_check_page_sizes(struct i915_vma *vma)
 {
 	struct drm_i915_private *i915 = vma->vm->i915;
-	unsigned int supported = INTEL_INFO(i915)->page_sizes;
+	unsigned int supported = RUNTIME_INFO(i915)->page_sizes;
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
@@ -419,7 +419,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 {
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
-	unsigned int saved_mask = INTEL_INFO(i915)->page_sizes;
+	unsigned int saved_mask = RUNTIME_INFO(i915)->page_sizes;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	int i, j, single;
@@ -438,7 +438,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 				combination |= page_sizes[j];
 		}
 
-		mkwrite_device_info(i915)->page_sizes = combination;
+		RUNTIME_INFO(i915)->page_sizes = combination;
 
 		for (single = 0; single <= 1; ++single) {
 			obj = fake_huge_pages_object(i915, combination, !!single);
@@ -485,7 +485,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 out_put:
 	i915_gem_object_put(obj);
 out_device:
-	mkwrite_device_info(i915)->page_sizes = saved_mask;
+	RUNTIME_INFO(i915)->page_sizes = saved_mask;
 
 	return err;
 }
@@ -495,7 +495,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 	const unsigned int flags[] = { 0, I915_BO_ALLOC_CONTIGUOUS };
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
-	unsigned long supported = INTEL_INFO(i915)->page_sizes;
+	unsigned long supported = RUNTIME_INFO(i915)->page_sizes;
 	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
@@ -573,7 +573,7 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 {
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
-	unsigned long supported = INTEL_INFO(i915)->page_sizes;
+	unsigned long supported = RUNTIME_INFO(i915)->page_sizes;
 	struct drm_i915_gem_object *obj;
 	int bit;
 	int err;
@@ -1390,7 +1390,7 @@ static int igt_ppgtt_smoke_huge(void *arg)
 static int igt_ppgtt_sanity_check(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	unsigned int supported = INTEL_INFO(i915)->page_sizes;
+	unsigned int supported = RUNTIME_INFO(i915)->page_sizes;
 	struct {
 		igt_create_fn fn;
 		unsigned int flags;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f4aa31499fd4..9529add807f5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1213,7 +1213,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_PAGE_SIZES(dev_priv, sizes) ({ \
 	GEM_BUG_ON((sizes) == 0); \
-	((sizes) & ~INTEL_INFO(dev_priv)->page_sizes) == 0; \
+	((sizes) & ~RUNTIME_INFO(dev_priv)->page_sizes) == 0; \
 })
 
 #define HAS_OVERLAY(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_overlay)
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..4b76051312dd 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1091,8 +1091,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 
 	/* We need to fallback to 4K pages if host doesn't support huge gtt. */
 	if (intel_vgpu_active(dev_priv) && !intel_vgpu_has_huge_gtt(dev_priv))
-		mkwrite_device_info(dev_priv)->page_sizes =
-			I915_GTT_PAGE_SIZE_4K;
+		RUNTIME_INFO(dev_priv)->page_sizes = I915_GTT_PAGE_SIZE_4K;
 
 	ret = i915_gem_init_userptr(dev_priv);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index fb063284befa..0f888d044bc3 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -156,7 +156,7 @@
 /* Keep in gen based order, and chronological order within a gen */
 
 #define GEN_DEFAULT_PAGE_SIZES \
-	.page_sizes = I915_GTT_PAGE_SIZE_4K
+	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K
 
 #define GEN_DEFAULT_REGIONS \
 	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
@@ -643,8 +643,8 @@ static const struct intel_device_info chv_info = {
 };
 
 #define GEN9_DEFAULT_PAGE_SIZES \
-	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
-		      I915_GTT_PAGE_SIZE_64K
+	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K | \
+		I915_GTT_PAGE_SIZE_64K
 
 #define GEN9_FEATURES \
 	GEN8_FEATURES, \
@@ -798,9 +798,9 @@ static const struct intel_device_info cml_gt2_info = {
 };
 
 #define GEN11_DEFAULT_PAGE_SIZES \
-	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
-		      I915_GTT_PAGE_SIZE_64K | \
-		      I915_GTT_PAGE_SIZE_2M
+	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K | \
+		I915_GTT_PAGE_SIZE_64K |		\
+		I915_GTT_PAGE_SIZE_2M
 
 #define GEN11_FEATURES \
 	GEN9_FEATURES, \
@@ -1004,9 +1004,9 @@ static const struct intel_device_info adl_p_info = {
 #undef GEN
 
 #define XE_HP_PAGE_SIZES \
-	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
-		      I915_GTT_PAGE_SIZE_64K | \
-		      I915_GTT_PAGE_SIZE_2M
+	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K | \
+		I915_GTT_PAGE_SIZE_64K |		\
+		I915_GTT_PAGE_SIZE_2M
 
 #define XE_HP_FEATURES \
 	.graphics.ver = 12, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 82a82fd83673..0b43da87d0ec 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -109,7 +109,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
-	drm_printf(p, "page-sizes: %x\n", info->page_sizes);
+	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
 	drm_printf(p, "ppgtt-size: %d\n", info->ppgtt_size);
 	drm_printf(p, "ppgtt-type: %d\n", info->ppgtt_type);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 86d796eb93ad..f997ecf4b4fb 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -214,6 +214,8 @@ struct intel_runtime_info {
 
 	struct intel_step_info step;
 
+	unsigned int page_sizes; /* page sizes supported by the HW */
+
 	/* display */
 	struct {
 		u8 num_sprites[I915_MAX_PIPES];
@@ -236,8 +238,6 @@ struct intel_device_info {
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
-	unsigned int page_sizes; /* page sizes supported by the HW */
-
 	u32 memory_regions; /* regions supported by the HW */
 
 	u32 display_mmio_offset;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 9c31a16f8380..4853b5804474 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -174,7 +174,7 @@ struct drm_i915_private *mock_gem_device(void)
 
 	mkwrite_device_info(i915)->graphics.ver = -1;
 
-	mkwrite_device_info(i915)->page_sizes =
+	RUNTIME_INFO(i915)->page_sizes =
 		I915_GTT_PAGE_SIZE_4K |
 		I915_GTT_PAGE_SIZE_64K |
 		I915_GTT_PAGE_SIZE_2M;
-- 
2.30.2

