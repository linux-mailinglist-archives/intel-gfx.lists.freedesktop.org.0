Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4097CACD0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 17:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1544110E206;
	Mon, 16 Oct 2023 15:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BBE10E1FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 15:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697468544; x=1729004544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BGDq57J45f1ihtELrConWxDWf8H7JbTPJAmdQBaZ3jA=;
 b=KZukHAZi0pXTlk0Ke6P38cJP0pVTtCHakRise60u0mhl6xwIEpxDS1OG
 4DlYfrX7uZAqbVKFOj0itQ13H2wYmdltumAZo/ihIRdl3F59s3rrcb9zq
 JixVPCY+Z4JqBVUuwPQMDou/XRtlgogbpW7H+cgstn/kn03R53GF8ROZk
 lbJyojP3usc67uNnmBGcIBs27ldshFnQd+X4sy2eU3NFHHRgCvU8ZZFZg
 MIXCjz5hnrgesSyuiULWOj26Ql6FmS4VGgxIBi2IS/+S7b3PUnXlmL/v0
 WlwQfgAs2W7uj2DP62sgKLRoOr9uegEucoGQV9GQ1WlWjz8ULIgNf9z18 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="389408234"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="389408234"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759429285"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="759429285"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:01:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 07:51:06 -0700
Message-Id: <20231016145109.2843611-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
References: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v16 4/7] drm/i915: No TLB invalidation on
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of GT is suspended, don't allow submission of new TLB invalidation
request and cancel all pending requests. The TLB entries will be
invalidated either during GuC reload or on system resume.

Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 24 ++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 ++++++
 3 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 0949628d69f8b..2b6dfe62c8f2a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -537,4 +537,5 @@ int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
 int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
 int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
 				    const u32 *payload, u32 len);
+void wake_up_all_tlb_invalidate(struct intel_guc *guc);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9ec6e80b258c4..1b04b1692e48d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1796,6 +1796,20 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 	intel_context_put(parent);
 }
 
+void wake_up_all_tlb_invalidate(struct intel_guc *guc)
+{
+	struct intel_guc_tlb_wait *wait;
+	unsigned long i;
+
+	if (!intel_guc_tlb_invalidation_is_available(guc))
+		return;
+
+	xa_lock_irq(&guc->tlb_lookup);
+	xa_for_each(&guc->tlb_lookup, i, wait)
+		wake_up(&wait->wq);
+	xa_unlock_irq(&guc->tlb_lookup);
+}
+
 void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
 {
 	struct intel_context *ce;
@@ -1925,9 +1939,6 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
 void intel_guc_submission_reset_finish(struct intel_guc *guc)
 {
-	struct intel_guc_tlb_wait *wait;
-	long unsigned int i;
-
 	/* Reset called during driver load or during wedge? */
 	if (unlikely(!guc_submission_initialized(guc) ||
 		     intel_gt_is_wedged(guc_to_gt(guc)))) {
@@ -1951,12 +1962,7 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
 	 * The full GT reset will have cleared the TLB caches and flushed the
 	 * G2H message queue; we can release all the blocked waiters.
 	 */
-	if (intel_guc_tlb_invalidation_is_available(guc)) {
-		xa_lock_irq(&guc->tlb_lookup);
-		xa_for_each(&guc->tlb_lookup, i, wait)
-			wake_up(&wait->wq);
-		xa_unlock_irq(&guc->tlb_lookup);
-	}
+	wake_up_all_tlb_invalidate(guc);
 }
 
 static void destroyed_worker_func(struct work_struct *w);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 98b103375b7ab..27f6561dd7319 100644
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
 
+	if (intel_guc_tlb_invalidation_is_available(guc)) {
+		intel_guc_invalidate_tlb_engines(guc);
+		intel_guc_invalidate_tlb_guc(guc);
+	}
+
 	return 0;
 }
 
-- 
2.25.1

