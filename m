Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DC69DACA1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:40:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EA210EB8D;
	Wed, 27 Nov 2024 17:40:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPax8Tlf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3B710E146
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 17:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732729214; x=1764265214;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rzqwHZvGRQYw4AHTySnLM2Sa45jcwx1zHNdFMvAL1Xs=;
 b=MPax8TlfVX2CXHybX/GjtOH0qUN1IcVoHa+xySscF32vGkDY80xiJ6JV
 a0wjymJ37OsJnWrMHfIwhldlaMvSxJ0eKNgWBcQ6rramrKezboF+ONmGt
 7Rl61rSlSAQyvotwW9VTCOH6uCuheKGDefDHU0Ki1gatnS4qh5AH/w1kp
 5Z6H2D4GqnjNGefMz7ZyS37vBrZxglojMsHJ4h+SoShIIZWJ7Rkc0Zzt0
 l79kxGZNfnn+O6huKu98bFyDZHS91XsnMhMbyM1WDgiICQBlSKRfNE9Jy
 81eijk50oSDglhyccsgvqVMB3bKNzY5nQtQRNJXCSMu8YyBwjW1rNhEOJ Q==;
X-CSE-ConnectionGUID: GhVISbMMSLy3Iwue3Z6/Fg==
X-CSE-MsgGUID: I/9ZYvVvRHq37olwEC3DNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="50470705"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="50470705"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:12 -0800
X-CSE-ConnectionGUID: yqlW8cxVS22aSB66ffvQLw==
X-CSE-MsgGUID: lHV15TsnTR2oG29LKDwSoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91818807"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:12 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 3/3] i915/guc: Accumulate active runtime on gt reset
Date: Wed, 27 Nov 2024 09:40:06 -0800
Message-Id: <20241127174006.190128-4-umesh.nerlige.ramappa@intel.com>
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

On gt reset, if a context is running, then accumulate it's active time
into the busyness counter since there will be no chance for the context
to switch out and update it's run time.

v2: Move comment right above the if (John)

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 56be9f385270..2876024041a7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1449,8 +1449,21 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 
 	guc_update_pm_timestamp(guc, &unused);
 	for_each_engine(engine, gt, id) {
+		struct intel_engine_guc_stats *stats = &engine->stats.guc;
+
 		guc_update_engine_gt_clks(engine);
-		engine->stats.guc.prev_total = 0;
+
+		/*
+		 * If resetting a running context, accumulate the active
+		 * time as well since there will be no context switch.
+		 */
+		if (stats->running) {
+			u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
+
+			stats->total_gt_clks += clk;
+		}
+		stats->prev_total = 0;
+		stats->running = 0;
 	}
 
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
-- 
2.34.1

