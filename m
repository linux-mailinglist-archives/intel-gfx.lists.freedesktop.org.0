Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 279DD7BE860
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE88310E2A0;
	Mon,  9 Oct 2023 17:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981DD10E069
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 17:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696873202; x=1728409202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8vDJy+RXFH2pdvJZYFEu+YkrK8j9Jb1ZXDWac9072n0=;
 b=Q0Yo+0tfqZfpeHVCubERqSNL4GLbopjbV12plWcmQ11lTlk2xgTZwEE2
 lquVFYE1KnxjsCzazl4Br8Mn3zZBmBnP1NW1Y4Ols1m0bGVaqK8JEbk0W
 OZT96G+XBZRel66878yV0su5SHgw2GfnaXvya6LNOMhW/MnY/BBjLNZ/b
 6It4qfXQgV5fCR3kjppLzuxrA9wwu14P8I4fiRjbDNAC5yajO16JvDziY
 TQZxgFMbiGy7MPQ9O+qAHpkeb5G3IeuJZSpaB54cNSOjGMnrZAM0b6BZv
 AwIkNCe1V4cEwSNEkn0iZDXoPX+2tkCO1aNweOVt8AICiPJGYNBF+YS1H A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450705020"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450705020"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788251451"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788251451"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 10:29:17 -0700
Message-Id: <20231009172919.1769055-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 5/7] drm/i915: No TLB invalidation on wedged
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
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 7ae250f78a59f..bd6bddf53169c 100644
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
@@ -4739,6 +4746,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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
 
-	if (!must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
+	if (intel_gt_is_enabled(guc_to_gt(guc)) &&
+	    !must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
 		guc_err(guc,
 			"TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
-- 
2.25.1

