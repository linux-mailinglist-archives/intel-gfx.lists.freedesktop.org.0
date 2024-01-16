Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C28D382EA6E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3775A10E3FF;
	Tue, 16 Jan 2024 07:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8807E10E3FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391803; x=1736927803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NjUQqdLw6QFD2HzbCaWicpUqnUHUSEH50yDBueBgiJ8=;
 b=QT7wnp2O163pnJonv7Na/3qRWV2KX2x1DRklkk0EYo86jz6Eu79cFl5J
 X+Bj90swVU3JIF8quBE9ZHh9Uatcr6khutfsFJyyDohgpvX+A93d+/aRZ
 Xo1spORadMZk8bIWYIzofNijNu6vsxF0kDkSra8wv0z3w95o/Q2cqOKzP
 GsiCrkjW6ADaQUEc0jcWwZl86gL4za5LWpSQ5admg1rSWEVnRGw/rCOxv
 /1jANzXoqsWXgoM+aoMjswRxOCjsqG2y9841wHSqrCB1gMpWhHU3YOvgH
 F6Q2DvLKUjtKG7ykbSgUNcTik5bIiomzUOSQvNISfnSnR3DrcMwrsyzgf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948456"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948456"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:56:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776946959"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776946959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:56:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:56:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 01/16] drm/i915: Use struct resource for memory region IO
 as well
Date: Tue, 16 Jan 2024 09:56:21 +0200
Message-ID: <20240116075636.6121-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

mem->region is a struct resource, but mem->io_start and
mem->io_size are not for whatever reason. Let's unify this
and convert the io stuff into a struct resource as well.
Should make life a little less annoying when you don't have
juggle between two different approaches all the time.

Mostly done using cocci (with manual tweaks at all the
places where we mutate io_size by hand):
@@
struct intel_memory_region *M;
expression START, SIZE;
@@
- M->io_start = START;
- M->io_size = SIZE;
+ M->io = DEFINE_RES_MEM(START, SIZE);

@@
struct intel_memory_region *M;
@@
- M->io_start
+ M->io.start

@@
struct intel_memory_region M;
@@
- M.io_start
+ M.io.start

@@
expression M;
@@
- M->io_size
+ resource_size(&M->io)

@@
expression M;
@@
- M.io_size
+ resource_size(&M.io)

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_region.c     |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c     | 17 +++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c        |  8 ++++----
 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c | 18 +++++++++---------
 drivers/gpu/drm/i915/gt/intel_region_lmem.c    | 11 +++--------
 drivers/gpu/drm/i915/gt/selftest_tlb.c         |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c          |  2 +-
 drivers/gpu/drm/i915/i915_query.c              |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.c     | 15 +++++++--------
 drivers/gpu/drm/i915/intel_memory_region.h     |  3 +--
 drivers/gpu/drm/i915/intel_region_ttm.c        |  8 ++++----
 .../drm/i915/selftests/intel_memory_region.c   |  4 ++--
 13 files changed, 45 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 717c3a3237c4..1ac05d90b2e8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -78,7 +78,7 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
 
 		/* Use fbdev's framebuffer from lmem for discrete */
 		info->fix.smem_start =
-			(unsigned long)(mem->io_start +
+			(unsigned long)(mem->io.start +
 					i915_gem_object_get_dma_address(obj, 0));
 		info->fix.smem_len = obj->base.size;
 	} else {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index a4fb577eceb4..b09b74a2448b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -129,7 +129,7 @@ i915_gem_object_create_region_at(struct intel_memory_region *mem,
 		return ERR_PTR(-EINVAL);
 
 	if (!(flags & I915_BO_ALLOC_GPU_ONLY) &&
-	    offset + size > mem->io_size &&
+	    offset + size > resource_size(&mem->io) &&
 	    !i915_ggtt_has_aperture(to_gt(mem->i915)->ggtt))
 		return ERR_PTR(-ENOSPC);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 8c88075eeab2..d2440c793f84 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -541,7 +541,9 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 
 	/* Exclude the reserved region from driver use */
 	mem->region.end = i915->dsm.reserved.start - 1;
-	mem->io_size = min(mem->io_size, resource_size(&mem->region));
+	mem->io = DEFINE_RES_MEM(mem->io.start,
+				 min(resource_size(&mem->io),
+				     resource_size(&mem->region)));
 
 	i915->dsm.usable_size = resource_size(&mem->region);
 
@@ -752,7 +754,7 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	 * With discrete devices, where we lack a mappable aperture there is no
 	 * possible way to ever access this memory on the CPU side.
 	 */
-	if (mem->type == INTEL_MEMORY_STOLEN_LOCAL && !mem->io_size &&
+	if (mem->type == INTEL_MEMORY_STOLEN_LOCAL && !resource_size(&mem->io) &&
 	    !(flags & I915_BO_ALLOC_GPU_ONLY))
 		return -ENOSPC;
 
@@ -838,13 +840,12 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 		return 0;
 	}
 
-	if (mem->io_size &&
-	    !io_mapping_init_wc(&mem->iomap, mem->io_start, mem->io_size))
+	if (resource_size(&mem->io) &&
+	    !io_mapping_init_wc(&mem->iomap, mem->io.start, resource_size(&mem->io)))
 		goto err_cleanup;
 
-	drm_dbg(&i915->drm, "Stolen Local memory IO start: %pa\n",
-		&mem->io_start);
-	drm_dbg(&i915->drm, "Stolen Local DSM base: %pa\n", &mem->region.start);
+	drm_dbg(&i915->drm, "Stolen Local DSM: %pR\n", &mem->region);
+	drm_dbg(&i915->drm, "Stolen Local memory IO: %pR\n", &mem->io);
 
 	return 0;
 
@@ -855,7 +856,7 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 
 static int release_stolen_lmem(struct intel_memory_region *mem)
 {
-	if (mem->io_size)
+	if (resource_size(&mem->io))
 		io_mapping_fini(&mem->iomap);
 	i915_gem_cleanup_stolen(mem->i915);
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 6b69ef0cdbb4..19467ff70ca9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -144,13 +144,13 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 		place->fpfn = offset >> PAGE_SHIFT;
 		WARN_ON(overflows_type(place->fpfn + (size >> PAGE_SHIFT), place->lpfn));
 		place->lpfn = place->fpfn + (size >> PAGE_SHIFT);
-	} else if (mr->io_size && mr->io_size < mr->total) {
+	} else if (resource_size(&mr->io) && resource_size(&mr->io) < mr->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place->flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
 			place->fpfn = 0;
-			WARN_ON(overflows_type(mr->io_size >> PAGE_SHIFT, place->lpfn));
-			place->lpfn = mr->io_size >> PAGE_SHIFT;
+			WARN_ON(overflows_type(resource_size(&mr->io) >> PAGE_SHIFT, place->lpfn));
+			place->lpfn = resource_size(&mr->io) >> PAGE_SHIFT;
 		}
 	}
 }
@@ -1090,7 +1090,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 			struct intel_memory_region *mr = obj->mm.placements[i];
 			unsigned int flags;
 
-			if (!mr->io_size && mr->type != INTEL_MEMORY_SYSTEM)
+			if (!resource_size(&mr->io) && mr->type != INTEL_MEMORY_SYSTEM)
 				continue;
 
 			flags = obj->flags;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 2c51a2c452fc..99a9ade73956 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1054,7 +1054,7 @@ static int igt_fill_mappable(struct intel_memory_region *mr,
 	int err;
 
 	total = 0;
-	size = mr->io_size;
+	size = resource_size(&mr->io);
 	do {
 		struct drm_i915_gem_object *obj;
 
@@ -1315,28 +1315,28 @@ static int igt_mmap_migrate(void *arg)
 		struct intel_memory_region *mixed[] = { mr, system };
 		struct intel_memory_region *single[] = { mr };
 		struct ttm_resource_manager *man = mr->region_private;
-		resource_size_t saved_io_size;
+		struct resource saved_io;
 		int err;
 
 		if (mr->private)
 			continue;
 
-		if (!mr->io_size)
+		if (!resource_size(&mr->io))
 			continue;
 
 		/*
 		 * For testing purposes let's force small BAR, if not already
 		 * present.
 		 */
-		saved_io_size = mr->io_size;
-		if (mr->io_size == mr->total) {
-			resource_size_t io_size = mr->io_size;
+		saved_io = mr->io;
+		if (resource_size(&mr->io) == mr->total) {
+			resource_size_t io_size = resource_size(&mr->io);
 
 			io_size = rounddown_pow_of_two(io_size >> 1);
 			if (io_size < PAGE_SIZE)
 				continue;
 
-			mr->io_size = io_size;
+			mr->io = DEFINE_RES_MEM(mr->io.start, io_size);
 			i915_ttm_buddy_man_force_visible_size(man,
 							      io_size >> PAGE_SHIFT);
 		}
@@ -1396,9 +1396,9 @@ static int igt_mmap_migrate(void *arg)
 					 IGT_MMAP_MIGRATE_FAIL_GPU |
 					 IGT_MMAP_MIGRATE_UNFAULTABLE);
 out_io_size:
-		mr->io_size = saved_io_size;
+		mr->io = saved_io;
 		i915_ttm_buddy_man_force_visible_size(man,
-						      mr->io_size >> PAGE_SHIFT);
+						      resource_size(&mr->io) >> PAGE_SHIFT);
 		if (err)
 			return err;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index f8512aee58a8..6f96a6b70601 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -144,8 +144,8 @@ region_lmem_init(struct intel_memory_region *mem)
 	int ret;
 
 	if (!io_mapping_init_wc(&mem->iomap,
-				mem->io_start,
-				mem->io_size))
+				mem->io.start,
+				resource_size(&mem->io)))
 		return -EIO;
 
 	ret = intel_region_ttm_init(mem);
@@ -274,12 +274,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		goto err_region_put;
 
 	drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
-	drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
-		&mem->io_start);
-	drm_info(&i915->drm, "Local memory IO size: %pa\n",
-		 &mem->io_size);
-	drm_info(&i915->drm, "Local memory available: %pa\n",
-		 &lmem_size);
+	drm_dbg(&i915->drm, "Local memory IO: %pR\n", &mem->io);
 
 	if (io_size < lmem_size)
 		drm_info(&i915->drm, "Using a reduced BAR size of %lluMiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 00b872b6380b..3941f2d6fa47 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -206,8 +206,8 @@ static struct drm_i915_gem_object *create_lmem(struct intel_gt *gt)
 	 * of pages. To succeed with both allocations, especially in case of Small
 	 * BAR, try to allocate no more than quarter of mappable memory.
 	 */
-	if (mr && size > mr->io_size / 4)
-		size = mr->io_size / 4;
+	if (mr && size > resource_size(&mr->io) / 4)
+		size = resource_size(&mr->io) / 4;
 
 	return i915_gem_object_create_lmem(gt->i915, size, I915_BO_ALLOC_CONTIGUOUS);
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index d04660b60046..a0b784ebaddd 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1157,7 +1157,7 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 			dma_addr_t offset = dma - mem->region.start;
 			void __iomem *s;
 
-			if (offset + PAGE_SIZE > mem->io_size) {
+			if (offset + PAGE_SIZE > resource_size(&mem->io)) {
 				ret = -EINVAL;
 				break;
 			}
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 00871ef99792..fa3e937ed3f5 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -502,7 +502,7 @@ static int query_memregion_info(struct drm_i915_private *i915,
 		info.probed_size = mr->total;
 
 		if (mr->type == INTEL_MEMORY_LOCAL)
-			info.probed_cpu_visible_size = mr->io_size;
+			info.probed_cpu_visible_size = resource_size(&mr->io);
 		else
 			info.probed_cpu_visible_size = mr->total;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 60a03340bbd4..b2708f8cac2a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -50,7 +50,7 @@ static int __iopagetest(struct intel_memory_region *mem,
 	if (memchr_inv(result, value, sizeof(result))) {
 		dev_err(mem->i915->drm.dev,
 			"Failed to read back from memory region:%pR at [%pa + %pa] for %ps; wrote %x, read (%x, %x, %x)\n",
-			&mem->region, &mem->io_start, &offset, caller,
+			&mem->region, &mem->io.start, &offset, caller,
 			value, result[0], result[1], result[2]);
 		return -EINVAL;
 	}
@@ -67,11 +67,11 @@ static int iopagetest(struct intel_memory_region *mem,
 	int err;
 	int i;
 
-	va = ioremap_wc(mem->io_start + offset, PAGE_SIZE);
+	va = ioremap_wc(mem->io.start + offset, PAGE_SIZE);
 	if (!va) {
 		dev_err(mem->i915->drm.dev,
 			"Failed to ioremap memory region [%pa + %pa] for %ps\n",
-			&mem->io_start, &offset, caller);
+			&mem->io.start, &offset, caller);
 		return -EFAULT;
 	}
 
@@ -102,10 +102,10 @@ static int iomemtest(struct intel_memory_region *mem,
 	resource_size_t last, page;
 	int err;
 
-	if (mem->io_size < PAGE_SIZE)
+	if (resource_size(&mem->io) < PAGE_SIZE)
 		return 0;
 
-	last = mem->io_size - PAGE_SIZE;
+	last = resource_size(&mem->io) - PAGE_SIZE;
 
 	/*
 	 * Quick test to check read/write access to the iomap (backing store).
@@ -207,7 +207,7 @@ static int intel_memory_region_memtest(struct intel_memory_region *mem,
 	struct drm_i915_private *i915 = mem->i915;
 	int err = 0;
 
-	if (!mem->io_start)
+	if (!mem->io.start)
 		return 0;
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) || i915->params.memtest)
@@ -252,8 +252,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 
 	mem->i915 = i915;
 	mem->region = DEFINE_RES_MEM(start, size);
-	mem->io_start = io_start;
-	mem->io_size = io_size;
+	mem->io = DEFINE_RES_MEM(io_start, io_size);
 	mem->min_page_size = min_page_size;
 	mem->ops = ops;
 	mem->total = size;
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 9ba36454e51b..40810cfb3fd9 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -71,8 +71,7 @@ struct intel_memory_region {
 	struct io_mapping iomap;
 	struct resource region;
 
-	resource_size_t io_start;
-	resource_size_t io_size;
+	struct resource io;
 	resource_size_t min_page_size;
 	resource_size_t total;
 
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index bf6097e7433d..04525d92bec5 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -87,7 +87,7 @@ int intel_region_ttm_init(struct intel_memory_region *mem)
 
 	ret = i915_ttm_buddy_man_init(bdev, mem_type, false,
 				      resource_size(&mem->region),
-				      mem->io_size,
+				      resource_size(&mem->io),
 				      mem->min_page_size, PAGE_SIZE);
 	if (ret)
 		return ret;
@@ -219,16 +219,16 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 			goto out;
 		}
 		place.lpfn = place.fpfn + (size >> PAGE_SHIFT);
-	} else if (mem->io_size && mem->io_size < mem->total) {
+	} else if (resource_size(&mem->io) && resource_size(&mem->io) < mem->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place.flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
 			place.fpfn = 0;
-			if (WARN_ON(overflows_type(mem->io_size >> PAGE_SHIFT, place.lpfn))) {
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {
 				ret = -E2BIG;
 				goto out;
 			}
-			place.lpfn = mem->io_size >> PAGE_SHIFT;
+			place.lpfn = resource_size(&mem->io) >> PAGE_SHIFT;
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index d985d9bae2e8..ae6070b5bf07 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -544,8 +544,8 @@ static u64 igt_object_mappable_total(struct drm_i915_gem_object *obj)
 		u64 start = drm_buddy_block_offset(block);
 		u64 end = start + drm_buddy_block_size(mm, block);
 
-		if (start < mr->io_size)
-			total += min_t(u64, end, mr->io_size) - start;
+		if (start < resource_size(&mr->io))
+			total += min_t(u64, end, resource_size(&mr->io)) - start;
 	}
 
 	return total;
-- 
2.41.0

