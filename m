Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305A318BD8D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 18:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621AC89BA5;
	Thu, 19 Mar 2020 17:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A8526EA42
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 17:07:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20620842-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 17:07:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 17:07:06 +0000
Message-Id: <20200319170707.8262-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915: Use explicit flag to mark
 unreachable intel_context
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

I need to keep the GEM context around a bit longer so adding an explicit
flag for syncing execbuf with closed/abandonded contexts.

v2:
 * Use already available context flags. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c    | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_context.c        | 2 ++
 drivers/gpu/drm/i915/gt/intel_context.h        | 5 +++++
 drivers/gpu/drm/i915/gt/intel_context_types.h  | 9 +++++----
 5 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c0e476fcd1fa..50e7580f9337 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -574,7 +574,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 		int err = 0;
 
 		/* serialises with execbuf */
-		RCU_INIT_POINTER(ce->gem_context, NULL);
+		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..36d069504836 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2316,7 +2316,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	prev = __i915_request_commit(rq);
 
 	/* Check that the context wasn't destroyed before submission */
-	if (likely(rcu_access_pointer(eb->context->gem_context))) {
+	if (likely(!intel_context_is_closed(eb->context))) {
 		attr = eb->gem_context->sched;
 
 		/*
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 01474d3a558b..aea992e46c42 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -97,6 +97,8 @@ int __intel_context_do_pin(struct intel_context *ce)
 {
 	int err;
 
+	GEM_BUG_ON(intel_context_is_closed(ce));
+
 	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
 		err = intel_context_alloc_state(ce);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 18efad255124..07be021882cc 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -173,6 +173,11 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
 	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
 }
 
+static inline bool intel_context_is_closed(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
+}
+
 static inline bool intel_context_use_semaphores(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 0f3b68b95c56..07cb83a0d017 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -62,10 +62,11 @@ struct intel_context {
 #define CONTEXT_BARRIER_BIT		0
 #define CONTEXT_ALLOC_BIT		1
 #define CONTEXT_VALID_BIT		2
-#define CONTEXT_USE_SEMAPHORES		3
-#define CONTEXT_BANNED			4
-#define CONTEXT_FORCE_SINGLE_SUBMISSION	5
-#define CONTEXT_NOPREEMPT		6
+#define CONTEXT_CLOSED_BIT		3
+#define CONTEXT_USE_SEMAPHORES		4
+#define CONTEXT_BANNED			5
+#define CONTEXT_FORCE_SINGLE_SUBMISSION	6
+#define CONTEXT_NOPREEMPT		7
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
