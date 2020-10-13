Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4DC28CB17
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 11:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5D26E0EA;
	Tue, 13 Oct 2020 09:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4386E0EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 09:37:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22699520-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 10:37:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 10:37:42 +0100
Message-Id: <20201013093742.3709-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Poison stolen pages before use
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When allocating objects from stolen, memset() the backing store to
POISON_INUSE (0x5a) to help identify any uninitialised use of a stolen
object.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 0be5e8683337..3954ec9981f0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -495,6 +495,40 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 	return 0;
 }
 
+static void dbg_poison(struct i915_ggtt *ggtt,
+		       dma_addr_t addr, resource_size_t size,
+		       u8 x)
+{
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
+	if (!drm_mm_node_allocated(&ggtt->error_capture))
+		return;
+
+	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
+
+	mutex_lock(&ggtt->error_mutex);
+	while (size) {
+		void __iomem *s;
+
+		ggtt->vm.insert_page(&ggtt->vm, addr,
+				     ggtt->error_capture.start,
+				     I915_CACHE_NONE, 0);
+		mb();
+
+		s = io_mapping_map_wc(&ggtt->iomap,
+				      ggtt->error_capture.start,
+				      PAGE_SIZE);
+		memset_io(s, x, PAGE_SIZE);
+		io_mapping_unmap(s);
+
+		addr += PAGE_SIZE;
+		size -= PAGE_SIZE;
+	}
+	mb();
+	ggtt->vm.clear_range(&ggtt->vm, ggtt->error_capture.start, PAGE_SIZE);
+	mutex_unlock(&ggtt->error_mutex);
+#endif
+}
+
 static struct sg_table *
 i915_pages_create_for_stolen(struct drm_device *dev,
 			     resource_size_t offset, resource_size_t size)
@@ -538,6 +572,11 @@ static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
 	if (IS_ERR(pages))
 		return PTR_ERR(pages);
 
+	dbg_poison(&to_i915(obj->base.dev)->ggtt,
+		   sg_dma_address(pages->sgl),
+		   sg_dma_len(pages->sgl),
+		   POISON_INUSE);
+
 	__i915_gem_object_set_pages(obj, pages, obj->stolen->size);
 
 	return 0;
@@ -547,6 +586,12 @@ static void i915_gem_object_put_pages_stolen(struct drm_i915_gem_object *obj,
 					     struct sg_table *pages)
 {
 	/* Should only be called from i915_gem_object_release_stolen() */
+
+	dbg_poison(&to_i915(obj->base.dev)->ggtt,
+		   sg_dma_address(pages->sgl),
+		   sg_dma_len(pages->sgl),
+		   POISON_FREE);
+
 	sg_free_table(pages);
 	kfree(pages);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
