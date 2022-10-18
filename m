Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E15966026B2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498B810E782;
	Tue, 18 Oct 2022 08:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FB710EEF0;
 Tue, 18 Oct 2022 08:24:18 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5CDBB68C4E; Tue, 18 Oct 2022 10:24:13 +0200 (CEST)
Date: Tue, 18 Oct 2022 10:24:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek =?iso-8859-1?Q?Marczykowski-G=F3recki?=
 <marmarek@invisiblethingslab.com>
Message-ID: <20221018082413.GA25785@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y04i8V7xamTkuqNA@mail-itl>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] i915 "GPU HANG",
 bisected to a2daa27c0c61 "swiotlb: simplify swiotlb_max_segment"
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, regressions@lists.linux.dev,
 dri-devel@lists.freedesktop.org, Anshuman Khandual <anshuman.khandual@arm.com>,
 intel-gfx@lists.freedesktop.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, iommu@lists.linux.dev,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 18, 2022 at 05:52:16AM +0200, Marek Marczykowski-Górecki wrote:
> not only) when using IGD in Xen PV dom0. After not very long time Xorg
> crashes, and dmesg contain messages like this:
> 
>     i915 0000:00:02.0: [drm] GPU HANG: ecode 7:1:01fffbfe, in Xorg [5337]
>     i915 0000:00:02.0: [drm] Resetting rcs0 for stopped heartbeat on rcs0
>     i915 0000:00:02.0: [drm] Xorg[5337] context reset due to GPU hang

<snip>

> I tried reverting just this commit on top of 6.0.x, but the context
> changed significantly in subsequent commits, so after trying reverting
> it together with 3 or 4 more commits I gave up.
> 
> What may be an important detail, the system heavily uses cross-VM shared
> memory (gntdev) to map window contents from VMs. This is Qubes OS, and
> it uses Xen 4.14.

Can you try the patch below?

---
From 26fe4749750f1bf843666ca777e297279994e33a Mon Sep 17 00:00:00 2001
From: Robert Beckett <bob.beckett@collabora.com>
Date: Tue, 26 Jul 2022 16:39:35 +0100
Subject: drm/i915: stop abusing swiotlb_max_segment

Calling swiotlb functions directly is nowadays considered harmful. See
https://lore.kernel.org/intel-gfx/20220711082614.GA29487@lst.de/

Replace swiotlb_max_segment() calls with dma_max_mapping_size().
In i915_gem_object_get_pages_internal() no longer consider max_segment
only if CONFIG_SWIOTLB is enabled. There can be other (iommu related)
causes of specific max segment sizes.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
[hch: added the Xen hack]
---
 drivers/gpu/drm/i915/gem/i915_gem_internal.c | 19 +++----------
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      |  4 +--
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c  |  2 +-
 drivers/gpu/drm/i915/i915_scatterlist.h      | 30 +++++++++++---------
 5 files changed, 25 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index c698f95af15fe..629acb403a2c9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -6,7 +6,6 @@
 
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
-#include <linux/swiotlb.h>
 
 #include "i915_drv.h"
 #include "i915_gem.h"
@@ -38,22 +37,12 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 	struct scatterlist *sg;
 	unsigned int sg_page_sizes;
 	unsigned int npages;
-	int max_order;
+	int max_order = MAX_ORDER;
+	unsigned int max_segment;
 	gfp_t gfp;
 
-	max_order = MAX_ORDER;
-#ifdef CONFIG_SWIOTLB
-	if (is_swiotlb_active(obj->base.dev->dev)) {
-		unsigned int max_segment;
-
-		max_segment = swiotlb_max_segment();
-		if (max_segment) {
-			max_segment = max_t(unsigned int, max_segment,
-					    PAGE_SIZE) >> PAGE_SHIFT;
-			max_order = min(max_order, ilog2(max_segment));
-		}
-	}
-#endif
+	max_segment = i915_sg_segment_size(i915->drm.dev) >> PAGE_SHIFT;
+	max_order = min(max_order, get_order(max_segment));
 
 	gfp = GFP_KERNEL | __GFP_HIGHMEM | __GFP_RECLAIMABLE;
 	if (IS_I965GM(i915) || IS_I965G(i915)) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index f42ca1179f373..11125c32dd35d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -194,7 +194,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	struct intel_memory_region *mem = obj->mm.region;
 	struct address_space *mapping = obj->base.filp->f_mapping;
 	const unsigned long page_count = obj->base.size / PAGE_SIZE;
-	unsigned int max_segment = i915_sg_segment_size();
+	unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
 	struct sg_table *st;
 	struct sgt_iter sgt_iter;
 	struct page *page;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index e3fc38dd5db04..de5d0a7241027 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -189,7 +189,7 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 	struct drm_i915_private *i915 = container_of(bdev, typeof(*i915), bdev);
 	struct intel_memory_region *mr = i915->mm.regions[INTEL_MEMORY_SYSTEM];
 	struct i915_ttm_tt *i915_tt = container_of(ttm, typeof(*i915_tt), ttm);
-	const unsigned int max_segment = i915_sg_segment_size();
+	const unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
 	const size_t size = (size_t)ttm->num_pages << PAGE_SHIFT;
 	struct file *filp = i915_tt->filp;
 	struct sgt_iter sgt_iter;
@@ -538,7 +538,7 @@ static struct i915_refct_sgt *i915_ttm_tt_get_st(struct ttm_tt *ttm)
 	ret = sg_alloc_table_from_pages_segment(st,
 			ttm->pages, ttm->num_pages,
 			0, (unsigned long)ttm->num_pages << PAGE_SHIFT,
-			i915_sg_segment_size(), GFP_KERNEL);
+			i915_sg_segment_size(i915_tt->dev), GFP_KERNEL);
 	if (ret) {
 		st->sgl = NULL;
 		return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8423df021b713..e4515d6acd43c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -129,7 +129,7 @@ static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
 static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 {
 	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
-	unsigned int max_segment = i915_sg_segment_size();
+	unsigned int max_segment = i915_sg_segment_size(obj->base.dev->dev);
 	struct sg_table *st;
 	unsigned int sg_page_sizes;
 	struct page **pvec;
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index 9ddb3e743a3e5..c278888f71528 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -9,7 +9,8 @@
 
 #include <linux/pfn.h>
 #include <linux/scatterlist.h>
-#include <linux/swiotlb.h>
+#include <linux/dma-mapping.h>
+#include <xen/xen.h>
 
 #include "i915_gem.h"
 
@@ -127,19 +128,22 @@ static inline unsigned int i915_sg_dma_sizes(struct scatterlist *sg)
 	return page_sizes;
 }
 
-static inline unsigned int i915_sg_segment_size(void)
+static inline unsigned int i915_sg_segment_size(struct device *dev)
 {
-	unsigned int size = swiotlb_max_segment();
-
-	if (size == 0)
-		size = UINT_MAX;
-
-	size = rounddown(size, PAGE_SIZE);
-	/* swiotlb_max_segment_size can return 1 byte when it means one page. */
-	if (size < PAGE_SIZE)
-		size = PAGE_SIZE;
-
-	return size;
+	size_t max = min_t(size_t, UINT_MAX, dma_max_mapping_size(dev));
+
+	/*
+	 * Xen on x86 can reshuffle pages under us.  The DMA API takes
+	 * care of that both in dma_alloc_* (by calling into the hypervisor
+	 * to make the pages contigous) and in dma_map_* (by bounce buffering).
+	 * But i915 abuses ignores the coherency aspects of the DMA API and
+	 * thus can't cope with bounce buffering actually happening, so add
+	 * a hack here to force small allocations and mapping when running on
+	 * Xen.  (good luck with TDX, btw --hch)
+	 */
+	if (IS_ENABLED(CONFIG_X86) && xen_domain())
+		max = PAGE_SIZE;
+	return round_down(max, PAGE_SIZE);
 }
 
 bool i915_sg_trim(struct sg_table *orig_st);
-- 
2.30.2

