Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 029F230A3A3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E2776E4AA;
	Mon,  1 Feb 2021 08:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F936E48C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757744-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:49 +0000
Message-Id: <20210201085715.27435-31-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/57] drm/i915/gt: Declare when we enabled
 timeslicing
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

Let userspace know if they can trust timeslicing by including it as part
of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING

v2: Only declare timeslicing if we can safely preempt userspace.

Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 26 +++++++++++++++------
 include/uapi/drm/i915_drm.h                 |  1 +
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 64eccdf32a22..50911fbe6368 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -90,13 +90,17 @@ static void sort_engines(struct drm_i915_private *i915,
 static void set_scheduler_caps(struct drm_i915_private *i915)
 {
 	static const struct {
-		u8 engine;
-		u8 sched;
-	} map[] = {
+		u8 flag;
+		u8 cap;
+	} engine_map[] = {
 #define MAP(x, y) { ilog2(I915_ENGINE_##x), ilog2(I915_SCHEDULER_CAP_##y) }
 		MAP(HAS_PREEMPTION, PREEMPTION),
 		MAP(HAS_SEMAPHORES, SEMAPHORES),
 		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
+#undef MAP
+	}, sched_map[] = {
+#define MAP(x, y) { ilog2(I915_SCHED_##x), ilog2(I915_SCHEDULER_CAP_##y) }
+		MAP(HAS_TIMESLICES_BIT, TIMESLICING),
 #undef MAP
 	};
 	struct intel_engine_cs *engine;
@@ -105,6 +109,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 	enabled = 0;
 	disabled = 0;
 	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
+		struct i915_sched *se = intel_engine_get_scheduler(engine);
 		int i;
 
 		if (intel_engine_has_scheduler(engine))
@@ -114,11 +119,18 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 			disabled |= (I915_SCHEDULER_CAP_ENABLED |
 				     I915_SCHEDULER_CAP_PRIORITY);
 
-		for (i = 0; i < ARRAY_SIZE(map); i++) {
-			if (engine->flags & BIT(map[i].engine))
-				enabled |= BIT(map[i].sched);
+		for (i = 0; i < ARRAY_SIZE(engine_map); i++) {
+			if (engine->flags & BIT(engine_map[i].flag))
+				enabled |= BIT(engine_map[i].cap);
 			else
-				disabled |= BIT(map[i].sched);
+				disabled |= BIT(engine_map[i].cap);
+		}
+
+		for (i = 0; i < ARRAY_SIZE(sched_map); i++) {
+			if (se->flags & BIT(sched_map[i].flag))
+				enabled |= BIT(sched_map[i].cap);
+			else
+				disabled |= BIT(sched_map[i].cap);
 		}
 	}
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 1987e2ea79a3..cda0f391d965 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -524,6 +524,7 @@ typedef struct drm_i915_irq_wait {
 #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
 #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
 #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
+#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
 
 #define I915_PARAM_HUC_STATUS		 42
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
