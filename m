Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86392281238
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 14:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D986E947;
	Fri,  2 Oct 2020 12:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214BF6E947;
 Fri,  2 Oct 2020 12:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=CnZvH3y9ZKFn7BHhh1hHnXEglNnxRMJ6++dbgBNxsaA=; b=wEYR4zDtkU0e31wuybXa3t0si8
 j25UL7GpUbh11fVdTW3LoaXZAfP7qiqyxjE1RXpcuEO3HhcCtrlYAsckRXMdnShsOU3d8gmcR55q2
 L0NsLiVx8xjjQEFoMQ4uOQuvnBkkdz+AJLpVrLFfe4NsPWdAhG0EflGapb/ePS0/weV2DpOroCkK6
 qqV061i4RwJrGFi3Vn9Sg4HFKTM0nTGaZY8lLbpTSqEg8khPRcpBTR4rss8tfbAhdoSwU0xlMxSw9
 IepKlrjkujAD2CsUecn6BZMcSxGImtaoWTD7tU8kS4Oi8//3yuVxsxjTYWMoF63tWc/2dJxYc5Nc5
 +R6tfRMQ==;
Received: from [2001:4bb8:180:7b62:f738:1861:1acc:15c8] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOK4m-0003Mg-NL; Fri, 02 Oct 2020 12:22:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Fri,  2 Oct 2020 14:22:01 +0200
Message-Id: <20201002122204.1534411-9-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002122204.1534411-1-hch@lst.de>
References: <20201002122204.1534411-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: use vmap in i915_gem_object_map
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
 Stefano Stabellini <sstabellini@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Minchan Kim <minchan@kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, xen-devel@lists.xenproject.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_object_map implements fairly low-level vmap functionality in
a driver.  Split it into two helpers, one for remapping kernel memory
which can use vmap, and one for I/O memory that uses vmap_pfn.

The only practical difference is that alloc_vm_area prefeaults the
vmalloc area PTEs, which doesn't seem to be required here for the
kernel memory case (and could be added to vmap using a flag if actually
required).

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig              |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 127 ++++++++++------------
 2 files changed, 60 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 9afa5c4a6bf006..1e1cb245fca778 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -25,6 +25,7 @@ config DRM_I915
 	select CRC32
 	select SND_HDA_I915 if SND_HDA_CORE
 	select CEC_CORE if CEC_NOTIFIER
+	select VMAP_PFN
 	help
 	  Choose this option if you have a system that has "Intel Graphics
 	  Media Accelerator" or "HD Graphics" integrated graphics,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 6550c0bc824ea2..f60ca6dc911f29 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -232,34 +232,21 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 	return err;
 }
 
-static inline pte_t iomap_pte(resource_size_t base,
-			      dma_addr_t offset,
-			      pgprot_t prot)
-{
-	return pte_mkspecial(pfn_pte((base + offset) >> PAGE_SHIFT, prot));
-}
-
 /* The 'mapping' part of i915_gem_object_pin_map() below */
-static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
-				 enum i915_map_type type)
+static void *i915_gem_object_map_page(struct drm_i915_gem_object *obj,
+		enum i915_map_type type)
 {
-	unsigned long n_pte = obj->base.size >> PAGE_SHIFT;
-	struct sg_table *sgt = obj->mm.pages;
-	pte_t *stack[32], **mem;
-	struct vm_struct *area;
+	unsigned long n_pages = obj->base.size >> PAGE_SHIFT, i;
+	struct page *stack[32], **pages = stack, *page;
+	struct sgt_iter iter;
 	pgprot_t pgprot;
+	void *vaddr;
 
-	if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)
-		return NULL;
-
-	if (GEM_WARN_ON(type == I915_MAP_WC &&
-			!static_cpu_has(X86_FEATURE_PAT)))
-		return NULL;
-
-	/* A single page can always be kmapped */
-	if (n_pte == 1 && type == I915_MAP_WB) {
-		struct page *page = sg_page(sgt->sgl);
-
+	switch (type) {
+	default:
+		MISSING_CASE(type);
+		fallthrough;	/* to use PAGE_KERNEL anyway */
+	case I915_MAP_WB:
 		/*
 		 * On 32b, highmem using a finite set of indirect PTE (i.e.
 		 * vmap) to provide virtual mappings of the high pages.
@@ -277,30 +264,8 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 		 * So if the page is beyond the 32b boundary, make an explicit
 		 * vmap.
 		 */
-		if (!PageHighMem(page))
-			return page_address(page);
-	}
-
-	mem = stack;
-	if (n_pte > ARRAY_SIZE(stack)) {
-		/* Too big for stack -- allocate temporary array instead */
-		mem = kvmalloc_array(n_pte, sizeof(*mem), GFP_KERNEL);
-		if (!mem)
-			return NULL;
-	}
-
-	area = alloc_vm_area(obj->base.size, mem);
-	if (!area) {
-		if (mem != stack)
-			kvfree(mem);
-		return NULL;
-	}
-
-	switch (type) {
-	default:
-		MISSING_CASE(type);
-		fallthrough;	/* to use PAGE_KERNEL anyway */
-	case I915_MAP_WB:
+		if (n_pages == 1 && !PageHighMem(sg_page(obj->mm.pages->sgl)))
+			return page_address(sg_page(obj->mm.pages->sgl));
 		pgprot = PAGE_KERNEL;
 		break;
 	case I915_MAP_WC:
@@ -308,30 +273,50 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 		break;
 	}
 
-	if (i915_gem_object_has_struct_page(obj)) {
-		struct sgt_iter iter;
-		struct page *page;
-		pte_t **ptes = mem;
+	if (n_pages > ARRAY_SIZE(stack)) {
+		/* Too big for stack -- allocate temporary array instead */
+		pages = kvmalloc_array(n_pages, sizeof(*pages), GFP_KERNEL);
+		if (!pages)
+			return NULL;
+	}
 
-		for_each_sgt_page(page, iter, sgt)
-			**ptes++ = mk_pte(page, pgprot);
-	} else {
-		resource_size_t iomap;
-		struct sgt_iter iter;
-		pte_t **ptes = mem;
-		dma_addr_t addr;
+	i = 0;
+	for_each_sgt_page(page, iter, obj->mm.pages)
+		pages[i++] = page;
+	vaddr = vmap(pages, n_pages, 0, pgprot);
+	if (pages != stack)
+		kvfree(pages);
+	return vaddr;
+}
 
-		iomap = obj->mm.region->iomap.base;
-		iomap -= obj->mm.region->region.start;
+static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
+		enum i915_map_type type)
+{
+	resource_size_t iomap = obj->mm.region->iomap.base -
+		obj->mm.region->region.start;
+	unsigned long n_pfn = obj->base.size >> PAGE_SHIFT;
+	unsigned long stack[32], *pfns = stack, i;
+	struct sgt_iter iter;
+	dma_addr_t addr;
+	void *vaddr;
+
+	if (type != I915_MAP_WC)
+		return NULL;
 
-		for_each_sgt_daddr(addr, iter, sgt)
-			**ptes++ = iomap_pte(iomap, addr, pgprot);
+	if (n_pfn > ARRAY_SIZE(stack)) {
+		/* Too big for stack -- allocate temporary array instead */
+		pfns = kvmalloc_array(n_pfn, sizeof(*pfns), GFP_KERNEL);
+		if (!pfns)
+			return NULL;
 	}
 
-	if (mem != stack)
-		kvfree(mem);
-
-	return area->addr;
+	i = 0;
+	for_each_sgt_daddr(addr, iter, obj->mm.pages)
+		pfns[i++] = (iomap + addr) >> PAGE_SHIFT;
+	vaddr = vmap_pfn(pfns, n_pfn, pgprot_writecombine(PAGE_KERNEL_IO));
+	if (pfns != stack)
+		kvfree(pfns);
+	return vaddr;
 }
 
 /* get, pin, and map the pages of the object into kernel space */
@@ -383,7 +368,13 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 	}
 
 	if (!ptr) {
-		ptr = i915_gem_object_map(obj, type);
+		if (GEM_WARN_ON(type == I915_MAP_WC &&
+				!static_cpu_has(X86_FEATURE_PAT)))
+			ptr = NULL;
+		else if (i915_gem_object_has_struct_page(obj))
+			ptr = i915_gem_object_map_page(obj, type);
+		else
+			ptr = i915_gem_object_map_pfn(obj, type);
 		if (!ptr) {
 			err = -ENOMEM;
 			goto err_unpin;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
