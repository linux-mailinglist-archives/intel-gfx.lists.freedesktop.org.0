Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A1D1C06A4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 21:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D5C6E489;
	Thu, 30 Apr 2020 19:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0256E489
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 19:41:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21075947-1500050 
 for multiple; Thu, 30 Apr 2020 20:41:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 20:41:07 +0100
Message-Id: <20200430194107.7073-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Implement vm_ops->access for gdb
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
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 31 ++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

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
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
