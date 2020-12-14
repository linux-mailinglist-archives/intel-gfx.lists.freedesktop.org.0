Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AD72D95E3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5156E284;
	Mon, 14 Dec 2020 10:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C2536E161
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317867-1500050 
 for multiple; Mon, 14 Dec 2020 10:10:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:44 +0000
Message-Id: <20201214100949.11387-64-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 64/69] drm/i915/gt: Enable busy-stats for
 ring-scheduler
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Couple up the context in/out accounting to record how long each engine
is busy handling requests. This is exposed to userspace for more accurate
measurements, and also enables our soft-rps timer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ring_scheduler.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
index 775f21acd7a8..b9335196b0fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
@@ -11,6 +11,7 @@
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_stats.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
@@ -73,6 +74,8 @@ static struct intel_engine_cs *__schedule_in(struct i915_request *rq)
 	if (engine->fw_domain && !engine->fw_active++)
 		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
 
+	intel_engine_context_in(engine);
+
 	CE_TRACE(ce, "schedule-in\n");
 
 	return engine;
@@ -106,6 +109,8 @@ static void __schedule_out(struct i915_request *rq)
 	else
 		i915_request_update_deadline(list_next_entry(rq, link));
 
+	intel_engine_context_out(engine);
+
 	if (engine->fw_domain && !--engine->fw_active)
 		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
 	intel_gt_pm_put_async(engine->gt);
@@ -809,6 +814,7 @@ int intel_ring_scheduler_setup(struct intel_engine_cs *engine)
 
 	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
+	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 
 	/* Finally, take ownership and responsibility for cleanup! */
 	engine->release = ring_release;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
