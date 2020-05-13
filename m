Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969C71D1BCD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A258B6EA84;
	Wed, 13 May 2020 17:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587926EA7E;
 Wed, 13 May 2020 17:02:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190086-1500050 
 for multiple; Wed, 13 May 2020 18:02:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 18:02:23 +0100
Message-Id: <20200513170224.848726-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib/i915: Report scheduler caps for
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 include/drm-uapi/i915_drm.h |  8 +++++---
 lib/i915/gem_scheduler.c    | 15 +++++++++++++++
 lib/i915/gem_scheduler.h    |  1 +
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index 2b55af13a..a222b6bfb 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -523,6 +523,7 @@ typedef struct drm_i915_irq_wait {
 #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
 #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
 #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
+#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
 
 #define I915_PARAM_HUC_STATUS		 42
 
@@ -1040,9 +1041,10 @@ struct drm_i915_gem_exec_fence {
 	 */
 	__u32 handle;
 
-#define I915_EXEC_FENCE_WAIT            (1<<0)
-#define I915_EXEC_FENCE_SIGNAL          (1<<1)
-#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_SIGNAL << 1))
+#define I915_EXEC_FENCE_WAIT            (1u << 0)
+#define I915_EXEC_FENCE_SIGNAL          (1u << 1)
+#define I915_EXEC_FENCE_WAIT_SUBMIT     (1u << 2)
+#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_WAIT_SUBMIT << 1))
 	__u32 flags;
 };
 
diff --git a/lib/i915/gem_scheduler.c b/lib/i915/gem_scheduler.c
index 184da8436..7873766ae 100644
--- a/lib/i915/gem_scheduler.c
+++ b/lib/i915/gem_scheduler.c
@@ -129,6 +129,19 @@ bool gem_scheduler_has_engine_busy_stats(int fd)
 		I915_SCHEDULER_CAP_ENGINE_BUSY_STATS;
 }
 
+/**
+ * gem_scheduler_has_timeslicing:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query whether the driver supports using HW preemption
+ * to implement timeslicing of userspace batches. This allows userspace to
+ * implement micro-level scheduling within their own batches.
+ */
+bool gem_scheduler_has_timeslicing(int fd)
+{
+	return gem_scheduler_capability(fd) & I915_SCHEDULER_CAP_TIMESLICING;
+}
+
 /**
  * gem_scheduler_print_capability:
  * @fd: open i915 drm file descriptor
@@ -149,6 +162,8 @@ void gem_scheduler_print_capability(int fd)
 		igt_info(" - With preemption enabled\n");
 	if (caps & I915_SCHEDULER_CAP_SEMAPHORES)
 		igt_info(" - With HW semaphores enabled\n");
+	if (caps & I915_SCHEDULER_CAP_TIMESLICING)
+		igt_info(" - With user timeslicing enabled\n");
 	if (caps & I915_SCHEDULER_CAP_ENGINE_BUSY_STATS)
 		igt_info(" - With engine busy statistics\n");
 }
diff --git a/lib/i915/gem_scheduler.h b/lib/i915/gem_scheduler.h
index 14bd4cac4..d43e84bd2 100644
--- a/lib/i915/gem_scheduler.h
+++ b/lib/i915/gem_scheduler.h
@@ -32,6 +32,7 @@ bool gem_scheduler_has_ctx_priority(int fd);
 bool gem_scheduler_has_preemption(int fd);
 bool gem_scheduler_has_semaphores(int fd);
 bool gem_scheduler_has_engine_busy_stats(int fd);
+bool gem_scheduler_has_timeslicing(int fd);
 void gem_scheduler_print_capability(int fd);
 
 #endif /* GEM_SCHEDULER_H */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
