Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF9D15410B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 10:20:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D136E4BB;
	Thu,  6 Feb 2020 09:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B366E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 09:20:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20133095-1500050 
 for multiple; Thu, 06 Feb 2020 09:20:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 09:20:43 +0000
Message-Id: <20200206092043.2164267-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
References: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../i915/gem/selftests/i915_gem_object_blt.c  | 40 ++++++++++++-------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index 62077fe46715..674f4298f9a6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -226,7 +226,9 @@ static int igt_fill_blt_thread(void *arg)
 	GEM_BUG_ON(IS_ERR(ce));
 
 	do {
-		const u32 max_block_size = S16_MAX * PAGE_SIZE;
+		/* Aim to keep the runtime under reasonable bounds! */
+		const u32 max_block_size = SZ_64M; /* max S16_MAX * PAGE_SIZE */
+		const u32 max_phys_size = SZ_64K;
 		u32 val = prandom_u32_state(prng);
 		u64 total = ce->vm->total;
 		u32 phys_sz;
@@ -240,9 +242,10 @@ static int igt_fill_blt_thread(void *arg)
 		 */
 		if (i915_is_ggtt(ce->vm))
 			total = div64_u64(total, thread->n_cpus);
+		total = min_t(u64, total, max_block_size);
 
-		sz = min_t(u64, total >> 4, prandom_u32_state(prng));
-		phys_sz = sz % (max_block_size + 1);
+		sz = i915_prandom_u32_max_state(total, prng);
+		phys_sz = sz % max_phys_size;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
@@ -276,13 +279,16 @@ static int igt_fill_blt_thread(void *arg)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(obj);
-		err = i915_gem_object_set_to_cpu_domain(obj, false);
-		i915_gem_object_unlock(obj);
+		err = i915_gem_object_wait(obj, I915_WAIT_ALL, HZ / 2);
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
@@ -335,7 +341,9 @@ static int igt_copy_blt_thread(void *arg)
 	GEM_BUG_ON(IS_ERR(ce));
 
 	do {
-		const u32 max_block_size = S16_MAX * PAGE_SIZE;
+		/* Aim to keep the runtime under reasonable bounds! */
+		const u32 max_block_size = SZ_64M; /* max S16_MAX * PAGE_SIZE */
+		const u32 max_phys_size = SZ_64K;
 		u32 val = prandom_u32_state(prng);
 		u64 total = ce->vm->total;
 		u32 phys_sz;
@@ -345,9 +353,10 @@ static int igt_copy_blt_thread(void *arg)
 
 		if (i915_is_ggtt(ce->vm))
 			total = div64_u64(total, thread->n_cpus);
+		total = min_t(u64, total, max_block_size);
 
-		sz = min_t(u64, total >> 4, prandom_u32_state(prng));
-		phys_sz = sz % (max_block_size + 1);
+		sz = i915_prandom_u32_max_state(total, prng);
+		phys_sz = sz % max_phys_size;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
@@ -397,13 +406,16 @@ static int igt_copy_blt_thread(void *arg)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(dst);
-		err = i915_gem_object_set_to_cpu_domain(dst, false);
-		i915_gem_object_unlock(dst);
+		err = i915_gem_object_wait(dst, I915_WAIT_ALL, HZ / 2);
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
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
