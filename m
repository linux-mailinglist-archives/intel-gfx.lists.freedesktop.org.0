Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 409B221A76B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 21:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98716EAD5;
	Thu,  9 Jul 2020 19:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC796EAD5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 19:01:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21769567-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 20:01:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 20:01:11 +0100
Message-Id: <20200709190111.5492-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Optimise aliasing-ppgtt allocations
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

Since the aliasing-ppgtt remains the default for gen6/gen7, it is worth
optimising the ppgtt allocation for it. In this case, we do not need to
flush the GGTT page directories entries as they are fixed during setup.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 05497b50103f..cdc0b9c54305 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -183,13 +183,11 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 	struct i915_page_directory * const pd = ppgtt->base.pd;
 	struct i915_page_table *pt, *alloc = NULL;
-	intel_wakeref_t wakeref;
+	bool flush = false;
 	u64 from = start;
 	unsigned int pde;
 	int ret = 0;
 
-	wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
-
 	spin_lock(&pd->lock);
 	gen6_for_each_pde(pt, pd, start, length, pde) {
 		const unsigned int count = gen6_pte_count(start, length);
@@ -214,14 +212,20 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 				alloc = pt;
 				pt = pd->entry[pde];
 			}
+
+			flush = true;
 		}
 
 		atomic_add(count, &pt->used);
 	}
 	spin_unlock(&pd->lock);
 
-	if (i915_vma_is_bound(ppgtt->vma, I915_VMA_GLOBAL_BIND))
-		gen6_flush_pd(ppgtt, from, start);
+	if (flush && i915_vma_is_bound(ppgtt->vma, I915_VMA_GLOBAL_BIND)) {
+		intel_wakeref_t wakeref;
+
+		with_intel_runtime_pm(&vm->i915->runtime_pm, wakeref)
+			gen6_flush_pd(ppgtt, from, start);
+	}
 
 	goto out;
 
@@ -230,7 +234,6 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
 out:
 	if (alloc)
 		free_px(vm, alloc);
-	intel_runtime_pm_put(&vm->i915->runtime_pm, wakeref);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
