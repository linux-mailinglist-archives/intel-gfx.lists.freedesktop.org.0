Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1183B30D5BD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF456EA23;
	Wed,  3 Feb 2021 09:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4FB6EA1D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 09:02:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23780359-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 09:02:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 09:02:00 +0000
Message-Id: <20210203090205.25818-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210203090205.25818-1-chris@chris-wilson.co.uk>
References: <20210203090205.25818-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/8] drm/i915/selftests: Replace the unbounded
 set-domain with an explicit wait
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

After running client_blt, we flush the object by changing its domain.
This causes us to wait forever instead of an bounded wait suitable for
the selftest timeout. So do an explicit wait with a suitable timeout --
which in turn means we have to limit the size of the object/blit to run
within reason.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  | 26 ++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 6a674a7994df..175581724d44 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -23,12 +23,19 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 	I915_RND_STATE(prng);
 	IGT_TIMEOUT(end);
 	u32 *vaddr;
+	u64 limit;
 	int err = 0;
 
+	/* Try to keep the blits within the timeout */
+	limit = min_t(u64, ce->vm->total >> 4,
+		      jiffies_to_msecs(i915_selftest.timeout_jiffies) * SZ_2M);
+	if (!limit)
+		limit = SZ_4K;
+
 	intel_engine_pm_get(engine);
 	do {
 		const u32 max_block_size = S16_MAX * PAGE_SIZE;
-		u32 sz = min_t(u64, ce->vm->total >> 4, prandom_u32_state(&prng));
+		u32 sz = min_t(u64, limit, prandom_u32_state(&prng));
 		u32 phys_sz = sz % (max_block_size + 1);
 		u32 val = prandom_u32_state(&prng);
 		u32 i;
@@ -73,13 +80,20 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 		if (err)
 			goto err_unpin;
 
-		i915_gem_object_lock(obj, NULL);
-		err = i915_gem_object_set_to_cpu_domain(obj, false);
-		i915_gem_object_unlock(obj);
-		if (err)
+		err = i915_gem_object_wait(obj,
+					   I915_WAIT_INTERRUPTIBLE,
+					   2 * i915_selftest.timeout_jiffies);
+		if (err) {
+			pr_err("%s fill %zxB timed out\n",
+			       engine->name, obj->base.size);
 			goto err_unpin;
+		}
 
-		for (i = 0; i < huge_gem_object_phys_size(obj) / sizeof(u32); ++i) {
+		for (i = 0;
+		     i < huge_gem_object_phys_size(obj) / sizeof(u32);
+		     i += 17) {
+			if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
+				clflush(&vaddr[i]);
 			if (vaddr[i] != val) {
 				pr_err("vaddr[%u]=%x, expected=%x\n", i,
 				       vaddr[i], val);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
