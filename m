Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C4B7C03E7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F7410E3C1;
	Tue, 10 Oct 2023 18:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E143D10E3DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964245; x=1728500245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o8SyUYhtdIkJvawK6EZby0fwmns6sBcXgPCGpd7TRGo=;
 b=OclH2vzSZvS2De+hzwiQ/W65eqztpxuw3RG9ydhk7l5ebAxuQfZw5ee9
 Rdc6gWwNPTC/1DBAMIJaQbnPW1OepkuFiRRexC400+tZT5Rr6XPUA7VTl
 Hd0P3LxGiWkx4jsyEni4CW4yu/keutJsjfWVFWWoGHmTsILNwblHMKy8N
 bf0RJB5oQom3wYLlQ7DWZ7ggOun5G0S2MiZg0TdVq+T2eBHbTX94w4Qvu
 JS9sk4InZeBF7AyzElriuYV8nEjIjBK+jZwmbBIsUs+AA1oy9bcpL+es5
 mEo1iMn/oryZBAyv1sJHrLZYldEC8V5q2Q5X+0CyTkCqjXL1j0S4UPZeQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830085"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830085"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802289"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802289"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:25 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:35 -0700
Message-Id: <20231010184641.2119129-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
References: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 04/10] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: andi.shyti@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of GT is suspended, don't allow submission of new TLB invalidation
request and cancel all pending requests. The TLB entries will be
invalidated either during GuC reload or on system resume.

Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 +++++++
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f5ede14b18aae..3fbf4b33ce139 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -537,4 +537,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
 int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
 
+void wake_up_all_tlb_invalidate(struct intel_guc *guc);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e9854652c2b52..b9c168ea57270 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1796,13 +1796,25 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 	intel_context_put(parent);
 }
 
-void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
+void wake_up_all_tlb_invalidate(struct intel_guc *guc)
 {
 	struct intel_guc_tlb_wait *wait;
+	unsigned long i;
+
+	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
+		return;
+
+	xa_lock_irq(&guc->tlb_lookup);
+	xa_for_each(&guc->tlb_lookup, i, wait)
+		wake_up(&wait->wq);
+	xa_unlock_irq(&guc->tlb_lookup);
+}
+
+void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
+{
 	struct intel_context *ce;
 	unsigned long index;
 	unsigned long flags;
-	unsigned long i;
 
 	if (unlikely(!guc_submission_initialized(guc))) {
 		/* Reset called during driver load? GuC not yet initialised! */
@@ -1833,10 +1845,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
 	 * The full GT reset will have cleared the TLB caches and flushed the
 	 * G2H message queue; we can release all the blocked waiters.
 	 */
-	xa_lock_irq(&guc->tlb_lookup);
-	xa_for_each(&guc->tlb_lookup, i, wait)
-		wake_up(&wait->wq);
-	xa_unlock_irq(&guc->tlb_lookup);
+	wake_up_all_tlb_invalidate(guc);
 }
 
 static void guc_cancel_context_requests(struct intel_context *ce)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 98b103375b7ab..750cb63503dd7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -688,6 +688,8 @@ void intel_uc_suspend(struct intel_uc *uc)
 	/* flush the GSC worker */
 	intel_gsc_uc_flush_work(&uc->gsc);
 
+	wake_up_all_tlb_invalidate(guc);
+
 	if (!intel_guc_is_ready(guc)) {
 		guc->interrupts.enabled = false;
 		return;
@@ -736,6 +738,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 
 	intel_gsc_uc_resume(&uc->gsc);
 
+	if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
+		intel_guc_invalidate_tlb_engines(guc);
+		intel_guc_invalidate_tlb_guc(guc);
+	}
+
 	return 0;
 }
 
-- 
2.25.1

