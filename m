Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA681354FD
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0116E8DF;
	Thu,  9 Jan 2020 08:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C666E8DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:59:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19817523-1500050 
 for multiple; Thu, 09 Jan 2020 08:58:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 08:58:26 +0000
Message-Id: <20200109085839.873553-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/14] drm/i915/gt: Push context state
 allocation earlier
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

Allow for knowledgeable users to preallocate the context state, and to
separate the allocation step from the pinning step during
intel_context_pin()

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 34 +++++++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_context.h |  2 ++
 2 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 5ea8305fd633..bc5ae18dbe3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -43,24 +43,42 @@ intel_context_create(struct intel_engine_cs *engine)
 	return ce;
 }
 
+int intel_context_alloc_state(struct intel_context *ce)
+{
+	int err = 0;
+
+	if (mutex_lock_interruptible(&ce->pin_mutex))
+		return -EINTR;
+
+	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
+		err = ce->ops->alloc(ce);
+		if (unlikely(err))
+			goto unlock;
+
+		set_bit(CONTEXT_ALLOC_BIT, &ce->flags);
+	}
+
+unlock:
+	mutex_unlock(&ce->pin_mutex);
+	return err;
+}
+
 int __intel_context_do_pin(struct intel_context *ce)
 {
 	int err;
 
+	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
+		err = intel_context_alloc_state(ce);
+		if (err)
+			return err;
+	}
+
 	if (mutex_lock_interruptible(&ce->pin_mutex))
 		return -EINTR;
 
 	if (likely(!atomic_read(&ce->pin_count))) {
 		intel_wakeref_t wakeref;
 
-		if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
-			err = ce->ops->alloc(ce);
-			if (unlikely(err))
-				goto err;
-
-			__set_bit(CONTEXT_ALLOC_BIT, &ce->flags);
-		}
-
 		err = 0;
 		with_intel_runtime_pm(ce->engine->uncore->rpm, wakeref)
 			err = ce->ops->pin(ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 0f5ae4ff3b10..673f5fb2967a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -31,6 +31,8 @@ void intel_context_fini(struct intel_context *ce);
 struct intel_context *
 intel_context_create(struct intel_engine_cs *engine);
 
+int intel_context_alloc_state(struct intel_context *ce);
+
 void intel_context_free(struct intel_context *ce);
 
 /**
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
