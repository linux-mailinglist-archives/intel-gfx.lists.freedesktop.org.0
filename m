Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B722E7045
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8EB8936E;
	Tue, 29 Dec 2020 12:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1982E8914E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455221-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:01:42 +0000
Message-Id: <20201229120145.26045-53-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 53/56] drm/i915/gt: Enable busy-stats for
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
index 338d847445ca..b95f4ad4bd00 100644
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
@@ -63,6 +64,8 @@ static struct intel_engine_cs *__schedule_in(struct i915_request *rq)
 	if (engine->fw_domain && !engine->fw_active++)
 		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
 
+	intel_engine_context_in(engine);
+
 	CE_TRACE(ce, "schedule-in\n");
 
 	return engine;
@@ -96,6 +99,8 @@ static void __schedule_out(struct i915_request *rq)
 	else
 		i915_request_update_deadline(list_next_entry(rq, link));
 
+	intel_engine_context_out(engine);
+
 	if (engine->fw_domain && !--engine->fw_active)
 		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
 	intel_gt_pm_put_async(engine->gt);
@@ -755,6 +760,7 @@ int intel_ring_scheduler_setup(struct intel_engine_cs *engine)
 
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
