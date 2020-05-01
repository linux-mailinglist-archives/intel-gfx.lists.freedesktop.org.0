Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC601C0FD9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 10:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCFB6EC2E;
	Fri,  1 May 2020 08:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4145E6EC2E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 08:43:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21079346-1500050 
 for multiple; Fri, 01 May 2020 09:42:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 09:42:54 +0100
Message-Id: <20200501084255.5674-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501084255.5674-1-chris@chris-wilson.co.uk>
References: <20200501084255.5674-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Implement vm_ops->access for gdb
 access into mmaps
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
Cc: "Kristian H . Kristensen" <hoegsberg@google.com>,
 Matthew Auld <matthew.auld@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

gdb uses ptrace() to peek and poke bytes of the target's address space.
The driver must implement an vm_ops->access() handler or else gdb will
be unable to inspect the pointer and report it as out-of-bounds.
Worse than useless as it causes immediate suspicion of the valid GTT
pointer, distracting the poor programmer trying to find his bug.

Testcase: igt/gem_mmap_gtt/ptrace
Testcase: igt/gem_mmap_offset/ptrace
Suggested-by: Kristian H. Kristensen <hoegsberg@google.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>
Cc: Kristian H. Kristensen <hoegsberg@google.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  31 +++++
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 124 ++++++++++++++++++
 2 files changed, 155 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b39c24dae64e..aef917b7f168 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -396,6 +396,35 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	return i915_error_to_vmf_fault(ret);
 }
 
+static int
+vm_access(struct vm_area_struct *area, unsigned long addr,
+	  void *buf, int len, int write)
+{
+	struct i915_mmap_offset *mmo = area->vm_private_data;
+	struct drm_i915_gem_object *obj = mmo->obj;
+	void *vaddr;
+
+	addr -= area->vm_start;
+	if (addr >= obj->base.size)
+		return -EINVAL;
+
+	/* As this is primarily for debugging, let's focus on simplicity */
+	vaddr = i915_gem_object_pin_map(obj, I915_MAP_FORCE_WC);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	if (write) {
+		memcpy(vaddr + addr, buf, len);
+		__i915_gem_object_flush_map(obj, addr, len);
+	} else {
+		memcpy(buf, vaddr + addr, len);
+	}
+
+	i915_gem_object_unpin_map(obj);
+
+	return len;
+}
+
 void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 {
 	struct i915_vma *vma;
@@ -745,12 +774,14 @@ static void vm_close(struct vm_area_struct *vma)
 
 static const struct vm_operations_struct vm_ops_gtt = {
 	.fault = vm_fault_gtt,
+	.access = vm_access,
 	.open = vm_open,
 	.close = vm_close,
 };
 
 static const struct vm_operations_struct vm_ops_cpu = {
 	.fault = vm_fault_cpu,
+	.access = vm_access,
 	.open = vm_open,
 	.close = vm_close,
 };
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index ef7abcb3f4ee..9c7402ce5bf9 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -952,6 +952,129 @@ static int igt_mmap(void *arg)
 	return 0;
 }
 
+static const char *repr_mmap_type(enum i915_mmap_type type)
+{
+	switch (type) {
+	case I915_MMAP_TYPE_GTT: return "gtt";
+	case I915_MMAP_TYPE_WB: return "wb";
+	case I915_MMAP_TYPE_WC: return "wc";
+	case I915_MMAP_TYPE_UC: return "uc";
+	default: return "unknown";
+	}
+}
+
+static bool can_access(const struct drm_i915_gem_object *obj)
+{
+	unsigned int flags =
+		I915_GEM_OBJECT_HAS_STRUCT_PAGE | I915_GEM_OBJECT_HAS_IOMEM;
+
+	return i915_gem_object_type_has(obj, flags);
+}
+
+static int __igt_mmap_access(struct drm_i915_private *i915,
+			     struct drm_i915_gem_object *obj,
+			     enum i915_mmap_type type)
+{
+	struct i915_mmap_offset *mmo;
+	unsigned long __user *ptr;
+	unsigned long A, B;
+	unsigned long x, y;
+	unsigned long addr;
+	int err;
+
+	memset(&A, 0xAA, sizeof(A));
+	memset(&B, 0xBB, sizeof(B));
+
+	if (!can_mmap(obj, type) || !can_access(obj))
+		return 0;
+
+	mmo = mmap_offset_attach(obj, type, NULL);
+	if (IS_ERR(mmo))
+		return PTR_ERR(mmo);
+
+	addr = igt_mmap_node(i915, &mmo->vma_node, 0, PROT_WRITE, MAP_SHARED);
+	if (IS_ERR_VALUE(addr))
+		return addr;
+	ptr = (unsigned long __user *)addr;
+
+	err = __put_user(A, ptr);
+	if (err) {
+		pr_err("%s(%s): failed to write into user mmap\n",
+		       obj->mm.region->name, repr_mmap_type(type));
+		goto out_unmap;
+	}
+
+	intel_gt_flush_ggtt_writes(&i915->gt);
+
+	err = access_process_vm(current, addr, &x, sizeof(x), 0);
+	if (err != sizeof(x)) {
+		pr_err("%s(%s): access_process_vm() read failed\n",
+		       obj->mm.region->name, repr_mmap_type(type));
+		goto out_unmap;
+	}
+
+	err = access_process_vm(current, addr, &B, sizeof(B), FOLL_WRITE);
+	if (err != sizeof(B)) {
+		pr_err("%s(%s): access_process_vm() write failed\n",
+		       obj->mm.region->name, repr_mmap_type(type));
+		goto out_unmap;
+	}
+
+	intel_gt_flush_ggtt_writes(&i915->gt);
+
+	err = __get_user(y, ptr);
+	if (err) {
+		pr_err("%s(%s): failed to read from user mmap\n",
+		       obj->mm.region->name, repr_mmap_type(type));
+		goto out_unmap;
+	}
+
+	if (x != A || y != B) {
+		pr_err("%s(%s): failed to read/write values, found (%lx, %lx)\n",
+		       obj->mm.region->name, repr_mmap_type(type),
+		       x, y);
+		err = -EINVAL;
+		goto out_unmap;
+	}
+
+out_unmap:
+	vm_munmap(addr, obj->base.size);
+	return err;
+}
+
+static int igt_mmap_access(void *arg)
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
+		err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_GTT);
+		if (err == 0)
+			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WB);
+		if (err == 0)
+			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WC);
+		if (err == 0)
+			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_UC);
+
+		i915_gem_object_put(obj);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static int __igt_mmap_gpu(struct drm_i915_private *i915,
 			  struct drm_i915_gem_object *obj,
 			  enum i915_mmap_type type)
@@ -1229,6 +1352,7 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
 		SUBTEST(igt_mmap),
+		SUBTEST(igt_mmap_access),
 		SUBTEST(igt_mmap_revoke),
 		SUBTEST(igt_mmap_gpu),
 	};
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
