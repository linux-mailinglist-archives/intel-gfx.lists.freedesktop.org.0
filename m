Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390AAA1AA69
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 20:39:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D633D10E085;
	Thu, 23 Jan 2025 19:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GwyO4YTr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A46810E085
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 19:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737661126; x=1769197126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QhM8D1YLSqVocjNZi2nCdJK4hvq10uN3EN/qA/1yv4A=;
 b=GwyO4YTrgndtQAnI7MoXRXjoIVUO8oOBA4BHCq+NA017JZCH/An7AqWR
 tNypmhtRDM6tOB6VjBavqzv1S38QUoBO99GTfdh16Y9oqTW8U4mpnIyGo
 ohfPgdIlLakcEEwnXFsrWwpGG8nN+H2GrERV8WFEnGrd2vgdS8Io+U/9K
 mVzjHg+YgZwNXvrgdHVjfOY3xL/7lqr88aHnTeu+f9xx0HX4N7b8Iw8/j
 1uhk3rRVKZpC9+D6VeHs3R/2mvRLPKnkV/f+e0RwoCXTRm7EA8MMshx13
 NXloK9lSwG2GDtwi8ZIQKtRtIobjPtw+0JNrT85gSoErbzer2jIjeOxDp A==;
X-CSE-ConnectionGUID: WVScAn2qR3aBY0IHw2UW0A==
X-CSE-MsgGUID: yysKr1GVTFKHGESxbP0jbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="42109559"
X-IronPort-AV: E=Sophos;i="6.13,229,1732608000"; d="scan'208";a="42109559"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 11:38:46 -0800
X-CSE-ConnectionGUID: q2mVBt2uTvSZiWxtvPKC5w==
X-CSE-MsgGUID: E4nl+J4gQL+D8Plr35lMqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111598345"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 11:38:45 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: John.C.Harrison@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH] drm/i915/pmu: Fix zero delta busyness issue
Date: Thu, 23 Jan 2025 11:38:39 -0800
Message-Id: <20250123193839.2394694-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
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

When running igt@gem_exec_balancer@individual for multiple iterations,
it is seen that the delta busyness returned by PMU is 0. The issue stems
from a combination of 2 implementation specific details:

1) gt_park is throttling __update_guc_busyness_stats() so that it does
not hog PCI bandwidth for some use cases. (Ref: 59bcdb564b3ba)

2) busyness implementation always returns monotonically increasing
counters. (Ref: cf907f6d29421)

If an application queried an engine while it was active,
engine->stats.guc.running is set to true. Following that, if all PM
wakeref's are released, then gt is parked. At this time the throttling
of __update_guc_busyness_stats() may result in a missed update to the
running state of the engine (due to (1) above). This means subsequent
calls to guc_engine_busyness() will think that the engine is still
running and they will keep updating the cached counter (stats->total).
This results in an inflated cached counter.

Later when the application runs a workload and queries for busyness, we
return the cached value since it is larger than the actual value (due to
(2) above)

All subsequent queries will return the same large (inflated) value, so
the application sees a delta busyness of zero.

Fix the issue by resetting the running state of engines each time
intel_guc_busyness_park() is called.

v2: (Rodrigo)
- Use the correct tag in commit message
- Drop the redundant wakeref check in guc_engine_busyness() and update
  commit message

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 3b1333a24a89..a33b67b83dc1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
+static void __update_guc_busyness_running_state(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	unsigned long flags;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	for_each_engine(engine, gt, id)
+		engine->stats.guc.running = false;
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
 static void __update_guc_busyness_stats(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -1619,6 +1632,9 @@ void intel_guc_busyness_park(struct intel_gt *gt)
 	if (!guc_submission_initialized(guc))
 		return;
 
+	/* Assume no engines are running and set running state to false */
+	__update_guc_busyness_running_state(guc);
+
 	/*
 	 * There is a race with suspend flow where the worker runs after suspend
 	 * and causes an unclaimed register access warning. Cancel the worker
-- 
2.38.1

