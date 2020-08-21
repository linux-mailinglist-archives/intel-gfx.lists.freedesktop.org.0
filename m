Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2E924D0D4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 10:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C6D6E101;
	Fri, 21 Aug 2020 08:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775F56E101
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 08:50:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22195099-1500050 
 for multiple; Fri, 21 Aug 2020 09:50:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: linux-kernel@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 21 Aug 2020 09:50:10 +0100
Message-Id: <20200821085011.28878-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200821085011.28878-1-chris@chris-wilson.co.uk>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gem: Use set_pte_at() for
 assigning the vmapped PTE
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
Cc: linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use set_pte_at() to assign the PTE pointer returned by alloc_vm_area(),
rather than a direct assignment.

Fixes: 6056e50033d9 ("drm/i915/gem: Support discontiguous lmem object maps")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 0fee67f34d74..6838cf9bdae6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -286,23 +286,34 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 	}
 
 	if (i915_gem_object_has_struct_page(obj)) {
+		unsigned long addr = (unsigned long)area->addr;
 		struct sgt_iter iter;
 		struct page *page;
 		pte_t **ptes = mem;
 
-		for_each_sgt_page(page, iter, sgt)
-			**ptes++ = mk_pte(page, pgprot);
+		for_each_sgt_page(page, iter, sgt) {
+			set_pte_at(&init_mm, addr, *ptes, mk_pte(page, pgprot));
+			addr += PAGE_SIZE;
+			ptes++;
+		}
+		GEM_BUG_ON(addr != (unsigned long)area->addr + obj->base.size);
 	} else {
+		unsigned long addr = (unsigned long)area->addr;
 		resource_size_t iomap;
 		struct sgt_iter iter;
 		pte_t **ptes = mem;
-		dma_addr_t addr;
+		dma_addr_t offset;
 
 		iomap = obj->mm.region->iomap.base;
 		iomap -= obj->mm.region->region.start;
 
-		for_each_sgt_daddr(addr, iter, sgt)
-			**ptes++ = iomap_pte(iomap, addr, pgprot);
+		for_each_sgt_daddr(offset, iter, sgt) {
+			set_pte_at(&init_mm, addr, *ptes,
+				   iomap_pte(iomap, offset, pgprot));
+			addr += PAGE_SIZE;
+			ptes++;
+		}
+		GEM_BUG_ON(addr != (unsigned long)area->addr + obj->base.size);
 	}
 	flush_vm_area(area);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
