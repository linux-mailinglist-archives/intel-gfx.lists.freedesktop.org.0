Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F47C8CB7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 20:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545ED10E621;
	Fri, 13 Oct 2023 18:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF69E10E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697220210; x=1728756210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nj0SonOrPHHQMohoP8Gbszs4ySJKtNr6c7c764L7M0E=;
 b=Sn8crBNJBkhH6HVbi+4JxZ3NhWOwz7IUPupRPR2adVFmq1/vprS/gCCu
 VqH660wwUqfwRpTykjlcYJDjJyM8kso+YDjYyaAKgmoRHjhIQs4FKIE3T
 jE0NrLlswcaunb+VIk33yIabe1Rdsb0vrspq9we/VGVbwU3CfDss0pkKP
 Wz9wMTBnv3LhlrqpO5prkEwXH2rZd1HZehGDUoG6g9YRfaZPDh/gm7eth
 l9h9y7Y7SWpi7aZKms8IuonxfQJ1rgnKOUslU1hLhRDwaYyN+MnlZhTFF
 RFQirUnlywAKlRR6RFPveRRQSHdnp33h+/bUvm38Bu3YGr7i9Tiaq0rX6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388083592"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="388083592"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:03:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="898649304"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="898649304"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:01:20 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 10:52:16 -0700
Message-Id: <20231013175218.2664309-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
References: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 5/7] drm/i915: No TLB invalidation on wedged
 GT
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

It is not an error for GuC TLB invalidations to fail when the GT is
wedged or disabled, so do not process a wait failure as one in
guc_send_invalidate_tlb.

Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1b9fa2bafaad6..7f2d6adb5dfce 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -32,6 +32,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_irq.h"
 #include "i915_trace.h"
 
 /**
@@ -1934,6 +1935,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
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
@@ -4742,6 +4749,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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
@@ -4791,7 +4806,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
 	if (err)
 		goto out;
 
-	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
+	if (intel_gt_is_enabled(guc_to_gt(guc)) &&
+	    !must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
 		guc_err(guc,
 			"TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
-- 
2.25.1

