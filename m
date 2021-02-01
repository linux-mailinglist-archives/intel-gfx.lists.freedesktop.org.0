Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F8630A3B5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766A36E4FB;
	Mon,  1 Feb 2021 08:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C256E4B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757749-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:52 +0000
Message-Id: <20210201085715.27435-34-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 34/57] drm/i915: Move preempt-reset flag to the
 scheduler
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

While the HW may support preemption, whether or not the scheduler
enforces preemption by forcibly resetting the current context is
ultimately up to the scheduler.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h               | 7 ++-----
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 5 ++++-
 drivers/gpu/drm/i915/i915_scheduler_types.h          | 9 +++++++++
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index db5419ba1dc8..33a29623571d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -244,12 +244,9 @@ static inline bool intel_engine_uses_guc(const struct intel_engine_cs *engine)
 }
 
 static inline bool
-intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
+intel_engine_has_preempt_reset(struct intel_engine_cs *engine)
 {
-	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
-		return false;
-
-	return intel_engine_has_preemption(engine);
+	return i915_sched_has_preempt_reset(intel_engine_get_scheduler(engine));
 }
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 9245499d2082..7ec33bd73d95 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2931,9 +2931,12 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		__set_bit(I915_SCHED_HAS_TIMESLICES_BIT,
 			  &engine->sched.flags);
 
-	if (intel_engine_has_preemption(engine))
+	if (intel_engine_has_preemption(engine)) {
 		__set_bit(I915_SCHED_USE_BUSYWAIT_BIT,
 			  &engine->sched.flags);
+		__set_bit(I915_SCHED_HAS_PREEMPT_RESET_BIT,
+			  &engine->sched.flags);
+	}
 }
 
 static void logical_ring_default_irqs(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 37475024c0de..7271a0259a56 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -20,6 +20,7 @@ struct i915_request;
 enum {
 	I915_SCHED_ACTIVE_BIT = 0,
 	I915_SCHED_HAS_TIMESLICES_BIT,
+	I915_SCHED_HAS_PREEMPT_RESET_BIT,
 	I915_SCHED_NEEDS_BREADCRUMB_BIT,
 	I915_SCHED_USE_BUSYWAIT_BIT,
 };
@@ -207,4 +208,12 @@ static inline bool i915_sched_use_busywait(const struct i915_sched *se)
 	return test_bit(I915_SCHED_USE_BUSYWAIT_BIT, &se->flags);
 }
 
+static inline bool i915_sched_has_preempt_reset(const struct i915_sched *se)
+{
+	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
+		return false;
+
+	return test_bit(I915_SCHED_HAS_PREEMPT_RESET_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
