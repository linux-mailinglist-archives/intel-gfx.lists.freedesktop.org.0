Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A0D12E0A7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 23:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BAF89AB6;
	Wed,  1 Jan 2020 22:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD45F89AB6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jan 2020 22:08:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19744339-1500050 
 for multiple; Wed, 01 Jan 2020 22:07:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jan 2020 22:07:36 +0000
Message-Id: <20200101220736.1073007-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200101220736.1073007-1-chris@chris-wilson.co.uk>
References: <20200101220736.1073007-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Support discontiguous lmem
 object maps
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Create a vmap for discontinguous lmem objects to support
i915_gem_object_pin_map().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 45 ++++++++++++++++++++---
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 75197ca696a8..ef5281a0bd05 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -158,10 +158,10 @@ static void __i915_gem_object_reset_page_iter(struct drm_i915_gem_object *obj)
 
 static void unmap_object(struct drm_i915_gem_object *obj, void *ptr)
 {
-	if (i915_gem_object_is_lmem(obj))
-		io_mapping_unmap((void __force __iomem *)ptr);
-	else if (is_vmalloc_addr(ptr))
+	if (is_vmalloc_addr(ptr))
 		vunmap(ptr);
+	else if (i915_gem_object_is_lmem(obj))
+		io_mapping_unmap((void __force __iomem *)ptr);
 	else
 		kunmap(kmap_to_page(ptr));
 }
@@ -236,6 +236,12 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 	return err;
 }
 
+static inline pte_t io_wc_pte(dma_addr_t addr)
+{
+	return pte_mkspecial(pfn_pte(addr >> PAGE_SHIFT,
+				     pgprot_writecombine(PAGE_KERNEL)));
+}
+
 /* The 'mapping' part of i915_gem_object_pin_map() below */
 static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 				 enum i915_map_type type)
@@ -251,13 +257,40 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 	void *addr;
 
 	if (i915_gem_object_is_lmem(obj)) {
-		void __iomem *io;
+		struct vm_struct *area;
+		dma_addr_t addr;
+		pte_t **ptes;
+		void *mem;
 
 		if (type != I915_MAP_WC)
 			return NULL;
 
-		io = i915_gem_object_lmem_io_map(obj, 0, obj->base.size);
-		return (void __force *)io;
+		if (i915_gem_object_is_contiguous(obj)) {
+			void __iomem *io =
+				i915_gem_object_lmem_io_map(obj,
+							    0, obj->base.size);
+
+			return (void __force *)io;
+		}
+
+		mem = kvmalloc_array(obj->base.size >> PAGE_SHIFT,
+				     sizeof(*ptes),
+				     GFP_KERNEL);
+		if (!mem)
+			return NULL;
+
+		area = alloc_vm_area(obj->base.size, ptes);
+		if (!area) {
+			kvfree(mem);
+			return NULL;
+		}
+
+		ptes = mem;
+		for_each_sgt_daddr(addr, sgt_iter, sgt)
+			**ptes++ = io_wc_pte(addr);
+		kvfree(mem);
+
+		return area->addr;
 	}
 
 	/* A single page can always be kmapped */
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
