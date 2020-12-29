Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D92E7174
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 15:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D48894B7;
	Tue, 29 Dec 2020 14:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12147894B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 14:41:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23456666-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 14:41:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 14:41:14 +0000
Message-Id: <20201229144114.31686-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Peek at the inflight context
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

If supported by the backend, we can quickly look at the context's
inflight engine rather than search along the active list to confirm.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c          | 3 +++
 drivers/gpu/drm/i915/gt/intel_context.h              | 5 +++++
 drivers/gpu/drm/i915/gt/intel_context_types.h        | 4 ++++
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c7363036765a..68f58762d5e3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -423,6 +423,9 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	struct intel_engine_cs *engine = NULL;
 	struct i915_request *rq;
 
+	if (intel_context_has_inflight(ce))
+		return intel_context_inflight(ce);
+
 	if (!ce->timeline)
 		return NULL;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 2ce2ec639ba2..d24ab6fa0ee5 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -191,6 +191,11 @@ static inline bool intel_context_is_closed(const struct intel_context *ce)
 	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
 }
 
+static inline bool intel_context_has_inflight(const struct intel_context *ce)
+{
+	return test_bit(COPS_HAS_INFLIGHT_BIT, &ce->ops->flags);
+}
+
 static inline bool intel_context_use_semaphores(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index f7a0fb6f3a2e..430aafb78ed3 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -30,6 +30,10 @@ struct intel_context;
 struct intel_ring;
 
 struct intel_context_ops {
+	unsigned long flags;
+#define COPS_HAS_INFLIGHT_BIT 0
+#define COPS_HAS_INFLIGHT BIT(COPS_HAS_INFLIGHT_BIT)
+
 	int (*alloc)(struct intel_context *ce);
 
 	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 1fae6c6f3868..f08ba2d1f6d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2531,6 +2531,8 @@ static int execlists_context_alloc(struct intel_context *ce)
 }
 
 static const struct intel_context_ops execlists_context_ops = {
+	.flags = COPS_HAS_INFLIGHT,
+
 	.alloc = execlists_context_alloc,
 
 	.pre_pin = execlists_context_pre_pin,
@@ -3441,6 +3443,8 @@ static void virtual_context_exit(struct intel_context *ce)
 }
 
 static const struct intel_context_ops virtual_context_ops = {
+	.flags = COPS_HAS_INFLIGHT,
+
 	.alloc = virtual_context_alloc,
 
 	.pre_pin = virtual_context_pre_pin,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
