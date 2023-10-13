Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC387C8CBC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 20:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B1E10E62D;
	Fri, 13 Oct 2023 18:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E6110E621
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697220210; x=1728756210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5aOrBOPOJ1EYHB2JN3DJ8QEb32VISWpZkGBy/kqhuLw=;
 b=dO3OChiDVL2WSK+vu7bGOSoFYWRgYY/QZ3+3qAQqS0iE8O8PIdtWcxNK
 NwUfZSBFOEM/5r/W0dCS5RBnuZGKLuQWFFyPR3VRNUwbzH5FZIPmPwu6F
 5ffAYGye3Pb+tUq6SydnXXJqlnM3G+kQovCwAFnVl9kSA0oQXgzr8Q6r3
 lSbm0+u7wwTtIF22veVtZlrPz+pkVq4Bbec62nkk7IY7jyrmOMxBZA/7P
 Ix/jLeBpOsOcN9WdXSFGPxxMiniYrg87NbipgHHroy8enhrEuH5Fq0cB2
 K8ZxhMzU0WslVto2v6H1ShQ2A6G7ejEw5489ofEIYI52DTYf4M5LJ9ZRi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388083589"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="388083589"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="898649303"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="898649303"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:01:19 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 10:52:15 -0700
Message-Id: <20231013175218.2664309-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
References: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 4/7] drm/i915: No TLB invalidation on
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
 drivers/gpu/drm/i915/gt/uc/intel_guc.h           |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 13 +++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c            | 16 ++++++++--------
 3 files changed, 22 insertions(+), 8 deletions(-)

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
index 8a304b4c85462..1b9fa2bafaad6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1796,6 +1796,19 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 	intel_context_put(parent);
 }
 
+void wake_up_all_tlb_invalidate(struct intel_guc *guc)
+{
+	struct intel_guc_tlb_wait *wait;
+	unsigned long i;
+
+	if (intel_guc_tlb_invalidation_is_available(guc)) {
+		xa_lock_irq(&guc->tlb_lookup);
+		xa_for_each(&guc->tlb_lookup, i, wait)
+			wake_up(&wait->wq);
+		xa_unlock_irq(&guc->tlb_lookup);
+	}
+}
+
 void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
 {
 	struct intel_context *ce;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 83ffdf19fd3fc..7ad560149a189 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -464,8 +464,6 @@ static int __uc_init_hw(struct intel_uc *uc)
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_guc *guc = &uc->guc;
 	struct intel_huc *huc = &uc->huc;
-	struct intel_guc_tlb_wait *wait;
-	long unsigned int i;
 	int ret, attempts;
 	bool pl1en = false;
 
@@ -566,12 +564,7 @@ static int __uc_init_hw(struct intel_uc *uc)
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
 
 	return 0;
 
@@ -701,6 +694,8 @@ void intel_uc_suspend(struct intel_uc *uc)
 	/* flush the GSC worker */
 	intel_gsc_uc_flush_work(&uc->gsc);
 
+	wake_up_all_tlb_invalidate(guc);
+
 	if (!intel_guc_is_ready(guc)) {
 		guc->interrupts.enabled = false;
 		return;
@@ -749,6 +744,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 
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

