Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBB4583719
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 04:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C5310FA13;
	Thu, 28 Jul 2022 02:42:45 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF78E10EB2B;
 Thu, 28 Jul 2022 02:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658976148; x=1690512148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sUmrtSVmqja3EyXPTvjmzBtKrj3P0erg0cENYVHyKbA=;
 b=Snmgot6b0DBRGh/f1tFsJtic5z02uYinYEjfM7QU74WXvLjNPauNPVSj
 bSUJbKBXJ3F0L6o4nTEik2eS8JeyFk+o1i0LopdznshPTut8agSI6rg8q
 SXaZdMXRAGWpyj7j+OXQg1/nxaDM5xSV2oF0OBd7CXFk359kZxbI7rTzc
 iU+FV9V217qS8FHvdzpCl1Lauvuk+vYWGcJk4ZlrPIkk/aWjoqVB4qg/z
 0vGWtJk51rex+fsJtA3ge82o5lxFJnYuFyhXzehNCVhqSbINx0DQzZhba
 cSlgOpNOyjl2VWH6kKX0ojK5fUYPl6j4prsMeJrAiM2supk82elWPH9MP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271443541"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271443541"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 19:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="690096047"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jul 2022 19:42:26 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 27 Jul 2022 19:42:22 -0700
Message-Id: <20220728024225.2363663-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
References: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/guc: Add selftest for a hung GuC
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
Cc: DRI-Devel@Lists.FreeDesktop.Org,
 Rahul Kumar Singh <rahul.kumar.singh@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Rahul Kumar Singh <rahul.kumar.singh@intel.com>

Add a test to check that the hangcheck will recover from a submission
hang in the GuC.

Signed-off-by: Rahul Kumar Singh <rahul.kumar.singh@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   1 +
 .../drm/i915/gt/uc/selftest_guc_hangcheck.c   | 159 ++++++++++++++++++
 .../drm/i915/selftests/i915_live_selftests.h  |   1 +
 3 files changed, 161 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0b8c6450fa344..ff205c4125857 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -5177,4 +5177,5 @@ bool intel_guc_virtual_engine_has_heartbeat(const struct intel_engine_cs *ve)
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_guc.c"
 #include "selftest_guc_multi_lrc.c"
+#include "selftest_guc_hangcheck.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c
new file mode 100644
index 0000000000000..af913c4b09d37
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc_hangcheck.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright �� 2019 Intel Corporation
+ */
+
+#include "selftests/igt_spinner.h"
+#include "selftests/igt_reset.h"
+#include "selftests/intel_scheduler_helpers.h"
+#include "gt/intel_engine_heartbeat.h"
+#include "gem/selftests/mock_context.h"
+
+#define BEAT_INTERVAL	100
+
+static struct i915_request *nop_request(struct intel_engine_cs *engine)
+{
+	struct i915_request *rq;
+
+	rq = intel_engine_create_kernel_request(engine);
+	if (IS_ERR(rq))
+		return rq;
+
+	i915_request_get(rq);
+	i915_request_add(rq);
+
+	return rq;
+}
+
+static int intel_hang_guc(void *arg)
+{
+	struct intel_gt *gt = arg;
+	int ret = 0;
+	struct i915_gem_context *ctx;
+	struct intel_context *ce;
+	struct igt_spinner spin;
+	struct i915_request *rq;
+	intel_wakeref_t wakeref;
+	struct i915_gpu_error *global = &gt->i915->gpu_error;
+	struct intel_engine_cs *engine;
+	unsigned int reset_count;
+	u32 guc_status;
+	u32 old_beat;
+
+	ctx = kernel_context(gt->i915, NULL);
+	if (IS_ERR(ctx)) {
+		pr_err("Failed get kernel context: %ld\n", PTR_ERR(ctx));
+		return PTR_ERR(ctx);
+	}
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	ce = intel_context_create(gt->engine[BCS0]);
+	if (IS_ERR(ce)) {
+		ret = PTR_ERR(ce);
+		pr_err("Failed to create spinner request: %d\n", ret);
+		goto err;
+	}
+
+	engine = ce->engine;
+	reset_count = i915_reset_count(global);
+
+	old_beat = engine->props.heartbeat_interval_ms;
+	ret = intel_engine_set_heartbeat(engine, BEAT_INTERVAL);
+	if (ret) {
+		pr_err("Failed to boost heatbeat interval: %d\n", ret);
+		goto err;
+	}
+
+	ret = igt_spinner_init(&spin, engine->gt);
+	if (ret) {
+		pr_err("Failed to create spinner: %d\n", ret);
+		goto err;
+	}
+
+	rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+	intel_context_put(ce);
+	if (IS_ERR(rq)) {
+		ret = PTR_ERR(rq);
+		pr_err("Failed to create spinner request: %d\n", ret);
+		goto err_spin;
+	}
+
+	ret = request_add_spin(rq, &spin);
+	if (ret) {
+		i915_request_put(rq);
+		pr_err("Failed to add Spinner request: %d\n", ret);
+		goto err_spin;
+	}
+
+	ret = intel_reset_guc(gt);
+	if (ret) {
+		i915_request_put(rq);
+		pr_err("Failed to reset GuC, ret = %d\n", ret);
+		goto err_spin;
+	}
+
+	guc_status = intel_uncore_read(gt->uncore, GUC_STATUS);
+	if (!(guc_status & GS_MIA_IN_RESET)) {
+		i915_request_put(rq);
+		pr_err("GuC failed to reset: status = 0x%08X\n", guc_status);
+		ret = -EIO;
+		goto err_spin;
+	}
+
+	/* Wait for the heartbeat to cause a reset */
+	ret = intel_selftest_wait_for_rq(rq);
+	i915_request_put(rq);
+	if (ret) {
+		pr_err("Request failed to complete: %d\n", ret);
+		goto err_spin;
+	}
+
+	if (i915_reset_count(global) == reset_count) {
+		pr_err("Failed to record a GPU reset\n");
+		ret = -EINVAL;
+		goto err_spin;
+	}
+
+err_spin:
+	igt_spinner_end(&spin);
+	igt_spinner_fini(&spin);
+	intel_engine_set_heartbeat(engine, old_beat);
+
+	if (ret == 0) {
+		rq = nop_request(engine);
+		if (IS_ERR(rq)) {
+			ret = PTR_ERR(rq);
+			goto err;
+		}
+
+		ret = intel_selftest_wait_for_rq(rq);
+		i915_request_put(rq);
+		if (ret) {
+			pr_err("No-op failed to complete: %d\n", ret);
+			goto err;
+		}
+	}
+
+err:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+	kernel_context_close(ctx);
+
+	return ret;
+}
+
+int intel_guc_hang_check(struct drm_i915_private *i915)
+{
+	static const struct i915_subtest tests[] = {
+		SUBTEST(intel_hang_guc),
+	};
+	struct intel_gt *gt = to_gt(i915);
+
+	if (intel_gt_is_wedged(gt))
+		return 0;
+
+	if (!intel_uc_uses_guc_submission(&gt->uc))
+		return 0;
+
+	return intel_gt_live_subtests(tests, gt);
+}
diff --git a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
index bdd290f2bf3cd..aaf8a380e5c78 100644
--- a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
@@ -49,5 +49,6 @@ selftest(perf, i915_perf_live_selftests)
 selftest(slpc, intel_slpc_live_selftests)
 selftest(guc, intel_guc_live_selftests)
 selftest(guc_multi_lrc, intel_guc_multi_lrc_live_selftests)
+selftest(guc_hang, intel_guc_hang_check)
 /* Here be dragons: keep last to run last! */
 selftest(late_gt_pm, intel_gt_pm_late_selftests)
-- 
2.37.1

