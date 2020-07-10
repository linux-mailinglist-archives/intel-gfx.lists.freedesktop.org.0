Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F6A21B49D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1A76EC29;
	Fri, 10 Jul 2020 12:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502F56EC27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:59 +0000 (UTC)
IronPort-SDR: bSRCxgnPhQSPou7QP5LO6RibUqKuXNuAnWWkQE5tl8LiqSLeX7b6JTxVUyHbOYjaw8I2fDLuEu
 +25GtoOIca6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="146255875"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="146255875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:59 -0700
IronPort-SDR: gmKXHErT9jTkYjo3bTlGuZ/7JQ9N55enlK+7Hu19WcXiI3dOOgeYRnlnTJvOlz9L7q4QQjsb+A
 kCtcUpsJg+fA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258649"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:56 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:56 +0100
Message-Id: <20200710115757.290984-60-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 59/60] drm/i915: defer pd lmem block put to worker
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

We take mem->mm_lock inside __i915_vma_unbind to release the memory
used for the page table itself, but __i915_vma_unbind is called while
holding vm->mutex; vm->mutex is tainted by the shrinker and therefore
locks related to allocations can't be taken while holding it
(kmem_cache_alloc is called under mem->mm_lock in i915_buddy_alloc,
so mem->mm_lock is a lock managing allocations).
As a temporary WA, move the memory release to a dedicated work called
outside the vm->mutex lock. A lockless list has been used to avoid any
locking dependency.

Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/i915_buddy.h             | 10 +++++++
 drivers/gpu/drm/i915/intel_memory_region.c    | 28 ++++++++++++++++---
 drivers/gpu/drm/i915/intel_memory_region.h    |  5 ++++
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  3 +-
 4 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915/i915_buddy.h
index ed41f3507cdc..fb08eb99d654 100644
--- a/drivers/gpu/drm/i915/i915_buddy.h
+++ b/drivers/gpu/drm/i915/i915_buddy.h
@@ -8,6 +8,7 @@
 
 #include <linux/bitops.h>
 #include <linux/list.h>
+#include <linux/llist.h>
 
 struct i915_buddy_block {
 #define I915_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
@@ -32,6 +33,15 @@ struct i915_buddy_block {
 	 */
 	struct list_head link;
 	struct list_head tmp_link;
+
+	/*
+	 * XXX: consider moving this somewhere specific to the pd stuff. In an
+	 * ideal world we would like to keep i915_buddy as non-i915 specific as
+	 * possible and in this case the delayed freeing is only required for
+	 * our pd handling, which is only one part of our overall i915_buddy
+	 * use.
+	 */
+	struct llist_node freed;
 };
 
 #define I915_BUDDY_MAX_ORDER  I915_BUDDY_HEADER_ORDER
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 6e9d0861cf8c..80d827c4973d 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -84,14 +84,29 @@ __intel_memory_region_put_pages_buddy(struct intel_memory_region *mem,
 	mutex_unlock(&mem->mm_lock);
 }
 
-void
-__intel_memory_region_put_block_buddy(struct i915_buddy_block *block)
+static void __intel_memory_region_put_block_work(struct work_struct *work)
 {
+	struct intel_memory_region *mem =
+		container_of(work, struct intel_memory_region, pd_put.work);
+	struct llist_node *freed = llist_del_all(&mem->pd_put.blocks);
+	struct i915_buddy_block *block;
 	struct list_head blocks;
 
 	INIT_LIST_HEAD(&blocks);
-	list_add(&block->link, &blocks);
-	__intel_memory_region_put_pages_buddy(block->private, &blocks);
+
+	llist_for_each_entry(block, freed, freed)
+		list_add(&block->link, &blocks);
+
+	__intel_memory_region_put_pages_buddy(mem, &blocks);
+}
+
+void
+__intel_memory_region_put_block_buddy(struct i915_buddy_block *block)
+{
+	struct intel_memory_region *mem = block->private;
+
+	if (llist_add(&block->freed, &mem->pd_put.blocks))
+		queue_work(mem->i915->wq, &mem->pd_put.work);
 }
 
 int
@@ -224,6 +239,8 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->total = size;
 	mem->avail = mem->total;
 
+	INIT_WORK(&mem->pd_put.work, __intel_memory_region_put_block_work);
+
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
 	INIT_LIST_HEAD(&mem->objects.purgeable);
@@ -260,6 +277,9 @@ static void __intel_memory_region_destroy(struct kref *kref)
 	struct intel_memory_region *mem =
 		container_of(kref, typeof(*mem), kref);
 
+	/* Flush any pending work items to free blocks region */
+	flush_workqueue(mem->i915->wq);
+
 	if (mem->ops->release)
 		mem->ops->release(mem);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index e082b895afdb..e11ee974301f 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -83,6 +83,11 @@ struct intel_memory_region {
 	struct i915_buddy_mm mm;
 	struct mutex mm_lock;
 
+	struct {
+		struct work_struct work;
+		struct llist_head blocks;
+	} pd_put;
+
 	struct kref kref;
 
 	resource_size_t io_start;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 9a46be05425a..07838a587413 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -69,11 +69,12 @@ static void mock_device_release(struct drm_device *dev)
 	i915_gem_drain_freed_objects(i915);
 
 	mock_fini_ggtt(&i915->ggtt);
-	destroy_workqueue(i915->wq);
 
 	intel_gt_driver_late_release(&i915->gt);
 	intel_memory_regions_driver_release(i915);
 
+	destroy_workqueue(i915->wq);
+
 	drm_mode_config_cleanup(&i915->drm);
 
 out:
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
