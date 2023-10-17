Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 427057CCA82
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 20:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D72210E317;
	Tue, 17 Oct 2023 18:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E121210E312
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 18:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697566730; x=1729102730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7U4t9jOSl0rd1YSaGG/pxvayOFoaAulq1yXcW1Qbku4=;
 b=WbwAMNbyqtHh1Gv7DWvvYvN9jCDborKebzA/qDz7oMmnnVw47NfKDU5X
 wOal+TA3TbalvXacODuVTF7hZQJ7WFh6PVYGKRbFgVSRHry9JoISnEATS
 YQ/e0OwKJjz8L9YmbnmPzsCjFkNZqD4ZSmObgF5HrogUvreJrIPbbAtO/
 Enf8zhMGmrzEZbgz9wh97Ddw6kvCqZICR/4zAQYp0iKv4a2bZcpMWsNX2
 IxjMzn313/CnqlBxh/CKIKp8VLehvtdLFYo7SJ3fpKMftkTxK177tlavB
 0nEW+MNo8sZIzTJZuNJIw1kCHWtwtLaiCQeRJRju32DFNc4bFnADWYu87 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="472078885"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="472078885"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="4037633"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:17:43 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 11:08:03 -0700
Message-Id: <20231017180806.3054290-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v17 4/7] drm/i915: No TLB invalidation on
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
index aba138e571960..1b04b1692e48d 100644
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
-	unsigned long i;
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

