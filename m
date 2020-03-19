Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B2B18AFB6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4F56E9BD;
	Thu, 19 Mar 2020 09:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AD026E9BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 09:19:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20613253-1500050 
 for multiple; Thu, 19 Mar 2020 09:19:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 09:19:42 +0000
Message-Id: <20200319091943.7815-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200319091943.7815-1-chris@chris-wilson.co.uk>
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Use explicit flag to mark
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
 drivers/gpu/drm/i915/gt/intel_context.h        | 5 +++++
 drivers/gpu/drm/i915/gt/intel_context_types.h  | 9 +++++----
 4 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 05fed8797d37..1280b627adcf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -573,7 +573,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 		int err;
 
 		/* serialises with execbuf */
-		RCU_INIT_POINTER(ce->gem_context, NULL);
+		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
 		if (!intel_context_pin_if_active(ce))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 042a9ccf348f..5c6bcf2b4488 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2354,7 +2354,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	prev = __i915_request_commit(rq);
 
 	/* Check that the context wasn't destroyed before submission */
-	if (likely(rcu_access_pointer(eb->context->gem_context))) {
+	if (likely(!intel_context_is_closed(eb->context))) {
 		attr = eb->gem_context->sched;
 
 		/*
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index ee5d47165c12..02df04f76547 100644
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
index fd2703efc10c..418516fd9b9e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -62,10 +62,11 @@ struct intel_context {
 #define CONTEXT_BARRIER_BIT		0
 #define CONTEXT_ALLOC_BIT		1
 #define CONTEXT_VALID_BIT		2
-#define CONTEXT_USE_SEMAPHORES		3
-#define CONTEXT_BANNED			4
-#define CONTEXT_NOPREEMPT		5
-#define CONTEXT_GVT			6
+#define CONTEXT_CLOSED_BIT		3
+#define CONTEXT_USE_SEMAPHORES		4
+#define CONTEXT_BANNED			5
+#define CONTEXT_NOPREEMPT		6
+#define CONTEXT_GVT			7
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
