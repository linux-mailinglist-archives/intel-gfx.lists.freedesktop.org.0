Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF44D148513
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F396FA58;
	Fri, 24 Jan 2020 12:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBCCF6FA58
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 12:19:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19994630-1500050 
 for multiple; Fri, 24 Jan 2020 12:19:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 12:19:09 +0000
Message-Id: <20200124121909.64427-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check current i915_vma.pin_count
 status first on unbind
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

Do an early rejection of a i915_vma_unbind() attempt if the i915_vma is
currently pinned, without waiting to see if the inflight operations may
unpin it. We see this problem with the shrinker trying to unbind the
active vma from inside its bind worker:

<6> [472.618968] Workqueue: events_unbound fence_work [i915]
<4> [472.618970] Call Trace:
<4> [472.618974]  ? __schedule+0x2e5/0x810
<4> [472.618978]  schedule+0x37/0xe0
<4> [472.618982]  schedule_preempt_disabled+0xf/0x20
<4> [472.618984]  __mutex_lock+0x281/0x9c0
<4> [472.618987]  ? mark_held_locks+0x49/0x70
<4> [472.618989]  ? _raw_spin_unlock_irqrestore+0x47/0x60
<4> [472.619038]  ? i915_vma_unbind+0xae/0x110 [i915]
<4> [472.619084]  ? i915_vma_unbind+0xae/0x110 [i915]
<4> [472.619122]  i915_vma_unbind+0xae/0x110 [i915]
<4> [472.619165]  i915_gem_object_unbind+0x1dc/0x400 [i915]
<4> [472.619208]  i915_gem_shrink+0x328/0x660 [i915]
<4> [472.619250]  ? i915_gem_shrink_all+0x38/0x60 [i915]
<4> [472.619282]  i915_gem_shrink_all+0x38/0x60 [i915]
<4> [472.619325]  vm_alloc_page.constprop.25+0x1aa/0x240 [i915]
<4> [472.619330]  ? rcu_read_lock_sched_held+0x4d/0x80
<4> [472.619363]  ? __alloc_pd+0xb/0x30 [i915]
<4> [472.619366]  ? module_assert_mutex_or_preempt+0xf/0x30
<4> [472.619368]  ? __module_address+0x23/0xe0
<4> [472.619371]  ? is_module_address+0x26/0x40
<4> [472.619374]  ? static_obj+0x34/0x50
<4> [472.619376]  ? lockdep_init_map+0x4d/0x1e0
<4> [472.619407]  setup_page_dma+0xd/0x90 [i915]
<4> [472.619437]  alloc_pd+0x29/0x50 [i915]
<4> [472.619470]  __gen8_ppgtt_alloc+0x443/0x6b0 [i915]
<4> [472.619503]  gen8_ppgtt_alloc+0xd7/0x300 [i915]
<4> [472.619535]  ppgtt_bind_vma+0x2a/0xe0 [i915]
<4> [472.619577]  __vma_bind+0x26/0x40 [i915]
<4> [472.619611]  fence_work+0x1c/0x90 [i915]
<4> [472.619617]  process_one_work+0x26a/0x620

Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 84e03da0d5f9..45bc57e30a34 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1190,18 +1190,6 @@ int __i915_vma_unbind(struct i915_vma *vma)
 
 	lockdep_assert_held(&vma->vm->mutex);
 
-	/*
-	 * First wait upon any activity as retiring the request may
-	 * have side-effects such as unpinning or even unbinding this vma.
-	 *
-	 * XXX Actually waiting under the vm->mutex is a hinderance and
-	 * should be pipelined wherever possible. In cases where that is
-	 * unavoidable, we should lift the wait to before the mutex.
-	 */
-	ret = i915_vma_sync(vma);
-	if (ret)
-		return ret;
-
 	if (i915_vma_is_pinned(vma)) {
 		vma_print_allocator(vma, "is pinned");
 		return -EAGAIN;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
