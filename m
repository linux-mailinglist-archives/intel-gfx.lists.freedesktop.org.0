Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1391C121D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E10056EC61;
	Fri,  1 May 2020 12:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891C86EC61
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 12:23:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21082117-1500050 
 for multiple; Fri, 01 May 2020 13:22:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 13:22:49 +0100
Message-Id: <20200501122249.12417-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Make timeslicing an explicit
 engine property
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

In order to allow userspace to rely on timeslicing to reorder their
batches, we must support preemption of those user batches. Declare
timeslicing as an explicit property that is a combination of having the
kernel support and HW support.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  9 ---------
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 18 ++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  5 ++++-
 3 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index d10e52ff059f..19d0b8830905 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -332,13 +332,4 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
 	return intel_engine_has_preemption(engine);
 }
 
-static inline bool
-intel_engine_has_timeslices(const struct intel_engine_cs *engine)
-{
-	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
-		return false;
-
-	return intel_engine_has_semaphores(engine);
-}
-
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 3c3225c0332f..6c676774dcd9 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -492,10 +492,11 @@ struct intel_engine_cs {
 #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
 #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
 #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
-#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(4)
-#define I915_ENGINE_IS_VIRTUAL       BIT(5)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
+#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
+#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
+#define I915_ENGINE_IS_VIRTUAL       BIT(6)
+#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
+#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
 	unsigned int flags;
 
 	/*
@@ -593,6 +594,15 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
 }
 
+static inline bool
+intel_engine_has_timeslices(const struct intel_engine_cs *engine)
+{
+	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
+		return false;
+
+	return engine->flags & I915_ENGINE_HAS_TIMESLICES;
+}
+
 static inline bool
 intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4311b12542fb..d4ef344657b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4801,8 +4801,11 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
-		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915))
+		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915)) {
 			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
+			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
+				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
+		}
 	}
 
 	if (INTEL_GEN(engine->i915) >= 12)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
