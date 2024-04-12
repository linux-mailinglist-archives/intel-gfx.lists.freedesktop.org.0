Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29C88A2309
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 02:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BFD10F467;
	Fri, 12 Apr 2024 00:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WN1WlZwY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B442E10F467
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 00:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712882970; x=1744418970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v9PzscYJuoPEhcwPTyxQUo9V776dfzsBf4zA5vvVWsI=;
 b=WN1WlZwYSAX0sXtjsscBYKmTJFmpnLEMknymmW1fXBOiga+V58BBpXNQ
 TlnT5HfR5pu4x2aYIJRXz+uoGNZ1AztV42biGDNIGXAc4JIYcbhOmvNCR
 /H/aQPe5SbLi9wEpWrBy9Mcq88XgDkYme67M7SPM7oqYjSqF58x9AhC0a
 zzBQkO3V9h6+nXrlKmleE3XN+B7Rv+fb/TZ8zSXk3ghLVmh5R/NtaaSOe
 x2g4STHvXKIejWjVBWHBPC5mPXBLY/j8QmM+oGKzPeqTMWlinOEHaetBd
 an8kFLoYnQQchFUdQk2wqSUO5/umlEJckx6d40tC/d6muX422r6+Qp02u w==;
X-CSE-ConnectionGUID: GRuUQ9CyQOaxtPdgsL4/+w==
X-CSE-MsgGUID: BqnV46M3SOKR5oBy7BaT2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8186771"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="8186771"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:49:29 -0700
X-CSE-ConnectionGUID: jDfI1oFASaaAn40XqmXcDA==
X-CSE-MsgGUID: VF3K/pdDSF+I9AiGDaelMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="21160598"
Received: from unknown (HELO intel.com) ([10.247.119.7])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:49:24 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v3 3/3] drm/i915/gem: Calculate object page offset for partial
 memory mapping
Date: Fri, 12 Apr 2024 02:48:08 +0200
Message-ID: <20240412004808.288130-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412004808.288130-1-andi.shyti@linux.intel.com>
References: <20240412004808.288130-1-andi.shyti@linux.intel.com>
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

To enable partial memory mapping of GPU virtual memory, it's
necessary to introduce an offset to the object's memory
(obj->mm.pages) scatterlist. This adjustment compensates for
instances when userspace mappings do not start from the beginning
of the object.

Based on a patch by Chris Wilson.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 10 +++++++---
 drivers/gpu/drm/i915/i915_mm.c           | 12 +++++++++++-
 drivers/gpu/drm/i915/i915_mm.h           |  3 ++-
 3 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 4e57844a9ebb..2241257a9ccf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -252,6 +252,7 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	struct vm_area_struct *area = vmf->vma;
 	struct i915_mmap_offset *mmo = area->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
+	unsigned long obj_offset;
 	resource_size_t iomap;
 	int err;
 
@@ -273,10 +274,11 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 		iomap -= obj->mm.region->region.start;
 	}
 
+	obj_offset = area->vm_pgoff - drm_vma_node_start(&mmo->vma_node);
 	/* PTEs are revoked in obj->ops->put_pages() */
 	err = remap_io_sg(area,
 			  area->vm_start, area->vm_end - area->vm_start,
-			  obj->mm.pages->sgl, iomap);
+			  obj->mm.pages->sgl, obj_offset, iomap);
 
 	if (area->vm_flags & VM_WRITE) {
 		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
@@ -302,14 +304,16 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	bool write = area->vm_flags & VM_WRITE;
 	struct i915_gem_ww_ctx ww;
+	unsigned long obj_offset;
 	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
 	pgoff_t page_offset;
 	int srcu;
 	int ret;
 
-	/* We don't use vmf->pgoff since that has the fake offset */
+	obj_offset = area->vm_pgoff - drm_vma_node_start(&mmo->vma_node);
 	page_offset = (vmf->address - area->vm_start) >> PAGE_SHIFT;
+	page_offset += obj_offset;
 
 	trace_i915_gem_object_fault(obj, page_offset, true, write);
 
@@ -404,7 +408,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 
 	/* Finally, remap it using the new GTT offset */
 	ret = remap_io_mapping(area,
-			       area->vm_start + (vma->gtt_view.partial.offset << PAGE_SHIFT),
+			       area->vm_start + ((vma->gtt_view.partial.offset - obj_offset) << PAGE_SHIFT),
 			       (ggtt->gmadr.start + i915_ggtt_offset(vma)) >> PAGE_SHIFT,
 			       min_t(u64, vma->size, area->vm_end - area->vm_start),
 			       &ggtt->iomap);
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 7998bc74ab49..f5c97a620962 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -122,13 +122,15 @@ int remap_io_mapping(struct vm_area_struct *vma,
  * @addr: target user address to start at
  * @size: size of map area
  * @sgl: Start sg entry
+ * @offset: offset from the start of the page
  * @iobase: Use stored dma address offset by this address or pfn if -1
  *
  *  Note: this is only safe if the mm semaphore is held when called.
  */
 int remap_io_sg(struct vm_area_struct *vma,
 		unsigned long addr, unsigned long size,
-		struct scatterlist *sgl, resource_size_t iobase)
+		struct scatterlist *sgl, unsigned long offset,
+		resource_size_t iobase)
 {
 	struct remap_pfn r = {
 		.mm = vma->vm_mm,
@@ -141,6 +143,14 @@ int remap_io_sg(struct vm_area_struct *vma,
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
+	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
+		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
+		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
+		if (!r.sgt.sgp)
+			return -EINVAL;
+	}
+	r.sgt.curr = offset << PAGE_SHIFT;
+
 	if (!use_dma(iobase))
 		flush_cache_range(vma, addr, size);
 
diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_mm.h
index 04c8974d822b..69f9351b1a1c 100644
--- a/drivers/gpu/drm/i915/i915_mm.h
+++ b/drivers/gpu/drm/i915/i915_mm.h
@@ -30,6 +30,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
 
 int remap_io_sg(struct vm_area_struct *vma,
 		unsigned long addr, unsigned long size,
-		struct scatterlist *sgl, resource_size_t iobase);
+		struct scatterlist *sgl, unsigned long offset,
+		resource_size_t iobase);
 
 #endif /* __I915_MM_H__ */
-- 
2.43.0

