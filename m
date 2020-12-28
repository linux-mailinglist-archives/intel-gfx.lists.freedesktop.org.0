Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B952E649E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA80689AAD;
	Mon, 28 Dec 2020 15:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E43899DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448180-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:51:38 +0000
Message-Id: <20201228155229.9516-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/54] drm/i915/gem: Peek at the inflight context
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

If supported by the backend, we can quickly look at the context's
inflight engine rather than search along the active list to confirm.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c          |  3 +++
 drivers/gpu/drm/i915/gt/intel_context.h              | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h        |  9 +++++----
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c |  1 +
 4 files changed, 19 insertions(+), 4 deletions(-)

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
index 2ce2ec639ba2..ecab3a7e4d1d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -191,6 +191,16 @@ static inline bool intel_context_is_closed(const struct intel_context *ce)
 	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
 }
 
+static inline void intel_context_set_inflight(struct intel_context *ce)
+{
+	return __set_bit(CONTEXT_HAS_INFLIGHT, &ce->flags);
+}
+
+static inline bool intel_context_has_inflight(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_HAS_INFLIGHT, &ce->flags);
+}
+
 static inline bool intel_context_use_semaphores(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index f7a0fb6f3a2e..679b268f0911 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -87,10 +87,11 @@ struct intel_context {
 #define CONTEXT_ALLOC_BIT		1
 #define CONTEXT_VALID_BIT		2
 #define CONTEXT_CLOSED_BIT		3
-#define CONTEXT_USE_SEMAPHORES		4
-#define CONTEXT_BANNED			5
-#define CONTEXT_FORCE_SINGLE_SUBMISSION	6
-#define CONTEXT_NOPREEMPT		7
+#define CONTEXT_HAS_INFLIGHT		4
+#define CONTEXT_USE_SEMAPHORES		5
+#define CONTEXT_BANNED			6
+#define CONTEXT_FORCE_SINGLE_SUBMISSION	7
+#define CONTEXT_NOPREEMPT		8
 
 	u32 *lrc_reg_state;
 	union {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index cdd7606a65d4..5969e688f78e 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2532,6 +2532,7 @@ static int __execlists_context_alloc(struct intel_context *ce,
 	if (err)
 		goto err_lrc;
 
+	intel_context_set_inflight(ce);
 	return 0;
 
 err_lrc:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
