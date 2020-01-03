Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 175C012F8FC
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 14:57:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFB16E317;
	Fri,  3 Jan 2020 13:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB2A6E317
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 13:57:27 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 14:57:24 +0100
Message-Id: <20200103135724.780841-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Remove nest annotation from
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

Lets see what breaks? Round 2?

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 28 +++++++++++++------
 drivers/gpu/drm/i915/gt/intel_context_types.h |  1 +
 2 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 61c39e943f69..614258e268e4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -48,21 +48,30 @@ int __intel_context_do_pin(struct intel_context *ce)
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
@@ -95,14 +104,13 @@ void intel_context_unpin(struct intel_context *ce)
 
 	/* We may be called from inside intel_context_pin() to evict another */
 	intel_context_get(ce);
-	mutex_lock_nested(&ce->pin_mutex, SINGLE_DEPTH_NESTING);
+	mutex_lock(&ce->pin_mutex);
 
 	if (likely(atomic_dec_and_test(&ce->pin_count))) {
 		GEM_TRACE("%s context:%llx retire\n",
 			  ce->engine->name, ce->timeline->fence_context);
 
 		ce->ops->unpin(ce);
-
 		i915_gem_context_put(ce->gem_context);
 		intel_context_active_release(ce);
 	}
@@ -246,6 +254,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	mutex_init(&ce->alloc_mutex);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -257,6 +266,7 @@ void intel_context_fini(struct intel_context *ce)
 		intel_timeline_put(ce->timeline);
 	i915_vm_put(ce->vm);
 
+	mutex_destroy(&ce->alloc_mutex);
 	mutex_destroy(&ce->pin_mutex);
 	i915_active_fini(&ce->active);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index d1204cc899a3..a987df89caaf 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -65,6 +65,7 @@ struct intel_context {
 
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
