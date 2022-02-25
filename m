Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 664EA4C480E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 15:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7074710E137;
	Fri, 25 Feb 2022 14:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DBEC10E137;
 Fri, 25 Feb 2022 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645800972; x=1677336972;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+sK4ANL6EXDLXUM5II3MLr9Qpsys+DWr+2+8pIk3FsA=;
 b=Q0wi3zLpOuhKco2d8zg4AwaDGopbBkX3eW3+ej35m4K+LFOF7HCo2HNB
 Nm+60zKSvSZFRlISo0BceBSRc4gnNXiNJJLeO4GTNjaMS29lfFxTxaUrc
 NNKLEwMUzcGrifvbfzRomOYFo4v0qTyjLlzCKa/md7Mbe3Mj3RrxRzha+
 E0DKN1NiDmMj0twBVHbv9zpCuK/eqxhW3kMEANOK5w+HjDxHm3xHF1bjr
 J3QYTyqkrWfXLrjDsgA1Edc1lh5wKDNZQE2fb0oPZUUntG1dWI9Cj1hei
 f6nXTAS6zQHqGC3UqdX0K3OZIpX6yK8KWA2ZIFFmGFn46g9jdhdGBOrgc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252237221"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252237221"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:56:11 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707882124"
Received: from phelanmi-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.25.227])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:56:10 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 14:54:56 +0000
Message-Id: <20220225145502.331818-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/7] drm/i915: add io_size plumbing
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With small LMEM-BAR we need to be able to differentiate between the
total size of LMEM, and how much of it is CPU mappable. The end goal is
to be able to utilize the entire range, even if part of is it not CPU
accessible.

v2: also update intelfb_create

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c           | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c            | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c           | 8 +++++---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c              | 2 +-
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c      | 2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c          | 5 ++++-
 drivers/gpu/drm/i915/intel_memory_region.c           | 6 ++++--
 drivers/gpu/drm/i915/intel_memory_region.h           | 2 ++
 drivers/gpu/drm/i915/selftests/intel_memory_region.c | 8 ++++----
 drivers/gpu/drm/i915/selftests/mock_region.c         | 6 ++++--
 drivers/gpu/drm/i915/selftests/mock_region.h         | 3 ++-
 11 files changed, 29 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index fd5bc7acf08d..2cd62a187df3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -265,7 +265,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		struct intel_memory_region *mem = obj->mm.region;
 
 		info->apertures->ranges[0].base = mem->io_start;
-		info->apertures->ranges[0].size = mem->total;
+		info->apertures->ranges[0].size = mem->io_size;
 
 		/* Use fbdev's framebuffer from lmem for discrete */
 		info->fix.smem_start =
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4efa821f3cb1..3a1c782ed791 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -699,7 +699,7 @@ struct intel_memory_region *i915_gem_shmem_setup(struct drm_i915_private *i915,
 {
 	return intel_memory_region_create(i915, 0,
 					  totalram_pages() << PAGE_SHIFT,
-					  PAGE_SIZE, 0,
+					  PAGE_SIZE, 0, 0,
 					  type, instance,
 					  &shmem_region_ops);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 636cdf8a73b0..0bf8f61134af 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -492,6 +492,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 
 	/* Exclude the reserved region from driver use */
 	mem->region.end = reserved_base - 1;
+	mem->io_size = resource_size(&mem->region);
 
 	/* It is possible for the reserved area to end before the end of stolen
 	 * memory, so just consider the start. */
@@ -751,7 +752,7 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 
 	if (!io_mapping_init_wc(&mem->iomap,
 				mem->io_start,
-				resource_size(&mem->region)))
+				mem->io_size))
 		return -EIO;
 
 	/*
@@ -806,7 +807,8 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 						I915_GTT_PAGE_SIZE_4K;
 
 	mem = intel_memory_region_create(i915, lmem_base, lmem_size,
-					 min_page_size, io_start,
+					 min_page_size,
+					 io_start, lmem_size,
 					 type, instance,
 					 &i915_region_stolen_lmem_ops);
 	if (IS_ERR(mem))
@@ -837,7 +839,7 @@ i915_gem_stolen_smem_setup(struct drm_i915_private *i915, u16 type,
 	mem = intel_memory_region_create(i915,
 					 intel_graphics_stolen_res.start,
 					 resource_size(&intel_graphics_stolen_res),
-					 PAGE_SIZE, 0, type, instance,
+					 PAGE_SIZE, 0, 0, type, instance,
 					 &i915_region_stolen_smem_ops);
 	if (IS_ERR(mem))
 		return mem;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 8419096d4056..53c183f13a38 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1103,7 +1103,7 @@ i915_gem_ttm_system_setup(struct drm_i915_private *i915,
 
 	mr = intel_memory_region_create(i915, 0,
 					totalram_pages() << PAGE_SHIFT,
-					PAGE_SIZE, 0,
+					PAGE_SIZE, 0, 0,
 					type, instance,
 					&ttm_system_region_ops);
 	if (IS_ERR(mr))
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0528fe1fc9b3..dbbae53f820a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -500,7 +500,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 	int bit;
 	int err = 0;
 
-	mem = mock_region_create(i915, 0, SZ_2G, I915_GTT_PAGE_SIZE_4K, 0);
+	mem = mock_region_create(i915, 0, SZ_2G, I915_GTT_PAGE_SIZE_4K, 0, 0);
 	if (IS_ERR(mem)) {
 		pr_err("%s failed to create memory region\n", __func__);
 		return PTR_ERR(mem);
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index fc00888ca4b2..784b377e6372 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -32,7 +32,7 @@ region_lmem_init(struct intel_memory_region *mem)
 
 	if (!io_mapping_init_wc(&mem->iomap,
 				mem->io_start,
-				resource_size(&mem->region)))
+				mem->io_size))
 		return -EIO;
 
 	ret = intel_region_ttm_init(mem);
@@ -134,6 +134,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 					 lmem_size,
 					 min_page_size,
 					 io_start,
+					 lmem_size,
 					 INTEL_MEMORY_LOCAL,
 					 0,
 					 &intel_region_lmem_ops);
@@ -147,6 +148,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
 	drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
 		&mem->io_start);
+	drm_info(&i915->drm, "Local memory IO size: %pa\n",
+		&mem->io_size);
 	drm_info(&i915->drm, "Local memory available: %pa\n",
 		 &lmem_size);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 16ab62d605b1..1c841f68169a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -100,10 +100,10 @@ static int iomemtest(struct intel_memory_region *mem,
 	resource_size_t last, page;
 	int err;
 
-	if (resource_size(&mem->region) < PAGE_SIZE)
+	if (mem->io_size < PAGE_SIZE)
 		return 0;
 
-	last = resource_size(&mem->region) - PAGE_SIZE;
+	last = mem->io_size - PAGE_SIZE;
 
 	/*
 	 * Quick test to check read/write access to the iomap (backing store).
@@ -221,6 +221,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 			   resource_size_t size,
 			   resource_size_t min_page_size,
 			   resource_size_t io_start,
+			   resource_size_t io_size,
 			   u16 type,
 			   u16 instance,
 			   const struct intel_memory_region_ops *ops)
@@ -235,6 +236,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->i915 = i915;
 	mem->region = (struct resource)DEFINE_RES_MEM(start, size);
 	mem->io_start = io_start;
+	mem->io_size = io_size;
 	mem->min_page_size = min_page_size;
 	mem->ops = ops;
 	mem->total = size;
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 06464b8865fc..21dcbd620758 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -68,6 +68,7 @@ struct intel_memory_region {
 	struct resource region;
 
 	resource_size_t io_start;
+	resource_size_t io_size;
 	resource_size_t min_page_size;
 	resource_size_t total;
 	resource_size_t avail;
@@ -98,6 +99,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 			   resource_size_t size,
 			   resource_size_t min_page_size,
 			   resource_size_t io_start,
+			   resource_size_t io_size,
 			   u16 type,
 			   u16 instance,
 			   const struct intel_memory_region_ops *ops);
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 7acba1d2135e..247f65f02bbf 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -170,7 +170,7 @@ static int igt_mock_reserve(void *arg)
 	if (!order)
 		return 0;
 
-	mem = mock_region_create(i915, 0, SZ_2G, I915_GTT_PAGE_SIZE_4K, 0);
+	mem = mock_region_create(i915, 0, SZ_2G, I915_GTT_PAGE_SIZE_4K, 0, 0);
 	if (IS_ERR(mem)) {
 		pr_err("failed to create memory region\n");
 		err = PTR_ERR(mem);
@@ -383,7 +383,7 @@ static int igt_mock_splintered_region(void *arg)
 	 */
 
 	size = (SZ_4G - 1) & PAGE_MASK;
-	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0);
+	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0, 0);
 	if (IS_ERR(mem))
 		return PTR_ERR(mem);
 
@@ -471,7 +471,7 @@ static int igt_mock_max_segment(void *arg)
 	 */
 
 	size = SZ_8G;
-	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0);
+	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0, 0);
 	if (IS_ERR(mem))
 		return PTR_ERR(mem);
 
@@ -1188,7 +1188,7 @@ int intel_memory_region_mock_selftests(void)
 	if (!i915)
 		return -ENOMEM;
 
-	mem = mock_region_create(i915, 0, SZ_2G, I915_GTT_PAGE_SIZE_4K, 0);
+	mem = mock_region_create(i915, 0, SZ_2G, I915_GTT_PAGE_SIZE_4K, 0, 0);
 	if (IS_ERR(mem)) {
 		pr_err("failed to create memory region\n");
 		err = PTR_ERR(mem);
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index 19bff8afcaaa..467eeae6d5f0 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -107,7 +107,8 @@ mock_region_create(struct drm_i915_private *i915,
 		   resource_size_t start,
 		   resource_size_t size,
 		   resource_size_t min_page_size,
-		   resource_size_t io_start)
+		   resource_size_t io_start,
+		   resource_size_t io_size)
 {
 	int instance = ida_alloc_max(&i915->selftest.mock_region_instances,
 				     TTM_NUM_MEM_TYPES - TTM_PL_PRIV - 1,
@@ -117,6 +118,7 @@ mock_region_create(struct drm_i915_private *i915,
 		return ERR_PTR(instance);
 
 	return intel_memory_region_create(i915, start, size, min_page_size,
-					  io_start, INTEL_MEMORY_MOCK, instance,
+					  io_start, io_size,
+					  INTEL_MEMORY_MOCK, instance,
 					  &mock_region_ops);
 }
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.h b/drivers/gpu/drm/i915/selftests/mock_region.h
index 329bf74dfaca..e36c3a433551 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.h
+++ b/drivers/gpu/drm/i915/selftests/mock_region.h
@@ -16,6 +16,7 @@ mock_region_create(struct drm_i915_private *i915,
 		   resource_size_t start,
 		   resource_size_t size,
 		   resource_size_t min_page_size,
-		   resource_size_t io_start);
+		   resource_size_t io_start,
+		   resource_size_t io_size);
 
 #endif /* !__MOCK_REGION_H */
-- 
2.34.1

