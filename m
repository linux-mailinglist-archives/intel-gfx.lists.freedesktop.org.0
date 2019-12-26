Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A861B12AE35
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 20:13:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D2A89CE3;
	Thu, 26 Dec 2019 19:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43EC489CE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 19:12:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19699262-1500050 
 for multiple; Thu, 26 Dec 2019 19:12:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 19:12:37 +0000
Message-Id: <20191226191237.2654510-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Ignore incomplete engines after
 init failure
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Do not expose incomplete engines to the user after we fail to setup the
GT.

Fixes: e6ba76480299 ("drm/i915: Remove i915->kernel_context")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 4 ++++
 drivers/gpu/drm/i915/gt/intel_gt.h          | 7 ++++++-
 drivers/gpu/drm/i915/gt/intel_reset.c       | 4 ++--
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 7f7150a733f4..9e7f12bef828 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -11,6 +11,7 @@
 #include "i915_drv.h"
 #include "intel_engine.h"
 #include "intel_engine_user.h"
+#include "intel_gt.h"
 
 struct intel_engine_cs *
 intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance)
@@ -200,6 +201,9 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 				     uabi_node);
 		char old[sizeof(engine->name)];
 
+		if (intel_gt_has_init_error(engine->gt))
+			continue; /* ignore incomplete engines */
+
 		GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
 		engine->uabi_class = uabi_classes[engine->class];
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 2355cf129e9c..1dac441cb8f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -58,9 +58,14 @@ static inline u32 intel_gt_scratch_offset(const struct intel_gt *gt,
 	return i915_ggtt_offset(gt->scratch) + field;
 }
 
-static inline bool intel_gt_is_wedged(struct intel_gt *gt)
+static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 {
 	return __intel_reset_failed(&gt->reset);
 }
 
+static inline bool intel_gt_has_init_error(const struct intel_gt *gt)
+{
+	return test_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
+}
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 1c51296646e0..2b7f75759bf2 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1329,10 +1329,10 @@ int intel_gt_terminally_wedged(struct intel_gt *gt)
 	if (!intel_gt_is_wedged(gt))
 		return 0;
 
-	/* Reset still in progress? Maybe we will recover? */
-	if (!test_bit(I915_RESET_BACKOFF, &gt->reset.flags))
+	if (intel_gt_has_init_error(gt))
 		return -EIO;
 
+	/* Reset still in progress? Maybe we will recover? */
 	if (wait_event_interruptible(gt->reset.queue,
 				     !test_bit(I915_RESET_BACKOFF,
 					       &gt->reset.flags)))
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
