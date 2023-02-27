Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6ED6A3A3C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6E610E126;
	Mon, 27 Feb 2023 04:56:53 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1C810E126
 for <Intel-GFX@lists.freedesktop.org>; Mon, 27 Feb 2023 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677473812; x=1709009812;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PQ+BLKDHWqy44UAIUg7KPoq+pRKCsay9WUGW75wDjV0=;
 b=MdiiyP6L4ECFjG581FhlvtNgq3FWr0ak3dS1sMspd6rKJtcTQz1QyjzX
 fwOkI/oiRPhNTmqXjOqjO9M459icLRFfSMNrNYeTEyMZvPbLda9dC/xo+
 5iGAxxaaF1zWi/z0Qppzgpfmp0fRPfzgePH+t+aCfWGE5q7bo04Rjwrz/
 DkC+CpJLzUD957P47Yr1DIpG6TADPa2sPW3O5yuCmt32G2cQ6+fGlVR1s
 mhmsThzcYsa4hezUct7hOAIcW52fXGlb2wJexKGq+HvYDVUwX2dFaoLZ/
 slp+GvMbU98c6jWMVvtLmc/C0fOOs1n+tVkLExEKDnkDoRZ/vrH4ZIczz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="322021819"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="322021819"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:56:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="762514670"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="762514670"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2023 20:56:49 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 27 Feb 2023 10:30:21 +0530
Message-Id: <20230227050021.139929-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] drm/i915/selftests: Fix live_requests for all engines
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

After the abandonment of i915->kernel_context and since we have started to
create per-gt engine->kernel_context, these tests need to be updated to
instantiate the batch buffer VMA in the correct PPGTT for the context used
to execute each spinner.

v2(Tejas):
  - Clean commit message - Matt
  - Add BUG_ON to match vm

Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 133 ++++++++++--------
 1 file changed, 77 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 6fe22b096bdd..838f1ef43766 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -957,18 +957,18 @@ static int live_cancel_request(void *arg)
 	return 0;
 }
 
-static struct i915_vma *empty_batch(struct drm_i915_private *i915)
+static struct i915_vma *empty_batch(struct intel_gt *gt)
 {
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 *cmd;
 	int err;
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
+	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto err;
@@ -979,15 +979,15 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 	__i915_gem_object_flush_map(obj, 0, 64);
 	i915_gem_object_unpin_map(obj);
 
-	intel_gt_chipset_flush(to_gt(i915));
+	intel_gt_chipset_flush(gt);
 
-	vma = i915_vma_instance(obj, &to_gt(i915)->ggtt->vm, NULL);
+	vma = i915_vma_instance(obj, gt->vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto err;
 	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_GLOBAL);
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
 		goto err;
 
@@ -1005,6 +1005,14 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 	return ERR_PTR(err);
 }
 
+static int emit_bb_start(struct i915_request *rq, struct i915_vma *batch)
+{
+	return rq->engine->emit_bb_start(rq,
+					 i915_vma_offset(batch),
+					 i915_vma_size(batch),
+					 0);
+}
+
 static struct i915_request *
 empty_request(struct intel_engine_cs *engine,
 	      struct i915_vma *batch)
@@ -1016,10 +1024,7 @@ empty_request(struct intel_engine_cs *engine,
 	if (IS_ERR(request))
 		return request;
 
-	err = engine->emit_bb_start(request,
-				    i915_vma_offset(batch),
-				    i915_vma_size(batch),
-				    I915_DISPATCH_SECURE);
+	err = emit_bb_start(request, batch);
 	if (err)
 		goto out_request;
 
@@ -1034,8 +1039,7 @@ static int live_empty_request(void *arg)
 	struct drm_i915_private *i915 = arg;
 	struct intel_engine_cs *engine;
 	struct igt_live_test t;
-	struct i915_vma *batch;
-	int err = 0;
+	int err;
 
 	/*
 	 * Submit various sized batches of empty requests, to each engine
@@ -1043,16 +1047,17 @@ static int live_empty_request(void *arg)
 	 * the overhead of submitting requests to the hardware.
 	 */
 
-	batch = empty_batch(i915);
-	if (IS_ERR(batch))
-		return PTR_ERR(batch);
-
 	for_each_uabi_engine(engine, i915) {
 		IGT_TIMEOUT(end_time);
 		struct i915_request *request;
+		struct i915_vma *batch;
 		unsigned long n, prime;
 		ktime_t times[2] = {};
 
+		batch = empty_batch(engine->gt);
+		if (IS_ERR(batch))
+			return PTR_ERR(batch);
+
 		err = igt_live_test_begin(&t, i915, __func__, engine->name);
 		if (err)
 			goto out_batch;
@@ -1100,27 +1105,30 @@ static int live_empty_request(void *arg)
 			engine->name,
 			ktime_to_ns(times[0]),
 			prime, div64_u64(ktime_to_ns(times[1]), prime));
+out_batch:
+		i915_vma_unpin(batch);
+		i915_vma_put(batch);
+		if (err)
+			break;
 	}
 
-out_batch:
-	i915_vma_unpin(batch);
-	i915_vma_put(batch);
 	return err;
 }
 
-static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
+static struct i915_vma *recursive_batch(struct intel_gt *gt)
 {
+	struct drm_i915_private *i915 = gt->i915;
 	struct drm_i915_gem_object *obj;
 	const int ver = GRAPHICS_VER(i915);
 	struct i915_vma *vma;
 	u32 *cmd;
 	int err;
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	vma = i915_vma_instance(obj, to_gt(i915)->vm, NULL);
+	vma = i915_vma_instance(obj, gt->vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto err;
@@ -1152,7 +1160,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 	__i915_gem_object_flush_map(obj, 0, 64);
 	i915_gem_object_unpin_map(obj);
 
-	intel_gt_chipset_flush(to_gt(i915));
+	intel_gt_chipset_flush(gt);
 
 	return vma;
 
@@ -1186,7 +1194,6 @@ static int live_all_engines(void *arg)
 	struct intel_engine_cs *engine;
 	struct i915_request **request;
 	struct igt_live_test t;
-	struct i915_vma *batch;
 	unsigned int idx;
 	int err;
 
@@ -1204,42 +1211,44 @@ static int live_all_engines(void *arg)
 	if (err)
 		goto out_free;
 
-	batch = recursive_batch(i915);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		pr_err("%s: Unable to create batch, err=%d\n", __func__, err);
-		goto out_free;
-	}
-
-	i915_vma_lock(batch);
-
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
+		struct i915_vma *batch;
+
+		batch = recursive_batch(engine->gt);
+		if (IS_ERR(batch)) {
+			err = PTR_ERR(batch);
+			pr_err("%s: Unable to create batch, err=%d\n",
+					__func__, err);
+			goto out_free;
+		}
+
+		i915_vma_lock(batch);
 		request[idx] = intel_engine_create_kernel_request(engine);
 		if (IS_ERR(request[idx])) {
 			err = PTR_ERR(request[idx]);
 			pr_err("%s: Request allocation failed with err=%d\n",
 			       __func__, err);
-			goto out_request;
+			goto out_unlock;
 		}
+		GEM_BUG_ON(request[idx]->context->vm != batch->vm);
 
 		err = i915_vma_move_to_active(batch, request[idx], 0);
 		GEM_BUG_ON(err);
 
-		err = engine->emit_bb_start(request[idx],
-					    i915_vma_offset(batch),
-					    i915_vma_size(batch),
-					    0);
+		err = emit_bb_start(request[idx], batch);
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
 		i915_request_get(request[idx]);
 		i915_request_add(request[idx]);
 		idx++;
+out_unlock:
+		i915_vma_unlock(batch);
+		if (err)
+			goto out_request;
 	}
 
-	i915_vma_unlock(batch);
-
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		if (i915_request_completed(request[idx])) {
@@ -1251,17 +1260,23 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
-	err = recursive_batch_resolve(batch);
-	if (err) {
-		pr_err("%s: failed to resolve batch, err=%d\n", __func__, err);
-		goto out_request;
+	idx = 0;
+	for_each_uabi_engine(engine, i915) {
+		err = recursive_batch_resolve(request[idx]->batch);
+		if (err) {
+			pr_err("%s: failed to resolve batch, err=%d\n",
+					__func__, err);
+			goto out_request;
+		}
+		idx++;
 	}
 
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
+		struct i915_request *rq = request[idx];
 		long timeout;
 
-		timeout = i915_request_wait(request[idx], 0,
+		timeout = i915_request_wait(rq, 0,
 					    MAX_SCHEDULE_TIMEOUT);
 		if (timeout < 0) {
 			err = timeout;
@@ -1270,8 +1285,10 @@ static int live_all_engines(void *arg)
 			goto out_request;
 		}
 
-		GEM_BUG_ON(!i915_request_completed(request[idx]));
-		i915_request_put(request[idx]);
+		GEM_BUG_ON(!i915_request_completed(rq));
+		i915_vma_unpin(rq->batch);
+		i915_vma_put(rq->batch);
+		i915_request_put(rq);
 		request[idx] = NULL;
 		idx++;
 	}
@@ -1281,12 +1298,18 @@ static int live_all_engines(void *arg)
 out_request:
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
-		if (request[idx])
-			i915_request_put(request[idx]);
+		struct i915_request *rq = request[idx];
+
+		if (!rq)
+			continue;
+
+		if (rq->batch) {
+			i915_vma_unpin(rq->batch);
+			i915_vma_put(rq->batch);
+		}
+		i915_request_put(rq);
 		idx++;
 	}
-	i915_vma_unpin(batch);
-	i915_vma_put(batch);
 out_free:
 	kfree(request);
 	return err;
@@ -1322,7 +1345,7 @@ static int live_sequential_engines(void *arg)
 	for_each_uabi_engine(engine, i915) {
 		struct i915_vma *batch;
 
-		batch = recursive_batch(i915);
+		batch = recursive_batch(engine->gt);
 		if (IS_ERR(batch)) {
 			err = PTR_ERR(batch);
 			pr_err("%s: Unable to create batch for %s, err=%d\n",
@@ -1338,6 +1361,7 @@ static int live_sequential_engines(void *arg)
 			       __func__, engine->name, err);
 			goto out_unlock;
 		}
+		GEM_BUG_ON(request[idx]->context->vm != batch->vm);
 
 		if (prev) {
 			err = i915_request_await_dma_fence(request[idx],
@@ -1353,10 +1377,7 @@ static int live_sequential_engines(void *arg)
 		err = i915_vma_move_to_active(batch, request[idx], 0);
 		GEM_BUG_ON(err);
 
-		err = engine->emit_bb_start(request[idx],
-					    i915_vma_offset(batch),
-					    i915_vma_size(batch),
-					    0);
+		err = emit_bb_start(request[idx], batch);
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-- 
2.25.1

