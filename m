Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A94EA220C5E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5744E6EB07;
	Wed, 15 Jul 2020 11:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BF76EAD7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826140-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:14 +0100
Message-Id: <20200715115147.11866-33-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/66] drm/i915: Remove unused
 i915_gem_evict_vm()
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Obsolete, last user removed.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.h               |  1 -
 drivers/gpu/drm/i915/i915_gem_evict.c         | 57 -------------------
 .../gpu/drm/i915/selftests/i915_gem_evict.c   | 40 -------------
 3 files changed, 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bd7ff2ad6514..2c1a9b74af8d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1865,7 +1865,6 @@ int __must_check i915_gem_evict_something(struct i915_address_space *vm,
 int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
 					 struct drm_mm_node *node,
 					 unsigned int flags);
-int i915_gem_evict_vm(struct i915_address_space *vm);
 
 /* i915_gem_internal.c */
 struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 6501939929d5..e35f0ba5e245 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -343,63 +343,6 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 	return ret;
 }
 
-/**
- * i915_gem_evict_vm - Evict all idle vmas from a vm
- * @vm: Address space to cleanse
- *
- * This function evicts all vmas from a vm.
- *
- * This is used by the execbuf code as a last-ditch effort to defragment the
- * address space.
- *
- * To clarify: This is for freeing up virtual address space, not for freeing
- * memory in e.g. the shrinker.
- */
-int i915_gem_evict_vm(struct i915_address_space *vm)
-{
-	int ret = 0;
-
-	lockdep_assert_held(&vm->mutex);
-	trace_i915_gem_evict_vm(vm);
-
-	/* Switch back to the default context in order to unpin
-	 * the existing context objects. However, such objects only
-	 * pin themselves inside the global GTT and performing the
-	 * switch otherwise is ineffective.
-	 */
-	if (i915_is_ggtt(vm)) {
-		ret = ggtt_flush(vm->gt);
-		if (ret)
-			return ret;
-	}
-
-	do {
-		struct i915_vma *vma, *vn;
-		LIST_HEAD(eviction_list);
-
-		list_for_each_entry(vma, &vm->bound_list, vm_link) {
-			if (i915_vma_is_pinned(vma))
-				continue;
-
-			__i915_vma_pin(vma);
-			list_add(&vma->evict_link, &eviction_list);
-		}
-		if (list_empty(&eviction_list))
-			break;
-
-		ret = 0;
-		list_for_each_entry_safe(vma, vn, &eviction_list, evict_link) {
-			__i915_vma_unpin(vma);
-			if (ret == 0)
-				ret = __i915_vma_unbind(vma);
-			if (ret != -EINTR) /* "Get me out of here!" */
-				ret = 0;
-		}
-	} while (ret == 0);
-
-	return ret;
-}
-
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/i915_gem_evict.c"
 #endif
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 028baae9631f..773cecacba82 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -327,45 +327,6 @@ static int igt_evict_for_cache_color(void *arg)
 	return err;
 }
 
-static int igt_evict_vm(void *arg)
-{
-	struct intel_gt *gt = arg;
-	struct i915_ggtt *ggtt = gt->ggtt;
-	LIST_HEAD(objects);
-	int err;
-
-	/* Fill the GGTT with pinned objects and try to evict everything. */
-
-	err = populate_ggtt(ggtt, &objects);
-	if (err)
-		goto cleanup;
-
-	/* Everything is pinned, nothing should happen */
-	mutex_lock(&ggtt->vm.mutex);
-	err = i915_gem_evict_vm(&ggtt->vm);
-	mutex_unlock(&ggtt->vm.mutex);
-	if (err) {
-		pr_err("i915_gem_evict_vm on a full GGTT returned err=%d]\n",
-		       err);
-		goto cleanup;
-	}
-
-	unpin_ggtt(ggtt);
-
-	mutex_lock(&ggtt->vm.mutex);
-	err = i915_gem_evict_vm(&ggtt->vm);
-	mutex_unlock(&ggtt->vm.mutex);
-	if (err) {
-		pr_err("i915_gem_evict_vm on a full GGTT returned err=%d]\n",
-		       err);
-		goto cleanup;
-	}
-
-cleanup:
-	cleanup_objects(ggtt, &objects);
-	return err;
-}
-
 static int igt_evict_contexts(void *arg)
 {
 	const u64 PRETEND_GGTT_SIZE = 16ull << 20;
@@ -522,7 +483,6 @@ int i915_gem_evict_mock_selftests(void)
 		SUBTEST(igt_evict_something),
 		SUBTEST(igt_evict_for_vma),
 		SUBTEST(igt_evict_for_cache_color),
-		SUBTEST(igt_evict_vm),
 		SUBTEST(igt_overcommit),
 	};
 	struct drm_i915_private *i915;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
