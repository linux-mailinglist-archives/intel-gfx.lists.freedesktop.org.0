Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE90707263
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 21:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFBF10E470;
	Wed, 17 May 2023 19:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2479B10E473
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 19:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684352475; x=1715888475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JxKh5QweJolljg0pIVTyIpPyyyaJJNCQJnxwTEutC2I=;
 b=LC14neyoZGQszC6H19GvD7tsTEzBwp7DoLul15OQgEj4lGytpv746t2f
 Dj/BTe9f1CS9vCE9RRrs/oAaxNYMbQBXQ5RUM5v5hBs3PdFlp3sdhCIpC
 zgEwW3Qqe9tf4lYZkYo2HSY2n3DYwZZUK80nLMLGlahtst3oqr2PhwBNN
 /jk1lrBII2E7k3MElxn7rlYp6UjIkbpYTZs1BzB5alcdzLLV1IpxHPv1E
 q6MhLmCJE2YIIalp7KZ476AZvi+BGWtXr2Y5MyhIMTcpFUGH99NiI6YdF
 dyGBf/BU15kcBiiYfetX0JAbR0SKPj5dVA9+px3epOZeLz8k4WqvwB9wq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="331474398"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="331474398"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="679402288"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="679402288"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:41:05 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 21:40:40 +0200
Message-Id: <20230517194040.3857137-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517194040.3857137-1-andrzej.hajda@intel.com>
References: <20230517194040.3857137-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI DO_NOT_MERGE 3/3] drm/i915/selftests: add
 forcewake_with_spinners tests
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The test examines if running spinners do not interfere with forcewake.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/selftests/intel_uncore.c | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index e4281508d5808b..0ce8a5c5ee0064 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -22,7 +22,10 @@
  *
  */
 
+#include <i915_gpu_error.h>
+#include <gt/intel_gpu_commands.h>
 #include "../i915_selftest.h"
+#include <selftests/igt_spinner.h>
 
 static int intel_fw_table_check(const struct intel_forcewake_range *ranges,
 				unsigned int num_ranges,
@@ -342,12 +345,94 @@ static int live_fw_table(void *arg)
 				    GRAPHICS_VER(gt->i915) >= 9);
 }
 
+static int live_forcewake_with_spinners(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_uncore_forcewake_domain *domain;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
+	struct igt_spinner spin;
+	unsigned int tmp;
+	int err;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	err = igt_spinner_init(&spin, gt);
+	if (err)
+		goto err_rpm;
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+		struct i915_request *rq;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		pr_info("%s: Spinning %s\n", __func__, engine->name);
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto err_spin;
+		}
+		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_spin;
+		}
+		i915_request_add(rq);
+	}
+
+	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+	for_each_fw_domain(domain, gt->uncore, tmp) {
+		if (readl(domain->reg_ack) & FORCEWAKE_KERNEL)
+			continue;
+		pr_err("%s: not acked\n", intel_uncore_forcewake_domain_to_str(domain->id));
+		err = -EINVAL;
+	}
+	if (err) {
+#if defined(CONFIG_DRM_I915_DEBUG_WAKEREF) // Ugly test of presence of intel_klog_error_capture
+		intel_klog_error_capture(gt, (intel_engine_mask_t) ~0U);
+#else
+		pr_err("Time to catch GuC logs.\n");
+		msleep(4000);
+#endif
+	}
+	msleep(3);
+	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
+
+err_spin:
+	igt_spinner_fini(&spin);
+err_rpm:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+
+	return err;
+}
+
+static int live_forcewake_with_spinners_25s(void *arg)
+{
+	ktime_t t = ktime_get();
+	int err = 0;
+
+	while (ktime_ms_delta(ktime_get(), t) < 25000) {
+		err = live_forcewake_with_spinners(arg);
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
 int intel_uncore_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_fw_table),
 		SUBTEST(live_forcewake_ops),
 		SUBTEST(live_forcewake_domains),
+		SUBTEST(live_forcewake_with_spinners),
+		SUBTEST(live_forcewake_with_spinners_25s),
 	};
 
 	return intel_gt_live_subtests(tests, to_gt(i915));
-- 
2.34.1

