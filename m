Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DAE7C03E9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E776E10E3C6;
	Tue, 10 Oct 2023 18:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1852110E3E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964246; x=1728500246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+r/lc4mDefQ6hIT5sQlKNW10ag7ly8xSz8WuI83JJxs=;
 b=UlXZPdpLRZqGCY/Wd1kmvuzGIFBa8SNaJCdJi7BR1nfARRhlLHnayOMq
 WEW1DP7qgunxrSk2Sm2uVpSvC9IfJNWDBWrw09sT2EqDrRPAq2PCw+/Ur
 1sfhQorX9PPGKDtAmqtdOE+NgFKcirxhuQXBzKCBmrI9DoqVMylz96zr+
 1bKNveWpuHkI00smpsYbKMFXL574gPek6P8CxSBJAlH1cnL56RFSkZNJV
 VEvc7c7t7Nt9cAzyIo3i0I7lzCmVrDrjmyK8LtWvjLPOOBC0hyt4Emeg1
 5Wu6nycROIo/Wx/9YE0FX/pDmPck1ZhhWqzEM0NCDhaQaIV/vng5AA2C6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830087"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830087"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802292"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802292"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:25 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:36 -0700
Message-Id: <20231010184641.2119129-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
References: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 05/10] drm/i915: No TLB invalidation on
 wedged GT
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

It is not an error for GuC TLB invalidations to fail when the GT is
wedged or disabled, so do not process a wait failure as one in
guc_send_invalidate_tlb.

Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index b9c168ea57270..c3c45d3b9e89b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -32,6 +32,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_irq.h"
 #include "i915_trace.h"
 
 /**
@@ -1941,6 +1942,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
 	/* GuC is blown away, drop all references to contexts */
 	xa_destroy(&guc->context_lookup);
+
+	/*
+	 * Wedged GT won't respond to any TLB invalidation request. Simply
+	 * release all the blocked waiters.
+	 */
+	wake_up_all_tlb_invalidate(guc);
 }
 
 void intel_guc_submission_reset_finish(struct intel_guc *guc)
@@ -4738,6 +4745,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
 	return timeout;
 }
 
+static bool intel_gt_is_enabled(const struct intel_gt *gt)
+{
+	/* Check if GT is wedged or suspended */
+	if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
+		return false;
+	return true;
+}
+
 static int guc_send_invalidate_tlb(struct intel_guc *guc,
 				   enum intel_guc_tlb_invalidation_type type)
 {
@@ -4790,7 +4805,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
 	if (err)
 		goto out;
 
-	if (!must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
+	if (intel_gt_is_enabled(guc_to_gt(guc)) &&
+	    !must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
 		guc_err(guc,
 			"TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
-- 
2.25.1

