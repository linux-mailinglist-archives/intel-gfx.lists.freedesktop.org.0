Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 385F79D1BCC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80AAB10E295;
	Mon, 18 Nov 2024 23:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mhHhXh2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A9510E57D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 23:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731972149; x=1763508149;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FkLHl5frL8EuMufMQN+ev5+QRnNTSCOgFp+cYD81yuc=;
 b=mhHhXh2qdQdXPdZOdTgHFZDz/8lMQvLMgWL4rQB3yTDblvJ+IecoI5Y2
 vSfuzMBIzl9i4Lh747ozP+P2VnSaT6oEpNVQxHZQO+CwY3usp6XbLSbHn
 rR8k2f13Ru0MbkE0h5AxlJEIAFTLbIFTbp4+/l2ZDsVV4yzZkbR+J2f05
 nhWetBnDbqUIDaFfsVphBxU8JqnFxaSVCKfM/WiZQ0aRvq/N2Qtcu26ZZ
 YtPEDT6XiTl0/8FXVTDzxVGyx2XmzI6cvR7C0VHS8xcgzoDAWDhZC1F+B
 wgTS+Sac7xIJQOkkc1KzgA5e0D5MEqTyRLvgdrkC9kcv26ERDjeLgl1Xv A==;
X-CSE-ConnectionGUID: g3XR0OQbSNCC5RnuWmw/jg==
X-CSE-MsgGUID: +lrHyTpBRE+e3+12oWzAAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42466979"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="42466979"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:29 -0800
X-CSE-ConnectionGUID: p0pVg140TgefeYhnj4acew==
X-CSE-MsgGUID: K79ZvKRhSF27rpRONYfDtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89777994"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:28 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 2/3] i915/guc: Ensure busyness counter increases monotonically
Date: Mon, 18 Nov 2024 15:22:22 -0800
Message-Id: <20241118232223.53639-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Active busyness of an engine is calculated using gt timestamp and the
context switch in time. While capturing the gt timestamp, it's possible
that the context switches out. This race could result in an active
busyness value that is greater than the actual context runtime value by a
small amount. This leads to a negative delta and throws off busyness
calculations for the user.

If a subsequent count is smaller than the previous one, just return the
previous one, since we expect the busyness to catch up.

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h      | 5 +++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 ++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index ba55c059063d..fe1f85e5dda3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -343,6 +343,11 @@ struct intel_engine_guc_stats {
 	 * @start_gt_clk: GT clock time of last idle to active transition.
 	 */
 	u64 start_gt_clk;
+
+	/**
+	 * @total: The last value of total returned
+	 */
+	u64 total;
 };
 
 union intel_engine_tlb_inv_reg {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c71aedcbce43..56be9f385270 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1378,9 +1378,12 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 		total += intel_gt_clock_interval_to_ns(gt, clk);
 	}
 
+	if (total > stats->total)
+		stats->total = total;
+
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 
-	return ns_to_ktime(total);
+	return ns_to_ktime(stats->total);
 }
 
 static void guc_enable_busyness_worker(struct intel_guc *guc)
-- 
2.34.1

