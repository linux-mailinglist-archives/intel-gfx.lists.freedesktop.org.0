Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D167A12EF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 03:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9038B10E2BB;
	Fri, 15 Sep 2023 01:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62A110E2BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 01:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694741342; x=1726277342;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2wfuUo9tk9R580t3Wrle2BHRisSd4A/9XdzvMGBp4Do=;
 b=bNOc/NrCdANRRisk+oL76WsEz0y32aNNfXmC9jukxkAqvUezkYNeoINU
 6xBTCFciLAVIH9OBo0tPWJTOcHDQFgRO8C/KfspwhjCCowJWiT1V1lP0D
 Brj8SxcAikbCFzu++KIMXBijxRjdBlcSYAqT9iZv3oEgivhzLmImwP2+s
 IPsjNlCdGCPL4JcQPp9vkdX4HlpYMH+HcSsNA26ChDnKrDWw4INwWYtBg
 auO/o/qnmNEx1MWEkDOq9g7sOWRuYARIiBr220oiSt60zXLhf4B7pXjNd
 3yJAk2I4jfopZpak1kg5tmOQHU1V8W+pFt9eLc7IQb8AEzsAYF3nFwveP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="358540907"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="358540907"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 18:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="868491235"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="868491235"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 18:29:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	daniele.ceraolospurio@intel.com
Date: Thu, 14 Sep 2023 18:28:57 -0700
Message-Id: <20230915012857.2159217-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/guc: Get runtime pm in busyness worker
 only if already active
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

Ideally the busyness worker should take a gt pm wakeref because the
worker only needs to be active while gt is awake. However, the gt_park
path cancels the worker synchronously and this complicates the flow if
the worker is also running at the same time. The cancel waits for the
worker and when the worker releases the wakeref, that would call gt_park
and would lead to a deadlock.

The resolution is to take the global pm wakeref if runtime pm is already
active. If not, we don't need to update the busyness stats as the stats
would already be updated when the gt was parked.

Note:
- We do not requeue the worker if we cannot take a reference to runtime
  pm since intel_guc_busyness_unpark would requeue the worker in the
  resume path.

- If the gt was parked longer than time taken for GT timestamp to roll
  over, we ignore those rollovers since we don't care about tracking the
  exact GT time. We only care about roll overs when the gt is active and
  running workloads.

- There is a window of time between gt_park and runtime suspend, where
  the worker may run. This is acceptable since the worker will not find
  any new data to update busyness.

v2: (Daniele)
- Edit commit message and code comment
- Use runtime pm in the worker
- Put runtime pm after enabling the worker
- Use Link tag and add Fixes tag

v3: (Daniele)
- Reword commit and comments and add details

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7077
Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index cabdc645fcdd..ae3495a9c814 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1432,6 +1432,36 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	unsigned long index;
 	int srcu, ret;
 
+	/*
+	 * Ideally the busyness worker should take a gt pm wakeref because the
+	 * worker only needs to be active while gt is awake. However, the
+	 * gt_park path cancels the worker synchronously and this complicates
+	 * the flow if the worker is also running at the same time. The cancel
+	 * waits for the worker and when the worker releases the wakeref, that
+	 * would call gt_park and would lead to a deadlock.
+	 *
+	 * The resolution is to take the global pm wakeref if runtime pm is
+	 * already active. If not, we don't need to update the busyness stats as
+	 * the stats would already be updated when the gt was parked.
+	 *
+	 * Note:
+	 * - We do not requeue the worker if we cannot take a reference to runtime
+	 *   pm since intel_guc_busyness_unpark would requeue the worker in the
+	 *   resume path.
+	 *
+	 * - If the gt was parked longer than time taken for GT timestamp to roll
+	 *   over, we ignore those rollovers since we don't care about tracking
+	 *   the exact GT time. We only care about roll overs when the gt is
+	 *   active and running workloads.
+	 *
+	 * - There is a window of time between gt_park and runtime suspend,
+	 *   where the worker may run. This is acceptable since the worker will
+	 *   not find any new data to update busyness.
+	 */
+	wakeref = intel_runtime_pm_get_if_active(&gt->i915->runtime_pm);
+	if (!wakeref)
+		return;
+
 	/*
 	 * Synchronize with gt reset to make sure the worker does not
 	 * corrupt the engine/guc stats. NB: can't actually block waiting
@@ -1440,10 +1470,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
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
@@ -1452,6 +1481,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	intel_gt_reset_unlock(gt, srcu);
 
 	guc_enable_busyness_worker(guc);
+
+err_trylock:
+	intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
 }
 
 static int guc_action_enable_usage_stats(struct intel_guc *guc)
-- 
2.38.1

