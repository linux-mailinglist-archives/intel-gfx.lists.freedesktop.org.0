Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B39AA187C0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 23:26:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1B510E23B;
	Tue, 21 Jan 2025 22:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I5DhiDWD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1887F10E23B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 22:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737498376; x=1769034376;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/mhkSCRLr7at8O5plmoExMPIBOY9Bv6Ha4sraSCCOw0=;
 b=I5DhiDWD3JqIdIRXWJsUX9+D9FUoVsPGrbrvr3uKmg39FLusKw9bCdFM
 HlVuwk/5Qy6NdhGFnX0fsMj6dOKqKkbmPp76UxJYziIKIb31sNpv04oTU
 IPpm8I4UHV8amJOur+Un788FJ65soOAv3rO/u9DiMSLHYHPqBOpFmbKsZ
 MFxxECwT4EXNqoFA8xE+e/PJ6Po53o/ifBqkZ1+IvF5MiBMx1yMo+l848
 KpuiCg6hhQQ1glkZKMBqlRTBgL4ZMZojwdHrmnbEWx3og67RpAQNHxmW+
 AMWfr6qKAcv66fRTOlvN9d6VSPahpe0tFUu73BqrIMcbeob/nXiWJ3ykZ w==;
X-CSE-ConnectionGUID: zyD2x/ufRTO6lPJRS6m8Ag==
X-CSE-MsgGUID: fpe5CrIET+WifzsJqchs6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="41863800"
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="41863800"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 14:26:15 -0800
X-CSE-ConnectionGUID: hF/ylzh+T8mqwEgchftiYg==
X-CSE-MsgGUID: fpxp4m0USKWJbQTQ5DQhJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="111933118"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 14:26:15 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: John.C.Harrison@Intel.com
Subject: [PATCH] i915/pmu: Fix zero delta busyness issue
Date: Tue, 21 Jan 2025 14:25:57 -0800
Message-Id: <20250121222557.721355-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

When running igt@gem_exec_balancer@individual for multiple iterations,
it is seen that the delta busyness returned by PMU is 0. The issue stems
from a combination of 2 implementation specific details:

1) gt_park is throttling __update_guc_busyness_stats() so that it does
not hog PCI bandwidth for some use cases. (Ref: 59bcdb564b3ba)

2) busyness implementation always returns monotonically increasing
counters. (Ref: cf907f6d29421)

If an application queried an engine while it was active,
engine->stats.guc.running is set to true. Following that, if all PM
wakeref's are released, then gt is parked. At this time the throttling
of __update_guc_busyness_stats() may result in a missed update to the
running state of the engine (due to (1) above). This means subsequent
calls to guc_engine_busyness() will think that the engine is still
running and they will keep updating the cached counter (stats->total).
This results in an inflated cached counter.

Later when the application runs a workload and queries for busyness, we
return the cached value since it is larger than the actual value (due to
(2) above)

All subsequent queries will return the same large (inflated) value, so
the application sees a delta busyness of zero.

In order to fix the issue,
- reset the running state of engines in busyness_park outside of the
  throttling code.
- when busyness is queried and PM wakeref is not active, do not
  calculate active engine time since we do not expect engines to be
  active without a wakeref.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 12f1ba7ca9c1..b7a831e1fc85 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1372,7 +1372,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	}
 
 	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
-	if (stats->running) {
+	if (wakeref && stats->running) {
 		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
 
 		total += intel_gt_clock_interval_to_ns(gt, clk);
@@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
+static void __update_guc_busyness_running_state(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	unsigned long flags;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	for_each_engine(engine, gt, id)
+		engine->stats.guc.running = false;
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
 static void __update_guc_busyness_stats(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -1619,6 +1632,9 @@ void intel_guc_busyness_park(struct intel_gt *gt)
 	if (!guc_submission_initialized(guc))
 		return;
 
+	/* Assume no engines are running and set running state to false */
+	__update_guc_busyness_running_state(guc);
+
 	/*
 	 * There is a race with suspend flow where the worker runs after suspend
 	 * and causes an unclaimed register access warning. Cancel the worker
-- 
2.34.1

