Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CDE12FE0C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F186E343;
	Fri,  3 Jan 2020 20:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9611B6E342
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 20:41:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19764666-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2020 20:41:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 20:41:37 +0000
Message-Id: <20200103204137.2131004-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200103204137.2131004-1-chris@chris-wilson.co.uk>
References: <20200103204137.2131004-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/selftests: Compare mmaps with GPU
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

Check that the user writes into their mmap are visible on the GPU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 123 ++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 2a31f51be8d6..df8cb559277f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -953,6 +953,128 @@ static int igt_mmap(void *arg)
 	return 0;
 }
 
+static int __igt_mmap_gpu(struct drm_i915_private *i915,
+			  struct drm_i915_gem_object *obj,
+			  enum i915_mmap_type type)
+{
+	struct intel_engine_cs *engine;
+	struct i915_mmap_offset *mmo;
+	u32 __user *ux, bbe;
+	unsigned long addr;
+	int err;
+
+	if (!can_mmap(obj, type))
+		return 0;
+
+	err = wc_set(obj);
+	if (err == -ENXIO)
+		err = gtt_set(obj);
+	if (err)
+		return err;
+
+	mmo = mmap_offset_attach(obj, type, NULL);
+	if (IS_ERR(mmo))
+		return PTR_ERR(mmo);
+
+	addr = igt_mmap_node(i915, &mmo->vma_node, 0, PROT_WRITE, MAP_SHARED);
+	if (IS_ERR_VALUE(addr))
+		return addr;
+
+	ux = u64_to_user_ptr((u64)addr);
+	bbe = MI_BATCH_BUFFER_END;
+	if (put_user(bbe, ux)) {
+		pr_err("%s: Unable to write to mmap\n", obj->mm.region->name);
+		err = -EFAULT;
+		goto out_unmap;
+	}
+
+	if (type == I915_MMAP_TYPE_GTT)
+		intel_gt_flush_ggtt_writes(&i915->gt);
+
+	for_each_uabi_engine(engine, i915) {
+		struct i915_request *rq;
+		struct i915_vma *vma;
+
+		vma = i915_vma_instance(obj, engine->kernel_context->vm, NULL);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			goto out_unmap;
+		}
+
+		err = i915_vma_pin(vma, 0, 0, PIN_USER);
+		if (err)
+			goto out_unmap;
+
+		rq = i915_request_create(engine->kernel_context);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out_unpin;
+		}
+
+		i915_vma_lock(vma);
+		err = i915_request_await_object(rq, vma->obj, false);
+		if (err == 0)
+			err = i915_vma_move_to_active(vma, rq, 0);
+		i915_vma_unlock(vma);
+
+		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+			struct drm_printer p =
+				drm_info_printer(engine->i915->drm.dev);
+
+			pr_err("%s(%s, %s): Failed to execute batch\n",
+			       __func__, engine->name, obj->mm.region->name);
+			intel_engine_dump(engine, &p,
+					  "%s\n", engine->name);
+
+			intel_gt_set_wedged(engine->gt);
+			err = -EIO;
+		}
+		i915_request_put(rq);
+
+out_unpin:
+		i915_vma_unpin(vma);
+		if (err)
+			goto out_unmap;
+	}
+
+out_unmap:
+	vm_munmap(addr, obj->base.size);
+	return err;
+}
+
+static int igt_mmap_gpu(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_memory_region *mr;
+	enum intel_region_id id;
+
+	for_each_memory_region(mr, i915, id) {
+		struct drm_i915_gem_object *obj;
+		int err;
+
+		obj = i915_gem_object_create_region(mr, PAGE_SIZE, 0);
+		if (obj == ERR_PTR(-ENODEV))
+			continue;
+
+		if (IS_ERR(obj))
+			return PTR_ERR(obj);
+
+		err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_GTT);
+		if (err == 0)
+			err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_WC);
+
+		i915_gem_object_put(obj);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static int check_present_pte(pte_t *pte, unsigned long addr, void *data)
 {
 	if (!pte_present(*pte) || pte_none(*pte)) {
@@ -1107,6 +1229,7 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_offset_exhaustion),
 		SUBTEST(igt_mmap),
 		SUBTEST(igt_mmap_revoke),
+		SUBTEST(igt_mmap_gpu),
 	};
 
 	return i915_subtests(tests, i915);
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
