Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DBD9DACA0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E439910EB7E;
	Wed, 27 Nov 2024 17:40:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bu6GsP8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB68C10E306
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 17:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732729213; x=1764265213;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZPBiT8eJ0V1+Jo+IR8jSZBd1gUn12FlLpuRHFBeO7gk=;
 b=Bu6GsP8Yh6iYlJAKFWjt1FvELGUlUOF4Tq3Mqs+YSa3AOy/qJXS3KsNA
 7CfxgsefyH/DvcIzpUfCdZowK7HavEUtVJYVHORm2KGJfVVU1tNgROcxF
 NygY4X3EJPsjT3GPb958me9DlSTgi/ME1pKYgkTOY1LVUWb6V56ik3l1m
 wM0U8JJs3lIvrNNUtpi72ao6Vt8vY1baT73UAlLZNZtfKFwk0jvDbEUhA
 OIBsLCw2BkrZshbtE1GtM82/9Y9MQ1X6GpH/XIYgFBkehEuUZt7Wk4Fie
 QjZTmHwEdtdqJvnGsqAMNYZvxiwZnp+qQuu7wkzaTW9rdLK32MoS8iq7h Q==;
X-CSE-ConnectionGUID: MAKNXDSSS+mtQ/stAnPfyw==
X-CSE-MsgGUID: x5VUkD1vR4GoqkV+sUzD/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="50470704"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="50470704"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:12 -0800
X-CSE-ConnectionGUID: 3R0F3IB0S86XDE11iiyHnw==
X-CSE-MsgGUID: T6V5KzWlS7CGuUKq1L3FGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91818803"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:11 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 2/3] i915/guc: Ensure busyness counter increases motonically
Date: Wed, 27 Nov 2024 09:40:05 -0800
Message-Id: <20241127174006.190128-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
References: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
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
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
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

