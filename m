Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B831585FE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 00:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46D688E33;
	Mon, 10 Feb 2020 23:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98DFC88E33
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 23:11:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20180931-1500050 
 for multiple; Mon, 10 Feb 2020 23:10:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 23:10:47 +0000
Message-Id: <20200210231047.810929-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Trim blitter block size
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce the amount of work we do to verify client blt correctness as
currently our 0.5s subtests takes about 15s on slower devices!

v2: Grow the maximum block size until we run out of time

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../i915/gem/selftests/i915_gem_object_blt.c  | 72 ++++++++++++-------
 1 file changed, 46 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index 62077fe46715..f29da4560dc0 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -210,6 +210,7 @@ static int igt_fill_blt_thread(void *arg)
 	struct intel_context *ce;
 	unsigned int prio;
 	IGT_TIMEOUT(end);
+	u64 total, max;
 	int err;
 
 	ctx = thread->ctx;
@@ -225,24 +226,28 @@ static int igt_fill_blt_thread(void *arg)
 	ce = i915_gem_context_get_engine(ctx, BCS0);
 	GEM_BUG_ON(IS_ERR(ce));
 
+	/*
+	 * If we have a tiny shared address space, like for the GGTT
+	 * then we can't be too greedy.
+	 */
+	max = ce->vm->total;
+	if (i915_is_ggtt(ce->vm) || thread->ctx)
+		max = div_u64(max, thread->n_cpus);
+	max >>= 4;
+
+	total = PAGE_SIZE;
 	do {
-		const u32 max_block_size = S16_MAX * PAGE_SIZE;
+		/* Aim to keep the runtime under reasonable bounds! */
+		const u32 max_phys_size = SZ_64K;
 		u32 val = prandom_u32_state(prng);
-		u64 total = ce->vm->total;
 		u32 phys_sz;
 		u32 sz;
 		u32 *vaddr;
 		u32 i;
 
-		/*
-		 * If we have a tiny shared address space, like for the GGTT
-		 * then we can't be too greedy.
-		 */
-		if (i915_is_ggtt(ce->vm))
-			total = div64_u64(total, thread->n_cpus);
-
-		sz = min_t(u64, total >> 4, prandom_u32_state(prng));
-		phys_sz = sz % (max_block_size + 1);
+		total = min(total, max);
+		sz = i915_prandom_u32_max_state(total, prng) + 1;
+		phys_sz = sz % max_phys_size;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
@@ -276,13 +281,14 @@ static int igt_fill_blt_thread(void *arg)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(obj);
-		err = i915_gem_object_set_to_cpu_domain(obj, false);
-		i915_gem_object_unlock(obj);
+		err = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
 		if (err)
 			goto err_unpin;
 
-		for (i = 0; i < huge_gem_object_phys_size(obj) / sizeof(u32); ++i) {
+		for (i = 0; i < huge_gem_object_phys_size(obj) / sizeof(u32); i += 17) {
+			if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
+				drm_clflush_virt_range(&vaddr[i], sizeof(vaddr[i]));
+
 			if (vaddr[i] != val) {
 				pr_err("vaddr[%u]=%x, expected=%x\n", i,
 				       vaddr[i], val);
@@ -293,6 +299,8 @@ static int igt_fill_blt_thread(void *arg)
 
 		i915_gem_object_unpin_map(obj);
 		i915_gem_object_put(obj);
+
+		total <<= 1;
 	} while (!time_after(jiffies, end));
 
 	goto err_flush;
@@ -319,6 +327,7 @@ static int igt_copy_blt_thread(void *arg)
 	struct intel_context *ce;
 	unsigned int prio;
 	IGT_TIMEOUT(end);
+	u64 total, max;
 	int err;
 
 	ctx = thread->ctx;
@@ -334,20 +343,28 @@ static int igt_copy_blt_thread(void *arg)
 	ce = i915_gem_context_get_engine(ctx, BCS0);
 	GEM_BUG_ON(IS_ERR(ce));
 
+	/*
+	 * If we have a tiny shared address space, like for the GGTT
+	 * then we can't be too greedy.
+	 */
+	max = ce->vm->total;
+	if (i915_is_ggtt(ce->vm) || thread->ctx)
+		max = div_u64(max, thread->n_cpus);
+	max >>= 4;
+
+	total = PAGE_SIZE;
 	do {
-		const u32 max_block_size = S16_MAX * PAGE_SIZE;
+		/* Aim to keep the runtime under reasonable bounds! */
+		const u32 max_phys_size = SZ_64K;
 		u32 val = prandom_u32_state(prng);
-		u64 total = ce->vm->total;
 		u32 phys_sz;
 		u32 sz;
 		u32 *vaddr;
 		u32 i;
 
-		if (i915_is_ggtt(ce->vm))
-			total = div64_u64(total, thread->n_cpus);
-
-		sz = min_t(u64, total >> 4, prandom_u32_state(prng));
-		phys_sz = sz % (max_block_size + 1);
+		total = min(total, max);
+		sz = i915_prandom_u32_max_state(total, prng) + 1;
+		phys_sz = sz % max_phys_size;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
@@ -397,13 +414,14 @@ static int igt_copy_blt_thread(void *arg)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(dst);
-		err = i915_gem_object_set_to_cpu_domain(dst, false);
-		i915_gem_object_unlock(dst);
+		err = i915_gem_object_wait(dst, 0, MAX_SCHEDULE_TIMEOUT);
 		if (err)
 			goto err_unpin;
 
-		for (i = 0; i < huge_gem_object_phys_size(dst) / sizeof(u32); ++i) {
+		for (i = 0; i < huge_gem_object_phys_size(dst) / sizeof(u32); i += 17) {
+			if (!(dst->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
+				drm_clflush_virt_range(&vaddr[i], sizeof(vaddr[i]));
+
 			if (vaddr[i] != val) {
 				pr_err("vaddr[%u]=%x, expected=%x\n", i,
 				       vaddr[i], val);
@@ -416,6 +434,8 @@ static int igt_copy_blt_thread(void *arg)
 
 		i915_gem_object_put(src);
 		i915_gem_object_put(dst);
+
+		total <<= 1;
 	} while (!time_after(jiffies, end));
 
 	goto err_flush;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
