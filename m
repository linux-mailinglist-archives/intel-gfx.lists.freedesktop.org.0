Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 850D9622A73
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:26:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19FE10E5AB;
	Wed,  9 Nov 2022 11:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9A410E5AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667993156; x=1699529156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LvctAsc5CpFWqWEX4CmjcN9Sa5LU/CmGwpptJbC71CU=;
 b=DDpx/kvrXmzrPg4KBSjLOq79PtZujLkHwMBpfMlXDiz5DoF869tozBxD
 k7bcbbjDJP31LlrcbJm+c9Ge36fyc58r5SMiqf3X4BNbT0S6J4NKzS4k/
 Ow5MTvC3dPAL7CHGmNs2fO6tvaLAh9iOzoI3QarXYW4P5ng1Omr3dePCo
 cohrUeqQweA4KzBjIGV/6CRNq/6r57Vdy7BUNs5MhkgcvgH4iWT906x5P
 LuL5jtjQjXv2JXLmcrV84Bjd5NwizopOd5izWJkPFftHay9dk+asORjCC
 PRoyi2dTYI4MbgYfUbV0gY1SJXouPdavE/sGgk34laRsh3hrL/DqpuXOE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="373099390"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="373099390"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:25:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725943976"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="725943976"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:25:54 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:55:41 +0530
Message-Id: <20221109112541.275021-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221109112541.275021-1-riana.tauro@intel.com>
References: <20221109112541.275021-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc/slpc: Add selftest for slpc
 tile-tile interaction
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

Run a workload on tiles simultaneously by requesting for RP0 frequency.
Pcode can however limit the frequency being granted due to throttling
reasons. This test checks if there is any throttling but does not fail
if RP0 is not granted due to throttle reasons

v2: Fix build error
v3: Use IS_ERR_OR_NULL to check worker
    Addressed cosmetic review comments (Tvrtko)
v4: do not skip test on media engines if gt type is GT_MEDIA.
    Use correct PERF_LIMIT_REASONS register for MTL (Vinay)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 70 +++++++++++++++++++++++--
 1 file changed, 66 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 82ec95a299f6..bd44ce73a504 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -13,6 +13,14 @@ enum test_type {
 	VARY_MAX,
 	MAX_GRANTED,
 	SLPC_POWER,
+	TILE_INTERACTION,
+};
+
+struct slpc_thread {
+	struct kthread_worker *worker;
+	struct kthread_work work;
+	struct intel_gt *gt;
+	int result;
 };
 
 static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
@@ -212,7 +220,8 @@ static int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
 	*max_act_freq =  intel_rps_read_actual_frequency(rps);
 	if (*max_act_freq != slpc->rp0_freq) {
 		/* Check if there was some throttling by pcode */
-		perf_limit_reasons = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
+		perf_limit_reasons = intel_uncore_read(gt->uncore,
+						       intel_gt_perf_limit_reasons_reg(gt));
 
 		/* If not, this is an error */
 		if (!(perf_limit_reasons & GT0_PERF_LIMIT_REASONS_MASK)) {
@@ -310,9 +319,10 @@ static int run_test(struct intel_gt *gt, int test_type)
 			break;
 
 		case MAX_GRANTED:
+		case TILE_INTERACTION:
 			/* Media engines have a different RP0 */
-			if (engine->class == VIDEO_DECODE_CLASS ||
-			    engine->class == VIDEO_ENHANCEMENT_CLASS) {
+			if (gt->type != GT_MEDIA && (engine->class == VIDEO_DECODE_CLASS ||
+						     engine->class == VIDEO_ENHANCEMENT_CLASS)) {
 				igt_spinner_end(&spin);
 				st_engine_heartbeat_enable(engine);
 				err = 0;
@@ -335,7 +345,8 @@ static int run_test(struct intel_gt *gt, int test_type)
 			if (max_act_freq <= slpc->min_freq) {
 				pr_err("Actual freq did not rise above min\n");
 				pr_err("Perf Limit Reasons: 0x%x\n",
-				       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
+				       intel_uncore_read(gt->uncore,
+							 intel_gt_perf_limit_reasons_reg(gt)));
 				err = -EINVAL;
 			}
 		}
@@ -426,6 +437,56 @@ static int live_slpc_power(void *arg)
 	return ret;
 }
 
+static void slpc_spinner_thread(struct kthread_work *work)
+{
+	struct slpc_thread *thread = container_of(work, typeof(*thread), work);
+
+	thread->result = run_test(thread->gt, TILE_INTERACTION);
+}
+
+static int live_slpc_tile_interaction(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_gt *gt;
+	struct slpc_thread *threads;
+	int i = 0, ret = 0;
+
+	threads = kcalloc(I915_MAX_GT, sizeof(*threads), GFP_KERNEL);
+	if (!threads)
+		return -ENOMEM;
+
+	for_each_gt(gt, i915, i) {
+		threads[i].worker = kthread_create_worker(0, "igt/slpc_parallel:%d", gt->info.id);
+
+		if (IS_ERR(threads[i].worker)) {
+			ret = PTR_ERR(threads[i].worker);
+			break;
+		}
+
+		threads[i].gt = gt;
+		kthread_init_work(&threads[i].work, slpc_spinner_thread);
+		kthread_queue_work(threads[i].worker, &threads[i].work);
+	}
+
+	for_each_gt(gt, i915, i) {
+		int status;
+
+		if (IS_ERR_OR_NULL(threads[i].worker))
+			continue;
+
+		kthread_flush_work(&threads[i].work);
+		status = READ_ONCE(threads[i].result);
+		if (status && !ret) {
+			pr_err("%s GT %d failed ", __func__, gt->info.id);
+			ret = status;
+		}
+		kthread_destroy_worker(threads[i].worker);
+	}
+
+	kfree(threads);
+	return ret;
+}
+
 int intel_slpc_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
@@ -433,6 +494,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_slpc_vary_min),
 		SUBTEST(live_slpc_max_granted),
 		SUBTEST(live_slpc_power),
+		SUBTEST(live_slpc_tile_interaction),
 	};
 
 	struct intel_gt *gt;
-- 
2.25.1

