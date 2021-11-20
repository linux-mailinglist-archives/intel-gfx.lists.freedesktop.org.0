Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C15457A79
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Nov 2021 02:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4146E882;
	Sat, 20 Nov 2021 01:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE24D6E882
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Nov 2021 01:42:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10173"; a="215235890"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="215235890"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 17:42:08 -0800
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="496108025"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 17:42:08 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 17:42:01 -0800
Message-Id: <20211120014201.26480-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Avoid with_intel_runtime_pm
 within spinlock
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

When guc timestamp ping worker runs it takes the spinlock and calls
with_intel_runtime_pm.  Since with_intel_runtime_pm may sleep, move the
spinlock inside __update_guc_busyness_stats.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 77fbcd8730ee..a7108b38973e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1251,12 +1251,15 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	unsigned long flags;
 	ktime_t unused;
 
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
 	for_each_engine(engine, gt, id) {
 		guc_update_pm_timestamp(guc, engine, &unused);
 		guc_update_engine_gt_clks(engine);
 	}
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 static void guc_timestamp_ping(struct work_struct *wrk)
@@ -1266,7 +1269,6 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
 	struct intel_gt *gt = guc_to_gt(guc);
 	intel_wakeref_t wakeref;
-	unsigned long flags;
 	int srcu, ret;
 
 	/*
@@ -1277,13 +1279,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	if (ret)
 		return;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
-
 	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
 		__update_guc_busyness_stats(guc);
 
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
-
 	intel_gt_reset_unlock(gt, srcu);
 
 	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
@@ -1322,16 +1320,12 @@ static void guc_init_engine_stats(struct intel_guc *guc)
 void intel_guc_busyness_park(struct intel_gt *gt)
 {
 	struct intel_guc *guc = &gt->uc.guc;
-	unsigned long flags;
 
 	if (!guc_submission_initialized(guc))
 		return;
 
 	cancel_delayed_work(&guc->timestamp.work);
-
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
 	__update_guc_busyness_stats(guc);
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 void intel_guc_busyness_unpark(struct intel_gt *gt)
-- 
2.20.1

