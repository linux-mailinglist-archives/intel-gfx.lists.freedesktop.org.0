Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD4612F9C
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 06:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6B510E114;
	Mon, 31 Oct 2022 05:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACFE510E113
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667193273; x=1698729273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=owmkZvTTrzQWWX1qs8vT7Ffg7J70J8fWpOfqJdv5Gn8=;
 b=oGxQelhZah/xl93b58s3dbi/+/wXReHjmXDSNnMDNFMr+Tz7y738r4Uk
 SBc9jeNKj+YIZBrQSuTJJDbJqCNOvCIY3a6uZJT/8hTS7cmTH21qJ9L8j
 jr6XTVDBfxRLiAjN2igcmD8YKiSe0h+4javg9RSkvSAyeqt4l7SLnXcGA
 J+Z9qejT+yFdV02CfdDRpxn3XId7cYz2eyzquJOa9PS4fF21JmH3exEyX
 OQFjhS1GIb6/x2ygbR0yKrliwrVI0KXEGek1ERY01bZCkIv9tyfzw4LoB
 jiOuy3SRtvOU/4mkG9voJD6fy31x41WoucDH0hRBCPSetSGZ67Pxespdf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="395134528"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="395134528"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 22:14:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="878605099"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="878605099"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 22:14:31 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 10:44:11 +0530
Message-Id: <20221031051411.3739031-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031051411.3739031-1-riana.tauro@intel.com>
References: <20221031051411.3739031-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/1] drm/i915/guc/slpc: Add selftest for slpc
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
v3: Use IS_ERR_OR_NULL to check worker
    Addressed cosmetic review comments (Tvrtko)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 60 +++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 82ec95a299f6..427e714b432b 100644
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
@@ -426,6 +435,56 @@ static int live_slpc_power(void *arg)
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
@@ -433,6 +492,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_slpc_vary_min),
 		SUBTEST(live_slpc_max_granted),
 		SUBTEST(live_slpc_power),
+		SUBTEST(live_slpc_tile_interaction),
 	};
 
 	struct intel_gt *gt;
-- 
2.25.1

