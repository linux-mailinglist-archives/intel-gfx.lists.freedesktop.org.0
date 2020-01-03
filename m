Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 502C812FA63
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 17:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9C16E106;
	Fri,  3 Jan 2020 16:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714AE6E106
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 16:29:56 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 17:29:53 +0100
Message-Id: <20200103162953.783184-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove nest annotation from
 intel_context_unpin
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

Lets see what breaks, round 3?

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 27 +++++++++++++------
 drivers/gpu/drm/i915/gt/intel_context_types.h |  1 +
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index fbaa9df6f436..671049695e6b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -47,21 +47,30 @@ int __intel_context_do_pin(struct intel_context *ce)
 {
 	int err;
 
-	if (mutex_lock_interruptible(&ce->pin_mutex))
-		return -EINTR;
-
-	if (likely(!atomic_read(&ce->pin_count))) {
-		intel_wakeref_t wakeref;
+	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
+		err = mutex_lock_interruptible(&ce->alloc_mutex);
+		if (err)
+			return err;
 
-		if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
+		if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
 			err = ce->ops->alloc(ce);
 			if (unlikely(err))
 				goto err;
 
+			smp_mb(); /* Make sure allocation is flushed to memory */
+
 			__set_bit(CONTEXT_ALLOC_BIT, &ce->flags);
 		}
+		mutex_unlock(&ce->alloc_mutex);
+	}
+
+	err = mutex_lock_interruptible(&ce->pin_mutex);
+	if (err)
+		return err;
+
+	if (likely(!atomic_read(&ce->pin_count))) {
+		intel_wakeref_t wakeref;
 
-		err = 0;
 		with_intel_runtime_pm(ce->engine->uncore->rpm, wakeref)
 			err = ce->ops->pin(ce);
 		if (err)
@@ -91,7 +100,7 @@ void intel_context_unpin(struct intel_context *ce)
 
 	/* We may be called from inside intel_context_pin() to evict another */
 	intel_context_get(ce);
-	mutex_lock_nested(&ce->pin_mutex, SINGLE_DEPTH_NESTING);
+	mutex_lock(&ce->pin_mutex);
 
 	if (likely(atomic_dec_and_test(&ce->pin_count))) {
 		CE_TRACE(ce, "retire\n");
@@ -228,6 +237,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	mutex_init(&ce->alloc_mutex);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -239,6 +249,7 @@ void intel_context_fini(struct intel_context *ce)
 		intel_timeline_put(ce->timeline);
 	i915_vm_put(ce->vm);
 
+	mutex_destroy(&ce->alloc_mutex);
 	mutex_destroy(&ce->pin_mutex);
 	i915_active_fini(&ce->active);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ca1420fb8b53..abae296980fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -72,6 +72,7 @@ struct intel_context {
 
 	atomic_t pin_count;
 	struct mutex pin_mutex; /* guards pinning and associated on-gpuing */
+	struct mutex alloc_mutex; /* guards against concurrent contex allocation */
 
 	/**
 	 * active: Active tracker for the rq activity (inc. external) on this
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
