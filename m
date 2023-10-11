Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 699497C45E4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 02:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E29310E405;
	Wed, 11 Oct 2023 00:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E9210E406
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 00:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696983211; x=1728519211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7xQtKB4/tDnkxuoDfbfIa++Cf15KEtdHGwqvKuvU0M4=;
 b=d85MEcTnA0O+tDaq/EBpluhUMBFPL698PODKsb1nSc3uCUehsAdQc6zs
 cV7lGD8ZH8XwkKpXIRESNKnkLqJCOhWJpPhM5aP/rumaJFzInPZxpPdUm
 ULTwNVNsvoUVjJaNjo+GbOj0VdrMk4qulN/30Llx8oXyRL4ULViSqEV2N
 A3hYZbrwtFbr6AipJJkAHrpwItvU42Neyo0SLjT1NC3u9MlHwLTPz/gRC
 HHUcy3iFtaMCnheAVJ+VWPvfPgcICy/oQ0qMGje+FYNZJUjPSS0G+OeId
 ED+bXJjJ90uf28ZMAQZ4iivtN4IAP6MBnbRRileiJvdtsRYNoPLcWc5+V g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="363903219"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="363903219"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 17:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="753626316"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="753626316"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 17:13:30 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 17:02:45 -0700
Message-Id: <20231011000248.2181018-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 4/7] drm/i915: No TLB invalidation on
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
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 +++++++
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 6af65d44b1a02..9a743d7059628 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -536,4 +536,5 @@ int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
 int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
 int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
 				    const u32 *payload, u32 len);
+void wake_up_all_tlb_invalidate(struct intel_guc *guc);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 8e5a79ecfc2a2..9d5f8cccaa592 100644
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

