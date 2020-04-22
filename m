Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB91B38CE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 09:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348A76E33D;
	Wed, 22 Apr 2020 07:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36926E33D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 07:21:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20979112-1500050 
 for multiple; Wed, 22 Apr 2020 08:20:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 08:20:37 +0100
Message-Id: <20200422072037.17163-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Hold obj->vma.lock over
 for_each_ggtt_vma()
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
Cc: Dave Airlie <airlied@redhat.com>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While the ggtt vma are protected by their object lifetime, the list
continues until it hits a non-ggtt vma, and that vma is not protected
and may be freed as we inspect it. Hence, we require the obj->vma.lock
to protect the list as we iterate.

An example of forgetting to hold the obj->vma.lock is

[1642834.464973] general protection fault, probably for non-canonical address 0xdead000000000122: 0000 [#1] SMP PTI
[1642834.464977] CPU: 3 PID: 1954 Comm: Xorg Not tainted 5.6.0-300.fc32.x86_64 #1
[1642834.464979] Hardware name: LENOVO 20ARS25701/20ARS25701, BIOS GJET94WW (2.44 ) 09/14/2017
[1642834.465021] RIP: 0010:i915_gem_object_set_tiling+0x2c0/0x3e0 [i915]
[1642834.465024] Code: 8b 84 24 18 01 00 00 f6 c4 80 74 59 49 8b 94 24 a0 00 00 00 49 8b 84 24 e0 00 00 00 49 8b 74 24 10 48 8b 92 30 01 00 00 89 c7 <80> ba 0a 06 00 00 03 0f 87 86 00 00 00 ba 00 00 08 00 b9 00 00 10
[1642834.465025] RSP: 0018:ffffa98780c77d60 EFLAGS: 00010282
[1642834.465028] RAX: ffff8d232bfb2578 RBX: 0000000000000002 RCX: ffff8d25873a0000
[1642834.465029] RDX: dead000000000122 RSI: fffff0af8ac6e408 RDI: 000000002bfb2578
[1642834.465030] RBP: ffff8d25873a0000 R08: ffff8d252bfb5638 R09: 0000000000000000
[1642834.465031] R10: 0000000000000000 R11: ffff8d252bfb5640 R12: ffffa987801cb8f8
[1642834.465032] R13: 0000000000001000 R14: ffff8d233e972e50 R15: ffff8d233e972d00
[1642834.465034] FS:  00007f6a3d327f00(0000) GS:ffff8d25926c0000(0000) knlGS:0000000000000000
[1642834.465036] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[1642834.465037] CR2: 00007f6a2064d000 CR3: 00000002fb57c001 CR4: 00000000001606e0
[1642834.465038] Call Trace:
[1642834.465083]  i915_gem_set_tiling_ioctl+0x122/0x230 [i915]
[1642834.465121]  ? i915_gem_object_set_tiling+0x3e0/0x3e0 [i915]
[1642834.465151]  drm_ioctl_kernel+0x86/0xd0 [drm]
[1642834.465156]  ? avc_has_perm+0x3b/0x160
[1642834.465178]  drm_ioctl+0x206/0x390 [drm]
[1642834.465216]  ? i915_gem_object_set_tiling+0x3e0/0x3e0 [i915]
[1642834.465221]  ? selinux_file_ioctl+0x122/0x1c0
[1642834.465226]  ? __do_munmap+0x24b/0x4d0
[1642834.465231]  ksys_ioctl+0x82/0xc0
[1642834.465235]  __x64_sys_ioctl+0x16/0x20
[1642834.465238]  do_syscall_64+0x5b/0xf0
[1642834.465243]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[1642834.465245] RIP: 0033:0x7f6a3d7b047b
[1642834.465247] Code: 0f 1e fa 48 8b 05 1d aa 0c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d ed a9 0c 00 f7 d8 64 89 01 48
[1642834.465249] RSP: 002b:00007ffe71adba28 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[1642834.465251] RAX: ffffffffffffffda RBX: 000055f99048fa40 RCX: 00007f6a3d7b047b
[1642834.465253] RDX: 00007ffe71adba30 RSI: 00000000c0106461 RDI: 000000000000000e
[1642834.465254] RBP: 0000000000000002 R08: 000055f98f3f1798 R09: 0000000000000002
[1642834.465255] R10: 0000000000001000 R11: 0000000000000246 R12: 0000000000000080
[1642834.465257] R13: 000055f98f3f1690 R14: 00000000c0106461 R15: 00007ffe71adba30

Now to take the spinlock during the list iteration, we need to break it
down into two phases. In the first phase under the lock, we cannot sleep
and so must defer the actual work to a second list, protected by the
ggtt->mutex.

We also need to hold the spinlock during creation of a new spinlock to
serialise updates of the tiling on the object.

Reported-by: Dave Airlie <airlied@redhat.com>
Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: <stable@vger.kernel.org> # v5.5+
---
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 15 ++++++++++++++-
 drivers/gpu/drm/i915/i915_vma.c            | 10 ++++++----
 2 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 37f77aee1212..0deb66d2858e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -182,21 +182,32 @@ i915_gem_object_fence_prepare(struct drm_i915_gem_object *obj,
 			      int tiling_mode, unsigned int stride)
 {
 	struct i915_ggtt *ggtt = &to_i915(obj->base.dev)->ggtt;
-	struct i915_vma *vma;
+	struct i915_vma *vma, *vn;
+	LIST_HEAD(unbind);
 	int ret = 0;
 
 	if (tiling_mode == I915_TILING_NONE)
 		return 0;
 
 	mutex_lock(&ggtt->vm.mutex);
+
+	spin_lock(&obj->vma.lock);
 	for_each_ggtt_vma(vma, obj) {
+		GEM_BUG_ON(vma->vm != &ggtt->vm);
+
 		if (i915_vma_fence_prepare(vma, tiling_mode, stride))
 			continue;
 
+		list_move(&vma->vm_link, &unbind);
+	}
+	spin_unlock(&obj->vma.lock);
+
+	list_for_each_entry_safe(vma, vn, &unbind, vm_link) {
 		ret = __i915_vma_unbind(vma);
 		if (ret)
 			break;
 	}
+
 	mutex_unlock(&ggtt->vm.mutex);
 
 	return ret;
@@ -268,6 +279,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	}
 	mutex_unlock(&obj->mm.lock);
 
+	spin_lock(&obj->vma.lock);
 	for_each_ggtt_vma(vma, obj) {
 		vma->fence_size =
 			i915_gem_fence_size(i915, vma->size, tiling, stride);
@@ -278,6 +290,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 		if (vma->fence)
 			vma->fence->dirty = true;
 	}
+	spin_unlock(&obj->vma.lock);
 
 	obj->tiling_and_stride = tiling | stride;
 	i915_gem_object_unlock(obj);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index f0383a68c981..20fe5a134d92 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -158,16 +158,18 @@ vma_create(struct drm_i915_gem_object *obj,
 
 	GEM_BUG_ON(!IS_ALIGNED(vma->size, I915_GTT_PAGE_SIZE));
 
+	spin_lock(&obj->vma.lock);
+
 	if (i915_is_ggtt(vm)) {
 		if (unlikely(overflows_type(vma->size, u32)))
-			goto err_vma;
+			goto err_unlock;
 
 		vma->fence_size = i915_gem_fence_size(vm->i915, vma->size,
 						      i915_gem_object_get_tiling(obj),
 						      i915_gem_object_get_stride(obj));
 		if (unlikely(vma->fence_size < vma->size || /* overflow */
 			     vma->fence_size > vm->total))
-			goto err_vma;
+			goto err_unlock;
 
 		GEM_BUG_ON(!IS_ALIGNED(vma->fence_size, I915_GTT_MIN_ALIGNMENT));
 
@@ -179,8 +181,6 @@ vma_create(struct drm_i915_gem_object *obj,
 		__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(vma));
 	}
 
-	spin_lock(&obj->vma.lock);
-
 	rb = NULL;
 	p = &obj->vma.tree.rb_node;
 	while (*p) {
@@ -225,6 +225,8 @@ vma_create(struct drm_i915_gem_object *obj,
 
 	return vma;
 
+err_unlock:
+	spin_unlock(&obj->vma.lock);
 err_vma:
 	i915_vma_free(vma);
 	return ERR_PTR(-E2BIG);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
