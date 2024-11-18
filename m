Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A579D1BCB
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:22:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D1610E570;
	Mon, 18 Nov 2024 23:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OTNomc1z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D3510E573
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 23:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731972149; x=1763508149;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lNrTZ7Y5syDNHhUS+26FG8TUWZ4sX+4CQGR6/leJmEE=;
 b=OTNomc1zZVHd9eeSOTCKdqLOU+1U7Myx7i8VEMEfDaFvsQCNJjMcBzPy
 /6/MspD6Da2HtQxvWMa5q0KXwh4VN//X18BZNnDp7X5opfi47IToYPEEN
 YmEHTBVRGGWwzDMFo5fBPoef3wUOk9/gwZzIjvCa5Vl74lJ6baO6let4R
 5ZlP/abnD2dJnp9qnQOMZVLNDtz/8lDyhuiGlZwGI9WQnc9+caJ6jfqUd
 uGPaGFcjnTWYb2WoU+lwAjoziPCvzqLxK/jNK/u7wq++UEYRsFkS2AiB7
 xvpf4lvIkCGUn5f2z00/AEA+l/zFYVgbOp0o9Xz3c2ebFMRIR0EDq6PnS g==;
X-CSE-ConnectionGUID: 0tI/UYsuSVSedMb2J1EaMA==
X-CSE-MsgGUID: l9vrTzc5QJKwyv+hpXfJAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42466980"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="42466980"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:29 -0800
X-CSE-ConnectionGUID: 8o2sk5SMQk+4xUhqByW5Og==
X-CSE-MsgGUID: 3A06Zd0QQhSTc40GDQNIxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89777997"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:28 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 3/3] i915/guc: Accumulate active runtime on gt reset
Date: Mon, 18 Nov 2024 15:22:23 -0800
Message-Id: <20241118232223.53639-4-umesh.nerlige.ramappa@intel.com>
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

On gt reset, if a context is running, then accumulate it's active time
into the busyness counter since there will be no chance for the context
to switch out and update it's run time.

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 56be9f385270..0c204b7f3b2b 100644
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
+		if (stats->running) {
+			u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
+
+			/*
+			 * If resetting a running context, accumulate the active
+			 * time as well since there will be no context switch.
+			 */
+			stats->total_gt_clks += clk;
+		}
+		stats->prev_total = 0;
+		stats->running = 0;
 	}
 
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
-- 
2.34.1

