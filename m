Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE9D7BE85D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5B410E297;
	Mon,  9 Oct 2023 17:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41FEE10E069
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 17:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696873202; x=1728409202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qm2nlfBtP2w/vqc8F2oE4h/GVc0xZdakYcZV2IOAMBE=;
 b=B5TsG7uVOSZn2Zv7S91GwxdH0fxIqGi+kDOJTcDoMzRUttwLwf2jpmzL
 VLw6fXqshbTIvz2xHKwkVOyKkh+Yxmzv0EZ41Ow9Kh39TNXYxWZinME2Y
 CYJsAxs05KCZNKMkxnqbnr4pZOVDqjydEyzubKGY3BL50nGkd51kmaMnG
 SsoEfls+ADOIY5z+PDKR66a33ZnX+O2OUTZbjEvYWJvcZtPlTcXqfmJpP
 //Iel9O8tGCUYr0oarJtE8Wh6fgn3lBejnO9xb3/+N6VsGFapuSe9vyOd
 LptMsdl2UacFLUj2ivLvN+ZEKKL3QFGfZkKJnjR2+mjY5jk8b+gOG+RYx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450705019"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450705019"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788251448"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788251448"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 10:29:16 -0700
Message-Id: <20231009172919.1769055-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 4/7] drm/i915: No TLB invalidation on
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
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h           |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc.c            |  7 +++++++
 3 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 06c44f5c28776..ff7e7b90fd49b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
 int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
 
+void wake_up_all_tlb_invalidate(struct intel_guc *guc);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 65dd4ad9a41a4..7ae250f78a59f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1796,13 +1796,22 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
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
+	xa_for_each(&guc->tlb_lookup, i, wait)
+		wake_up(&wait->wq);
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
@@ -1836,8 +1845,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
 	 * No race condition can occur here between xarray insert and wake_up,
 	 * so this is safe to do unlocked.
 	 */
-	xa_for_each(&guc->tlb_lookup, i, wait)
-		wake_up(&wait->wq);
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

