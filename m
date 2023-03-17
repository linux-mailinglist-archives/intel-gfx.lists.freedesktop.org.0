Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4E86BE0C0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 06:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151D610E096;
	Fri, 17 Mar 2023 05:48:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0F510E096
 for <Intel-GFX@lists.freedesktop.org>; Fri, 17 Mar 2023 05:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679032127; x=1710568127;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wlXZygqUBIoZntwlvCoBm5b4nTrlwSwsCEE4gw35agU=;
 b=LC1k0GQIrOYU0pAYdkw6C+DsxgoSaLY08waVv/aU3Yrm2ZYv3q2y9iNC
 AUy8Bs77NcbrDlxI2YdQuOZdvxHHhbCbHi0YE+A2P35A1j9tcDp7BPs6K
 zDJzZQvA9a99QuSjlri31WzgDhZJTo1xU7sOVpSZcJ6LUrFt3Ol6BNGi2
 KzKUeWU7QlJrzKzkjAnwfEZqXbRpO0pAPvQOcJ5dK2HppQvs4IoVzTqZJ
 TD18dxmmwuYERQDnas9kcUFs4QuLEoM6xggaMKSE6a7AEd5bm4t6LWULy
 RcYHK1hNOIsHjnbxwGGzURsbCKKsKnKfLa6+kFIHW5UuS+oJCjbdLMfke A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="335678813"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="335678813"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 22:48:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="712628924"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="712628924"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga001.jf.intel.com with ESMTP; 16 Mar 2023 22:48:43 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 17 Mar 2023 11:22:39 +0530
Message-Id: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to make igt_live_test work in proper
way, we need to consider multi-gt in all tests
where igt_live_test is used as well as at other
random places where multi-gt should be considered.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 ++--
 .../drm/i915/gem/selftests/i915_gem_context.c | 28 ++++----
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 68 +++++++++----------
 drivers/gpu/drm/i915/selftests/i915_request.c | 36 +++++-----
 .../gpu/drm/i915/selftests/igt_live_test.c    | 10 +--
 .../gpu/drm/i915/selftests/igt_live_test.h    |  4 +-
 7 files changed, 81 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9dce2957b4e5..289b75ac39e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2449,9 +2449,9 @@ static int eb_submit(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int num_vcs_engines(struct drm_i915_private *i915)
+static int num_vcs_engines(struct intel_gt *gt)
 {
-	return hweight_long(VDBOX_MASK(to_gt(i915)));
+	return hweight_long(VDBOX_MASK(gt));
 }
 
 /*
@@ -2459,7 +2459,7 @@ static int num_vcs_engines(struct drm_i915_private *i915)
  * The engine index is returned.
  */
 static unsigned int
-gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
+gen8_dispatch_bsd_engine(struct intel_gt *gt,
 			 struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
@@ -2467,7 +2467,7 @@ gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
 	/* Check whether the file_priv has already selected one ring. */
 	if ((int)file_priv->bsd_engine < 0)
 		file_priv->bsd_engine =
-			get_random_u32_below(num_vcs_engines(dev_priv));
+			get_random_u32_below(num_vcs_engines(gt));
 
 	return file_priv->bsd_engine;
 }
@@ -2644,6 +2644,7 @@ static unsigned int
 eb_select_legacy_ring(struct i915_execbuffer *eb)
 {
 	struct drm_i915_private *i915 = eb->i915;
+	struct intel_gt *gt = eb->gt;
 	struct drm_i915_gem_execbuffer2 *args = eb->args;
 	unsigned int user_ring_id = args->flags & I915_EXEC_RING_MASK;
 
@@ -2655,11 +2656,11 @@ eb_select_legacy_ring(struct i915_execbuffer *eb)
 		return -1;
 	}
 
-	if (user_ring_id == I915_EXEC_BSD && num_vcs_engines(i915) > 1) {
+	if (user_ring_id == I915_EXEC_BSD && num_vcs_engines(gt) > 1) {
 		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
 
 		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
-			bsd_idx = gen8_dispatch_bsd_engine(i915, eb->file);
+			bsd_idx = gen8_dispatch_bsd_engine(gt, eb->file);
 		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
 			   bsd_idx <= I915_EXEC_BSD_RING2) {
 			bsd_idx >>= I915_EXEC_BSD_SHIFT;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index a81fa6a20f5a..b2695aab54e5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -93,7 +93,7 @@ static int live_nop_switch(void *arg)
 		}
 		if (i915_request_wait(rq, 0, 10 * HZ) < 0) {
 			pr_err("Failed to populated %d contexts\n", nctx);
-			intel_gt_set_wedged(to_gt(i915));
+			intel_gt_set_wedged(engine->gt);
 			i915_request_put(rq);
 			err = -EIO;
 			goto out_file;
@@ -105,7 +105,7 @@ static int live_nop_switch(void *arg)
 		pr_info("Populated %d contexts on %s in %lluns\n",
 			nctx, engine->name, ktime_to_ns(times[1] - times[0]));
 
-		err = igt_live_test_begin(&t, i915, __func__, engine->name);
+		err = igt_live_test_begin(&t, engine->gt, __func__, engine->name);
 		if (err)
 			goto out_file;
 
@@ -149,7 +149,7 @@ static int live_nop_switch(void *arg)
 			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 				pr_err("Switching between %ld contexts timed out\n",
 				       prime);
-				intel_gt_set_wedged(to_gt(i915));
+				intel_gt_set_wedged(engine->gt);
 				i915_request_put(rq);
 				break;
 			}
@@ -163,7 +163,7 @@ static int live_nop_switch(void *arg)
 				break;
 		}
 
-		err = igt_live_test_end(&t);
+		err = igt_live_test_end(&t, engine->gt);
 		if (err)
 			goto out_file;
 
@@ -376,7 +376,7 @@ static int live_parallel_switch(void *arg)
 	for (fn = func; !err && *fn; fn++) {
 		struct igt_live_test t;
 
-		err = igt_live_test_begin(&t, i915, __func__, "");
+		err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
 		if (err)
 			break;
 
@@ -397,7 +397,7 @@ static int live_parallel_switch(void *arg)
 			}
 		}
 
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, to_gt(i915)))
 			err = -EIO;
 	}
 
@@ -682,7 +682,7 @@ static int igt_ctx_exec(void *arg)
 		if (IS_ERR(file))
 			return PTR_ERR(file);
 
-		err = igt_live_test_begin(&t, i915, __func__, engine->name);
+		err = igt_live_test_begin(&t, engine->gt, __func__, engine->name);
 		if (err)
 			goto out_file;
 
@@ -760,7 +760,7 @@ static int igt_ctx_exec(void *arg)
 
 out_file:
 		throttle_release(tq, ARRAY_SIZE(tq));
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, engine->gt))
 			err = -EIO;
 
 		fput(file);
@@ -806,7 +806,7 @@ static int igt_shared_ctx_exec(void *arg)
 		goto out_file;
 	}
 
-	err = igt_live_test_begin(&t, i915, __func__, "");
+	err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
 	if (err)
 		goto out_file;
 
@@ -895,7 +895,7 @@ static int igt_shared_ctx_exec(void *arg)
 	}
 out_test:
 	throttle_release(tq, ARRAY_SIZE(tq));
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, to_gt(i915)))
 		err = -EIO;
 out_file:
 	fput(file);
@@ -1382,7 +1382,7 @@ static int igt_ctx_readonly(void *arg)
 	if (IS_ERR(file))
 		return PTR_ERR(file);
 
-	err = igt_live_test_begin(&t, i915, __func__, "");
+	err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
 	if (err)
 		goto out_file;
 
@@ -1472,7 +1472,7 @@ static int igt_ctx_readonly(void *arg)
 
 out_file:
 	throttle_release(tq, ARRAY_SIZE(tq));
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, to_gt(i915)))
 		err = -EIO;
 
 	fput(file);
@@ -1785,7 +1785,7 @@ static int igt_vm_isolation(void *arg)
 	if (IS_ERR(file))
 		return PTR_ERR(file);
 
-	err = igt_live_test_begin(&t, i915, __func__, "");
+	err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
 	if (err)
 		goto out_file;
 
@@ -1882,7 +1882,7 @@ static int igt_vm_isolation(void *arg)
 put_a:
 	i915_gem_object_put(obj_a);
 out_file:
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, to_gt(i915)))
 		err = -EIO;
 	fput(file);
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index cd4f1b126f75..dcedff41a825 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -117,7 +117,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 			disabled |= (I915_SCHEDULER_CAP_ENABLED |
 				     I915_SCHEDULER_CAP_PRIORITY);
 
-		if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
+		if (intel_uc_uses_guc_submission(&engine->gt->uc))
 			enabled |= I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
 
 		for (i = 0; i < ARRAY_SIZE(map); i++) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 736b89a8ecf5..4384d466a632 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -189,7 +189,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			break;
 		}
@@ -302,7 +302,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		}
 
 		st_engine_heartbeat_enable(engine);
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, gt))
 			err = -EIO;
 		if (err)
 			break;
@@ -351,7 +351,7 @@ static int live_unlite_ring(void *arg)
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			break;
 		}
@@ -462,7 +462,7 @@ static int live_unlite_ring(void *arg)
 			intel_context_put(ce[n]);
 		}
 		st_engine_heartbeat_enable(engine);
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, gt))
 			err = -EIO;
 		if (err)
 			break;
@@ -494,7 +494,7 @@ static int live_pin_rewind(void *arg)
 		struct intel_ring *ring;
 		struct igt_live_test t;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			break;
 		}
@@ -541,7 +541,7 @@ static int live_pin_rewind(void *arg)
 		i915_request_add(rq);
 
 		/* Expect not to hang! */
-		if (igt_live_test_end(&t)) {
+		if (igt_live_test_end(&t, gt)) {
 			err = -EIO;
 			break;
 		}
@@ -1585,7 +1585,7 @@ static int live_busywait_preempt(void *arg)
 		if (!intel_engine_can_store_dword(engine))
 			continue;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			goto err_vma;
 		}
@@ -1687,7 +1687,7 @@ static int live_busywait_preempt(void *arg)
 		GEM_BUG_ON(READ_ONCE(*map));
 		i915_request_put(lo);
 
-		if (igt_live_test_end(&t)) {
+		if (igt_live_test_end(&t, gt)) {
 			err = -EIO;
 			goto err_vma;
 		}
@@ -1757,7 +1757,7 @@ static int live_preempt(void *arg)
 		if (!intel_engine_has_preemption(engine))
 			continue;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			goto err_spin_lo;
 		}
@@ -1798,7 +1798,7 @@ static int live_preempt(void *arg)
 		igt_spinner_end(&spin_hi);
 		igt_spinner_end(&spin_lo);
 
-		if (igt_live_test_end(&t)) {
+		if (igt_live_test_end(&t, gt)) {
 			err = -EIO;
 			goto err_spin_lo;
 		}
@@ -1850,7 +1850,7 @@ static int live_late_preempt(void *arg)
 		if (!intel_engine_has_preemption(engine))
 			continue;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			goto err_spin_lo;
 		}
@@ -1894,7 +1894,7 @@ static int live_late_preempt(void *arg)
 		igt_spinner_end(&spin_hi);
 		igt_spinner_end(&spin_lo);
 
-		if (igt_live_test_end(&t)) {
+		if (igt_live_test_end(&t, gt)) {
 			err = -EIO;
 			goto err_spin_lo;
 		}
@@ -2057,7 +2057,7 @@ static int __cancel_active0(struct live_preempt_cancel *arg)
 
 	/* Preempt cancel of ELSP0 */
 	GEM_TRACE("%s(%s)\n", __func__, arg->engine->name);
-	if (igt_live_test_begin(&t, arg->engine->i915,
+	if (igt_live_test_begin(&t, arg->engine->gt,
 				__func__, arg->engine->name))
 		return -EIO;
 
@@ -2088,7 +2088,7 @@ static int __cancel_active0(struct live_preempt_cancel *arg)
 
 out:
 	i915_request_put(rq);
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, arg->engine->gt))
 		err = -EIO;
 	return err;
 }
@@ -2101,7 +2101,7 @@ static int __cancel_active1(struct live_preempt_cancel *arg)
 
 	/* Preempt cancel of ELSP1 */
 	GEM_TRACE("%s(%s)\n", __func__, arg->engine->name);
-	if (igt_live_test_begin(&t, arg->engine->i915,
+	if (igt_live_test_begin(&t, arg->engine->gt,
 				__func__, arg->engine->name))
 		return -EIO;
 
@@ -2159,7 +2159,7 @@ static int __cancel_active1(struct live_preempt_cancel *arg)
 out:
 	i915_request_put(rq[1]);
 	i915_request_put(rq[0]);
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, arg->engine->gt))
 		err = -EIO;
 	return err;
 }
@@ -2172,7 +2172,7 @@ static int __cancel_queued(struct live_preempt_cancel *arg)
 
 	/* Full ELSP and one in the wings */
 	GEM_TRACE("%s(%s)\n", __func__, arg->engine->name);
-	if (igt_live_test_begin(&t, arg->engine->i915,
+	if (igt_live_test_begin(&t, arg->engine->gt,
 				__func__, arg->engine->name))
 		return -EIO;
 
@@ -2254,7 +2254,7 @@ static int __cancel_queued(struct live_preempt_cancel *arg)
 	i915_request_put(rq[2]);
 	i915_request_put(rq[1]);
 	i915_request_put(rq[0]);
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, arg->engine->gt))
 		err = -EIO;
 	return err;
 }
@@ -2599,7 +2599,7 @@ static int live_chain_preempt(void *arg)
 		}
 		i915_request_put(rq);
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			goto err_wedged;
 		}
@@ -2673,7 +2673,7 @@ static int live_chain_preempt(void *arg)
 			i915_request_put(rq);
 		}
 
-		if (igt_live_test_end(&t)) {
+		if (igt_live_test_end(&t, gt)) {
 			err = -EIO;
 			goto err_wedged;
 		}
@@ -2799,7 +2799,7 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
 	int err = 0;
 	int n;
 
-	if (igt_live_test_begin(&t, engine->i915, __func__, engine->name))
+	if (igt_live_test_begin(&t, engine->gt, __func__, engine->name))
 		return -EIO;
 
 	for (n = 0; n < ARRAY_SIZE(ce); n++) {
@@ -2902,7 +2902,7 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
 		intel_context_unpin(ce[n]);
 		intel_context_put(ce[n]);
 	}
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, engine->gt))
 		err = -EIO;
 	return err;
 }
@@ -2978,7 +2978,7 @@ static int live_preempt_gang(void *arg)
 		if (!intel_engine_has_preemption(engine))
 			continue;
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name))
+		if (igt_live_test_begin(&t, gt, __func__, engine->name))
 			return -EIO;
 
 		do {
@@ -3030,7 +3030,7 @@ static int live_preempt_gang(void *arg)
 			rq = n;
 		}
 
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, gt))
 			err = -EIO;
 		if (err)
 			return err;
@@ -3284,7 +3284,7 @@ static int live_preempt_user(void *arg)
 		if (GRAPHICS_VER(gt->i915) == 8 && engine->class != RENDER_CLASS)
 			continue; /* we need per-context GPR */
 
-		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+		if (igt_live_test_begin(&t, gt, __func__, engine->name)) {
 			err = -EIO;
 			break;
 		}
@@ -3347,7 +3347,7 @@ static int live_preempt_user(void *arg)
 
 		/* Flush the semaphores on error */
 		smp_store_mb(result[0], -1);
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, gt))
 			err = -EIO;
 		if (err)
 			break;
@@ -3665,7 +3665,7 @@ static int live_preempt_smoke(void *arg)
 	i915_gem_object_flush_map(smoke.batch);
 	i915_gem_object_unpin_map(smoke.batch);
 
-	if (igt_live_test_begin(&t, smoke.gt->i915, __func__, "all")) {
+	if (igt_live_test_begin(&t, smoke.gt, __func__, "all")) {
 		err = -EIO;
 		goto err_batch;
 	}
@@ -3687,7 +3687,7 @@ static int live_preempt_smoke(void *arg)
 	}
 
 err_ctx:
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, smoke.gt))
 		err = -EIO;
 
 	for (n = 0; n < smoke.ncontext; n++) {
@@ -3737,7 +3737,7 @@ static int nop_virtual_engine(struct intel_gt *gt,
 		}
 	}
 
-	err = igt_live_test_begin(&t, gt->i915, __func__, ve[0]->engine->name);
+	err = igt_live_test_begin(&t, gt, __func__, ve[0]->engine->name);
 	if (err)
 		goto out;
 
@@ -3810,7 +3810,7 @@ static int nop_virtual_engine(struct intel_gt *gt,
 			break;
 	}
 
-	err = igt_live_test_end(&t);
+	err = igt_live_test_end(&t, gt);
 	if (err)
 		goto out;
 
@@ -3928,7 +3928,7 @@ static int mask_virtual_engine(struct intel_gt *gt,
 	if (err)
 		goto out_put;
 
-	err = igt_live_test_begin(&t, gt->i915, __func__, ve->engine->name);
+	err = igt_live_test_begin(&t, gt, __func__, ve->engine->name);
 	if (err)
 		goto out_unpin;
 
@@ -3973,7 +3973,7 @@ static int mask_virtual_engine(struct intel_gt *gt,
 		}
 	}
 
-	err = igt_live_test_end(&t);
+	err = igt_live_test_end(&t, gt);
 out:
 	if (igt_flush_test(gt->i915))
 		err = -EIO;
@@ -4213,7 +4213,7 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 	if (err)
 		goto out_put;
 
-	err = igt_live_test_begin(&t, gt->i915, __func__, ve->engine->name);
+	err = igt_live_test_begin(&t, gt, __func__, ve->engine->name);
 	if (err)
 		goto out_unpin;
 
@@ -4277,7 +4277,7 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 	i915_gem_object_unpin_map(scratch->obj);
 
 out_end:
-	if (igt_live_test_end(&t))
+	if (igt_live_test_end(&t, gt))
 		err = -EIO;
 	i915_request_put(last);
 out_unpin:
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index a9b79888c193..8f71c4bd66d9 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -582,7 +582,7 @@ static int live_nop_request(void *arg)
 		IGT_TIMEOUT(end_time);
 		ktime_t times[2] = {};
 
-		err = igt_live_test_begin(&t, i915, __func__, engine->name);
+		err = igt_live_test_begin(&t, engine->gt, __func__, engine->name);
 		if (err)
 			return err;
 
@@ -627,7 +627,7 @@ static int live_nop_request(void *arg)
 		}
 		intel_engine_pm_put(engine);
 
-		err = igt_live_test_end(&t);
+		err = igt_live_test_end(&t, engine->gt);
 		if (err)
 			return err;
 
@@ -929,7 +929,7 @@ static int live_cancel_request(void *arg)
 		if (!intel_engine_has_preemption(engine))
 			continue;
 
-		err = igt_live_test_begin(&t, i915, __func__, engine->name);
+		err = igt_live_test_begin(&t, engine->gt, __func__, engine->name);
 		if (err)
 			return err;
 
@@ -939,7 +939,7 @@ static int live_cancel_request(void *arg)
 		if (err == 0)
 			err = __cancel_completed(engine);
 
-		err2 = igt_live_test_end(&t);
+		err2 = igt_live_test_end(&t, engine->gt);
 		if (err)
 			return err;
 		if (err2)
@@ -1058,7 +1058,7 @@ static int live_empty_request(void *arg)
 		if (IS_ERR(batch))
 			return PTR_ERR(batch);
 
-		err = igt_live_test_begin(&t, i915, __func__, engine->name);
+		err = igt_live_test_begin(&t, engine->gt, __func__, engine->name);
 		if (err)
 			goto out_batch;
 
@@ -1097,7 +1097,7 @@ static int live_empty_request(void *arg)
 		i915_request_put(request);
 		intel_engine_pm_put(engine);
 
-		err = igt_live_test_end(&t);
+		err = igt_live_test_end(&t, engine->gt);
 		if (err)
 			goto out_batch;
 
@@ -1206,7 +1206,7 @@ static int live_all_engines(void *arg)
 	if (!request)
 		return -ENOMEM;
 
-	err = igt_live_test_begin(&t, i915, __func__, "");
+	err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
 	if (err)
 		goto out_free;
 
@@ -1292,7 +1292,7 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
-	err = igt_live_test_end(&t);
+	err = igt_live_test_end(&t, to_gt(i915));
 
 out_request:
 	idx = 0;
@@ -1336,7 +1336,7 @@ static int live_sequential_engines(void *arg)
 	if (!request)
 		return -ENOMEM;
 
-	err = igt_live_test_begin(&t, i915, __func__, "");
+	err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
 	if (err)
 		goto out_free;
 
@@ -1423,7 +1423,7 @@ static int live_sequential_engines(void *arg)
 		idx++;
 	}
 
-	err = igt_live_test_end(&t);
+	err = igt_live_test_end(&t, to_gt(i915));
 
 out_request:
 	idx = 0;
@@ -1635,7 +1635,7 @@ static int live_parallel_engines(void *arg)
 		unsigned int idx;
 
 		snprintf(name, sizeof(name), "%ps", *fn);
-		err = igt_live_test_begin(&t, i915, __func__, name);
+		err = igt_live_test_begin(&t, to_gt(i915), __func__, name);
 		if (err)
 			break;
 
@@ -1676,7 +1676,7 @@ static int live_parallel_engines(void *arg)
 			kthread_destroy_worker(threads[idx++].worker);
 		}
 
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, to_gt(i915)))
 			err = -EIO;
 	}
 
@@ -1783,7 +1783,7 @@ static int live_breadcrumbs_smoketest(void *arg)
 		}
 	}
 
-	ret = igt_live_test_begin(&live, i915, __func__, "");
+	ret = igt_live_test_begin(&live, to_gt(i915), __func__, "");
 	if (ret)
 		goto out_contexts;
 
@@ -1853,7 +1853,7 @@ static int live_breadcrumbs_smoketest(void *arg)
 	pr_info("Completed %lu waits for %lu fences across %d engines and %d cpus\n",
 		num_waits, num_fences, idx, ncpus);
 
-	ret = igt_live_test_end(&live) ?: ret;
+	ret = igt_live_test_end(&live, to_gt(i915)) ?: ret;
 out_contexts:
 	kfree(smoke[0].contexts);
 out_threads:
@@ -2877,7 +2877,7 @@ static int perf_series_engines(void *arg)
 		struct igt_live_test t;
 
 		snprintf(name, sizeof(name), "%ps", *fn);
-		err = igt_live_test_begin(&t, i915, __func__, name);
+		err = igt_live_test_begin(&t, to_gt(i915), __func__, name);
 		if (err)
 			break;
 
@@ -2898,7 +2898,7 @@ static int perf_series_engines(void *arg)
 		}
 
 		err = (*fn)(ps);
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, to_gt(i915)))
 			err = -EIO;
 
 		for (idx = 0; idx < nengines; idx++) {
@@ -3205,7 +3205,7 @@ static int perf_parallel_engines(void *arg)
 		unsigned int idx;
 
 		snprintf(name, sizeof(name), "%ps", *fn);
-		err = igt_live_test_begin(&t, i915, __func__, name);
+		err = igt_live_test_begin(&t, to_gt(i915), __func__, name);
 		if (err)
 			break;
 
@@ -3254,7 +3254,7 @@ static int perf_parallel_engines(void *arg)
 			idx++;
 		}
 
-		if (igt_live_test_end(&t))
+		if (igt_live_test_end(&t, to_gt(i915)))
 			err = -EIO;
 		if (err)
 			break;
diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.c b/drivers/gpu/drm/i915/selftests/igt_live_test.c
index 72b58b66692a..0e7a16962549 100644
--- a/drivers/gpu/drm/i915/selftests/igt_live_test.c
+++ b/drivers/gpu/drm/i915/selftests/igt_live_test.c
@@ -12,11 +12,11 @@
 #include "igt_live_test.h"
 
 int igt_live_test_begin(struct igt_live_test *t,
-			struct drm_i915_private *i915,
+			struct intel_gt *gt,
 			const char *func,
 			const char *name)
 {
-	struct intel_gt *gt = to_gt(i915);
+	struct drm_i915_private *i915 = gt->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	int err;
@@ -41,9 +41,9 @@ int igt_live_test_begin(struct igt_live_test *t,
 	return 0;
 }
 
-int igt_live_test_end(struct igt_live_test *t)
+int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt)
 {
-	struct drm_i915_private *i915 = t->i915;
+	struct drm_i915_private *i915 = gt->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
@@ -57,7 +57,7 @@ int igt_live_test_end(struct igt_live_test *t)
 		return -EIO;
 	}
 
-	for_each_engine(engine, to_gt(i915), id) {
+	for_each_engine(engine, gt, id) {
 		if (t->reset_engine[id] ==
 		    i915_reset_engine_count(&i915->gpu_error, engine))
 			continue;
diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.h b/drivers/gpu/drm/i915/selftests/igt_live_test.h
index 36ed42736c52..209b0548c603 100644
--- a/drivers/gpu/drm/i915/selftests/igt_live_test.h
+++ b/drivers/gpu/drm/i915/selftests/igt_live_test.h
@@ -27,9 +27,9 @@ struct igt_live_test {
  * e.g. if the GPU was reset.
  */
 int igt_live_test_begin(struct igt_live_test *t,
-			struct drm_i915_private *i915,
+			struct intel_gt *gt,
 			const char *func,
 			const char *name);
-int igt_live_test_end(struct igt_live_test *t);
+int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt);
 
 #endif /* IGT_LIVE_TEST_H */
-- 
2.25.1

