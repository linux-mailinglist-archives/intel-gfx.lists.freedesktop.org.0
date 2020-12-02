Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8764C2CBAAD
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 11:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25306EA0A;
	Wed,  2 Dec 2020 10:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D936EA0A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 10:42:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23187523-1500050 
 for multiple; Wed, 02 Dec 2020 10:41:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 10:41:52 +0000
Message-Id: <20201202104153.15329-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Limit lmem scatterlist
 elements to UINT_MAX
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adhere to the i915_sg_max_segment() limit on the lengths of individual
scatterlist elements, and in doing so split up very large chunks of lmem
into managable pieces for the dma-mapping backend.

Reported-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_region.c | 42 ++++++++++++----------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index e72d78074c9e..edb84072f979 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -22,6 +22,7 @@ i915_gem_object_put_pages_buddy(struct drm_i915_gem_object *obj,
 int
 i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 {
+	const u64 max_segment = i915_sg_segment_size();
 	struct intel_memory_region *mem = obj->mm.region;
 	struct list_head *blocks = &obj->mm.blocks;
 	resource_size_t size = obj->base.size;
@@ -37,7 +38,7 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 	if (!st)
 		return -ENOMEM;
 
-	if (sg_alloc_table(st, size >> ilog2(mem->mm.chunk_size), GFP_KERNEL)) {
+	if (sg_alloc_table(st, size >> PAGE_SHIFT, GFP_KERNEL)) {
 		kfree(st);
 		return -ENOMEM;
 	}
@@ -58,33 +59,38 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 	prev_end = (resource_size_t)-1;
 
 	list_for_each_entry(block, blocks, link) {
-		u64 block_size, offset;
+		u64 block_size, offset, len;
 
 		block_size = min_t(u64, size,
 				   i915_buddy_block_size(&mem->mm, block));
 		offset = i915_buddy_block_offset(block);
 
-		GEM_BUG_ON(overflows_type(block_size, sg->length));
+		while (block_size) {
+			if (offset != prev_end || sg->length >= max_segment) {
+				if (st->nents) {
+					sg_page_sizes |= sg->length;
+					sg = __sg_next(sg);
+				}
 
-		if (offset != prev_end ||
-		    add_overflows_t(typeof(sg->length), sg->length, block_size)) {
-			if (st->nents) {
-				sg_page_sizes |= sg->length;
-				sg = __sg_next(sg);
-			}
+				len = min(block_size, max_segment);
 
-			sg_dma_address(sg) = mem->region.start + offset;
-			sg_dma_len(sg) = block_size;
+				sg_dma_address(sg) = mem->region.start + offset;
+				sg_dma_len(sg) = len;
 
-			sg->length = block_size;
+				sg->length = len;
 
-			st->nents++;
-		} else {
-			sg->length += block_size;
-			sg_dma_len(sg) += block_size;
-		}
+				st->nents++;
+			} else {
+				len = min(block_size, max_segment - sg->length);
+				sg->length += len;
+				sg_dma_len(sg) += len;
+			}
 
-		prev_end = offset + block_size;
+			offset += len;
+			block_size -= len;
+
+			prev_end = offset;
+		}
 	}
 
 	sg_page_sizes |= sg->length;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
