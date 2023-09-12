Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FDC79C156
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 02:52:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383F910E029;
	Tue, 12 Sep 2023 00:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5955D10E029
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 00:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694479954; x=1726015954;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TY53btc1jY4mx02N09mzX1fhldODTIjxDjn99xE8vz0=;
 b=aIvYM6lh81avKWuz25x317iNT73gxdjOLQqD0m3GBhX0rQdmi7SehSqf
 JsRC/QdxkB0t1nGZdIrm00G/lEmFIPzbiFkGiLqDNxU2DyxPAFF+ST6/o
 CNKOqB/poji7gsATy4Mza0jw4uv5d46Wjp/gPMvOX1Tv4IZcvoBh1ia8Z
 dOl0/pvsNj6bEEbW5QbWwBeMmc+EfDFYNI+TSN9vj3CJEFVsZIhC7eD70
 wAEU0DkVH3JHDLJNQyzR3PzIxaUR1WfGA306HyMAwN3peaek1mif2yaiN
 mNeqscSORoJyANqxopc7pmhSAYmVv4lY5mk1NpLghan3njKC3nU+NScM7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="380946287"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="380946287"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 17:52:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="809028798"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="809028798"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 17:52:33 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Mon, 11 Sep 2023 17:52:28 -0700
Message-Id: <20230912005228.1736471-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/guc: Run busyness worker only if gt is
 awake
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

The worker is canceled in the __gt_park path, but we still see it
running sometimes during suspend.

Only update stats if gt is awake. If not, intel_guc_busyness_park would
have already updated the stats. Note that we do not requeue the worker
if gt is not awake since intel_guc_busyness_unpark would do that at some
point.

If the gt was parked longer than time taken for GT timestamp to roll
over, we ignore those rollovers since we don't care about tracking the
exact GT time. We only care about roll overs when the gt is active and
running workloads.

v2 (Daniele)
- Edit commit message and code comment
- Use runtime pm in the worker
- Put runtime pm after enabling the worker
- Use Link tag and add Fixes tag

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7077
Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 ++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e250bedf90fb..d37b255559a0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1461,6 +1461,24 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	unsigned long index;
 	int srcu, ret;
 
+	/*
+	 * The worker is canceled in the __gt_park path, but we still see it
+	 * running sometimes during suspend.
+	 *
+	 * Only update stats if gt is awake. If not, intel_guc_busyness_park
+	 * would have already updated the stats. Note that we do not requeue the
+	 * worker in this case since intel_guc_busyness_unpark would do that at
+	 * some point.
+	 *
+	 * If the gt was parked longer than time taken for GT timestamp to roll
+	 * over, we ignore those rollovers since we don't care about tracking
+	 * the exact GT time. We only care about roll overs when the gt is
+	 * active and running workloads.
+	 */
+	wakeref = intel_runtime_pm_get_if_active(&gt->i915->runtime_pm);
+	if (!wakeref)
+		return;
+
 	/*
 	 * Synchronize with gt reset to make sure the worker does not
 	 * corrupt the engine/guc stats. NB: can't actually block waiting
@@ -1469,10 +1487,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	 */
 	ret = intel_gt_reset_trylock(gt, &srcu);
 	if (ret)
-		return;
+		goto err_trylock;
 
-	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
-		__update_guc_busyness_stats(guc);
+	__update_guc_busyness_stats(guc);
 
 	/* adjust context stats for overflow */
 	xa_for_each(&guc->context_lookup, index, ce)
@@ -1481,6 +1498,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	intel_gt_reset_unlock(gt, srcu);
 
 	guc_enable_busyness_worker(guc);
+
+err_trylock:
+	intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
 }
 
 static int guc_action_enable_usage_stats(struct intel_guc *guc)
-- 
2.38.1

