Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4348F46AF56
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 01:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799AB6EE9B;
	Tue,  7 Dec 2021 00:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E29036EE9B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 00:46:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217469601"
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="217469601"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 16:45:46 -0800
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="611450725"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 16:45:46 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Dec 2021 16:45:42 -0800
Message-Id: <20211207004542.24298-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Fix wakeref leak in PMU busyness
 during reset
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

GuC PMU busyness gets gt wakeref if awake, but fails to release the
wakeref if a reset is in progress. Release the wakeref if it was
acquried successfully.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1f9d4fde421f..a243304a2db1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1181,6 +1181,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	struct intel_gt *gt = engine->gt;
 	struct intel_guc *guc = &gt->uc.guc;
 	u64 total, gt_stamp_saved;
+	intel_wakeref_t wakeref;
 	unsigned long flags;
 	u32 reset_count;
 	bool in_reset;
@@ -1206,18 +1207,21 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	 * start_gt_clk is derived from GuC state. To get a consistent
 	 * view of activity, we query the GuC state only if gt is awake.
 	 */
-	if (intel_gt_pm_get_if_awake(gt) && !in_reset) {
+	wakeref = intel_gt_pm_get_if_awake(gt);
+	if (wakeref && !in_reset) {
 		stats_saved = *stats;
 		gt_stamp_saved = guc->timestamp.gt_stamp;
 		guc_update_engine_gt_clks(engine);
 		guc_update_pm_timestamp(guc, engine, now);
-		intel_gt_pm_put_async(gt);
 		if (i915_reset_count(gpu_error) != reset_count) {
 			*stats = stats_saved;
 			guc->timestamp.gt_stamp = gt_stamp_saved;
 		}
 	}
 
+	if (wakeref)
+		intel_gt_pm_put_async(gt);
+
 	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
 	if (stats->running) {
 		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
-- 
2.20.1

