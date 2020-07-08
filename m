Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E31218971
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB966E284;
	Wed,  8 Jul 2020 13:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B309C6E121
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:47:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21753154-1500050 
 for multiple; Wed, 08 Jul 2020 14:47:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 14:47:42 +0100
Message-Id: <20200708134742.727-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200708134742.727-1-chris@chris-wilson.co.uk>
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Optimise aliasing-ppgtt
 allocations
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
Cc: matthew.auld@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the aliasing-ppgtt remains the default for gen6/gen7, it is worth
optimising the ppgtt allocation for it. In this case, we do not need to
flush the GGTT page directories entries as they are fixed during setup.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1c1e807f674d..277737e2d41a 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -184,12 +184,10 @@ static void gen6_alloc_va_range(struct i915_address_space *vm,
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 	struct i915_page_directory * const pd = ppgtt->base.pd;
 	struct i915_page_table *pt;
-	intel_wakeref_t wakeref;
+	bool flush = false;
 	u64 from = start;
 	unsigned int pde;
 
-	wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
-
 	spin_lock(&pd->lock);
 	gen6_for_each_pde(pt, pd, start, length, pde) {
 		const unsigned int count = gen6_pte_count(start, length);
@@ -211,16 +209,20 @@ static void gen6_alloc_va_range(struct i915_address_space *vm,
 			} else {
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
 
-	intel_runtime_pm_put(&vm->i915->runtime_pm, wakeref);
+		with_intel_runtime_pm(&vm->i915->runtime_pm, wakeref)
+			gen6_flush_pd(ppgtt, from, start);
+	}
 }
 
 static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
