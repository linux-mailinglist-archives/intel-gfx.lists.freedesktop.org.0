Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1487ADF81
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 21:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A81A10E049;
	Mon, 25 Sep 2023 19:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D625A10E2CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 19:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695669702; x=1727205702;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PBDA7N9TPQ02V7LUVEGuTUjXwHccjJ0tFqXKXKJlEy8=;
 b=CEdtnokwypKPl5OmK5YRpvn685aM0Zi3GkF6ttNShl9uJiig6XEERKDx
 EFd/w/Shb4qpicghZMast8tj56JKVtKlMnPWv8CvcBwOK3q+dFK7vEKoc
 fKvlOyCvZvQQF2yiyjmQTJWG/iwrGOGSK7ZsdQ6uYTBubRjTgkdluilkW
 mijwSVcj20NKwlQQuZGN3EKcGGmWY/LPv0zkIQz7HV2Own+8XSQT1wXiW
 Sg3A3uPMatE/Ixp9585tm/RKsBS0E2XRPJnWMQBbT3sIJzRqGhBaPpunK
 TD97mQzQe7Mc6uSCOEU5CkMfCCIEETNR5qujEhCJBg6f4V//qZBNuiJZe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="412274380"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="412274380"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 12:21:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="742022851"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="742022851"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 12:21:22 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Sep 2023 12:21:17 -0700
Message-Id: <20230925192117.2497058-1-umesh.nerlige.ramappa@intel.com>
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
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
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

