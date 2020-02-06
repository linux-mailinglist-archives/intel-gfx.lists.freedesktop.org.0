Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1D21545C2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 15:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFADB6E4D0;
	Thu,  6 Feb 2020 14:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8A96E4D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 14:09:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20136978-1500050 
 for multiple; Thu, 06 Feb 2020 14:09:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 14:09:48 +0000
Message-Id: <20200206140948.2491620-1-chris@chris-wilson.co.uk>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce the amount of work we do to verify client blt correctness as
currently our 0.5s subtests takes about 15s on slower devices!

v2: Grow the maximum block size until we run out of time

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../i915/gem/selftests/i915_gem_object_blt.c  | 54 +++++++++++--------
 1 file changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index 62077fe46715..b98705821b84 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -210,6 +210,7 @@ static int igt_fill_blt_thread(void *arg)
 	struct intel_context *ce;
 	unsigned int prio;
 	IGT_TIMEOUT(end);
+	u64 total;
 	int err;
 
 	ctx = thread->ctx;
@@ -225,10 +226,11 @@ static int igt_fill_blt_thread(void *arg)
 	ce = i915_gem_context_get_engine(ctx, BCS0);
 	GEM_BUG_ON(IS_ERR(ce));
 
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
@@ -238,11 +240,9 @@ static int igt_fill_blt_thread(void *arg)
 		 * If we have a tiny shared address space, like for the GGTT
 		 * then we can't be too greedy.
 		 */
-		if (i915_is_ggtt(ce->vm))
-			total = div64_u64(total, thread->n_cpus);
-
-		sz = min_t(u64, total >> 4, prandom_u32_state(prng));
-		phys_sz = sz % (max_block_size + 1);
+		total = min(total, ce->vm->total / 2);
+		sz = i915_prandom_u32_max_state(total, prng) + 1;
+		phys_sz = sz % max_phys_size;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
@@ -276,13 +276,16 @@ static int igt_fill_blt_thread(void *arg)
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
+			if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ)) {
+				clflush(&vaddr[i]);
+				mb();
+			}
+
 			if (vaddr[i] != val) {
 				pr_err("vaddr[%u]=%x, expected=%x\n", i,
 				       vaddr[i], val);
@@ -293,6 +296,8 @@ static int igt_fill_blt_thread(void *arg)
 
 		i915_gem_object_unpin_map(obj);
 		i915_gem_object_put(obj);
+
+		total <<= 1;
 	} while (!time_after(jiffies, end));
 
 	goto err_flush;
@@ -319,6 +324,7 @@ static int igt_copy_blt_thread(void *arg)
 	struct intel_context *ce;
 	unsigned int prio;
 	IGT_TIMEOUT(end);
+	u64 total;
 	int err;
 
 	ctx = thread->ctx;
@@ -334,20 +340,19 @@ static int igt_copy_blt_thread(void *arg)
 	ce = i915_gem_context_get_engine(ctx, BCS0);
 	GEM_BUG_ON(IS_ERR(ce));
 
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
+		total = min(total, ce->vm->total / 2);
+		sz = i915_prandom_u32_max_state(total, prng) + 1;
+		phys_sz = sz % max_phys_size;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
@@ -397,13 +402,16 @@ static int igt_copy_blt_thread(void *arg)
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
+			if (!(dst->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ)) {
+				clflush(&vaddr[i]);
+				mb();
+			}
+
 			if (vaddr[i] != val) {
 				pr_err("vaddr[%u]=%x, expected=%x\n", i,
 				       vaddr[i], val);
@@ -416,6 +424,8 @@ static int igt_copy_blt_thread(void *arg)
 
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
