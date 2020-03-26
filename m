Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531EE194213
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 15:52:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 237C86E8E0;
	Thu, 26 Mar 2020 14:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899186E8DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 14:52:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20701710-1500050 
 for multiple; Thu, 26 Mar 2020 14:52:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 14:51:59 +0000
Message-Id: <20200326145159.27431-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326145159.27431-1-chris@chris-wilson.co.uk>
References: <20200326145159.27431-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/i915/gt: Declare when we enabled
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let userspace know if they can trust timeslicing by including it as part
of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING

v2: Only declare timeslicing if we can safely preempt userspace.

Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Kenneth Graunke <kenneth@whitecape.org>
---
 drivers/gpu/drm/i915/gt/intel_engine.h      | 3 ++-
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 5 +++++
 include/uapi/drm/i915_drm.h                 | 1 +
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index b469de0dd9b6..424672ee7874 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -339,7 +339,8 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
 	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
 		return false;
 
-	return intel_engine_has_semaphores(engine);
+	return (intel_engine_has_semaphores(engine) &&
+		intel_engine_has_preemption(engine));
 }
 
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 848decee9066..b84fdd722781 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -121,6 +121,11 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 			else
 				disabled |= BIT(map[i].sched);
 		}
+
+		if (intel_engine_has_timeslices(engine))
+			enabled |= I915_SCHEDULER_CAP_TIMESLICING;
+		else
+			disabled |= I915_SCHEDULER_CAP_TIMESLICING;
 	}
 
 	i915->caps.scheduler = enabled & ~disabled;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 26b17f7772c0..ca5f026ca9ea 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -523,6 +523,7 @@ typedef struct drm_i915_irq_wait {
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
