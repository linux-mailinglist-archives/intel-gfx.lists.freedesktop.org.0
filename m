Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4514279966B
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 07:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899B610E253;
	Sat,  9 Sep 2023 05:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDA810E253
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Sep 2023 05:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694236608; x=1725772608;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WV3gRs0g2VFl89k0MQbizjrp50CweURZJ0CLbkBE0SI=;
 b=HZwcPsFw8wGTaPOry/Drj+pth7njgNfrCB40rmXeHSnjiQAlpRbXGPjV
 bJg0dF4Wp9VcoXcT3K6YU5PqwfsEbv75tdqaMb7N+FL6i14xBCRmfC+Dw
 5OFQGcZEnGHFXxkg9xdhSekMyp8yRSLZtEqRHoav6iL1bBSz7Xawjsst9
 eZUMH/ULvNsTsQqp/879KVpV9PEjUIgRTgGCIYtg8HGtTRVcMMI8RaCFV
 7ymZQcQFHK/6jr3gIJG2wnaxF7Fehe2E6MNG9z4ZjTTf+qPP5BrFcZOUs
 f9SqzaqIosn5nrhorUdB8+BB96T1O+i9+7310ZMXLbUwJKv/PvPGe4pbx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="376704486"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="376704486"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 22:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="885894743"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="885894743"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 22:16:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri,  8 Sep 2023 22:16:45 -0700
Message-Id: <20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com>
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
running sometimes during suspend. This is likely because some code is
getting a gt wakeref in the __gt_park path.

Only update stats if gt is awake. If not, intel_guc_busyness_park would
have already updated the stats. Note that we do not requeue the worker
if gt is not awake since intel_guc_busyness_unpark would do that at some
point.

If the gt was parked longer than time taken for GT timestamp to roll
over, we ignore those rollovers since we don't care about tracking the
exact GT time. We only care about roll overs when the gt is active and
running workloads.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7077
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 27 ++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e250bedf90fb..df31d6047ce9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1457,10 +1457,27 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_context *ce;
-	intel_wakeref_t wakeref;
 	unsigned long index;
 	int srcu, ret;
 
+	/*
+	 * The worker is canceled in the __gt_park path, but we still see it
+	 * running sometimes during suspend. This is likely because some code
+	 * is getting a gt wakeref in the __gt_park path.
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
+	if (!intel_gt_pm_get_if_awake(gt))
+		return;
+
 	/*
 	 * Synchronize with gt reset to make sure the worker does not
 	 * corrupt the engine/guc stats. NB: can't actually block waiting
@@ -1468,17 +1485,19 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	 * this worker thread if started. So waiting would deadlock.
 	 */
 	ret = intel_gt_reset_trylock(gt, &srcu);
-	if (ret)
+	if (ret) {
+		intel_gt_pm_put(gt);
 		return;
+	}
 
-	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
-		__update_guc_busyness_stats(guc);
+	__update_guc_busyness_stats(guc);
 
 	/* adjust context stats for overflow */
 	xa_for_each(&guc->context_lookup, index, ce)
 		guc_context_update_stats(ce);
 
 	intel_gt_reset_unlock(gt, srcu);
+	intel_gt_pm_put(gt);
 
 	guc_enable_busyness_worker(guc);
 }
-- 
2.38.1

