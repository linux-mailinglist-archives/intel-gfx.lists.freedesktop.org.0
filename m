Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA6F610DAF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E4010E7DA;
	Fri, 28 Oct 2022 09:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D5710E166
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950623; x=1698486623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/C4ESAEPmv67P1wUT/NDaVUuiNjY4Sw45tbLgTONyq4=;
 b=ZkZD+X/9O5FhC4YHjrN2h6BiXhJiYtvFZU43BTGsBMv6vnKI/zlvssgt
 LbJtIaK/RH1LIf8TkIyjC+GXtnkWYxefgS0AqhGPgq2vmW6wQIr9FLupj
 ci+ybLRGESwtYamM1pzBn6pw1Be3D+/fYcScKXNZoL1AINn35/qfXabk1
 HAHgEArF0OGbWNqzlMHLKX0PLABNDS4ciVzTJZibeCC+HSzu2tc6/rCXm
 AmM7DQYJ7NwpksBtrigK4b1MHr+qLTPZM0KKfVlkxOPYzOxx0jmVvRVrX
 fu92gni7rMBA5CVKvd6w9k5rVDXAMJrHktsweoZcToQwX25GuzkRtoV1H w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295867281"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="295867281"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:50:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961963546"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="961963546"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:50:22 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:20:58 +0530
Message-Id: <20221028095058.3624647-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028095058.3624647-1-riana.tauro@intel.com>
References: <20221028095058.3624647-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc/slpc: Add selftest for slpc
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
reasons. This test fails if there is any throttling

v2: Fix build error

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 63 +++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 82ec95a299f6..d19486772f5a 100644
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
@@ -310,6 +318,7 @@ static int run_test(struct intel_gt *gt, int test_type)
 			break;
 
 		case MAX_GRANTED:
+		case TILE_INTERACTION:
 			/* Media engines have a different RP0 */
 			if (engine->class == VIDEO_DECODE_CLASS ||
 			    engine->class == VIDEO_ENHANCEMENT_CLASS) {
@@ -325,6 +334,7 @@ static int run_test(struct intel_gt *gt, int test_type)
 		case SLPC_POWER:
 			err = slpc_power(gt, engine);
 			break;
+
 		}
 
 		if (test_type != SLPC_POWER) {
@@ -426,6 +436,58 @@ static int live_slpc_power(void *arg)
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
+		pr_info("Running on GT: %d\n", gt->info.id);
+		threads[i].worker = kthread_create_worker(0, "igt/slpc_parallel:%d", gt->info.id);
+
+		if (IS_ERR(threads[i].worker)) {
+			ret = PTR_ERR(threads[i].worker);
+			break;
+		}
+
+		threads[i].gt = gt;
+		threads[i].result = 0;
+		kthread_init_work(&threads[i].work, slpc_spinner_thread);
+		kthread_queue_work(threads[i].worker, &threads[i].work);
+	}
+
+	for_each_gt(gt, i915, i) {
+		int status;
+
+		if (!threads[i].worker)
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
@@ -433,6 +495,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_slpc_vary_min),
 		SUBTEST(live_slpc_max_granted),
 		SUBTEST(live_slpc_power),
+		SUBTEST(live_slpc_tile_interaction),
 	};
 
 	struct intel_gt *gt;
-- 
2.25.1

