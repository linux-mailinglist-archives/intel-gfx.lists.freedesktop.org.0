Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2190F2D1591
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 17:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EB489D58;
	Mon,  7 Dec 2020 16:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E23989DB2;
 Mon,  7 Dec 2020 16:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23243234-1500050 
 for multiple; Mon, 07 Dec 2020 16:11:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 16:11:49 +0000
Message-Id: <20201207161150.1841453-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/query: Cross-check engine list
 against execbuf interface
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

Check that every engine listed can be used in execbuf.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/i915_query.c | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index e7c6fc91e..cdf2d3403 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -633,6 +633,16 @@ has_engine(struct drm_i915_query_engine_info *engines,
 	return false;
 }
 
+static void gem_context_reset_engines(int i915, uint32_t ctx)
+{
+	struct drm_i915_gem_context_param param = {
+		.ctx_id = ctx,
+		.param = I915_CONTEXT_PARAM_ENGINES,
+	};
+
+	gem_context_set_param(i915, &param);
+}
+
 static void engines(int fd)
 {
 	struct drm_i915_query_engine_info *engines;
@@ -678,10 +688,24 @@ static void engines(int fd)
 	igt_assert_eq(engines->rsvd[1], 0);
 	igt_assert_eq(engines->rsvd[2], 0);
 
-	/* Check results match the legacy GET_PARAM (where we can). */
+	/* Confirm the individual engines exist with EXECBUFFER2 */
 	for (i = 0; i < engines->num_engines; i++) {
 		struct drm_i915_engine_info *engine =
 			(struct drm_i915_engine_info *)&engines->engines[i];
+		I915_DEFINE_CONTEXT_PARAM_ENGINES(p_engines, 1) = {
+			.engines = { engine->engine }
+		};
+		struct drm_i915_gem_context_param param = {
+			.param = I915_CONTEXT_PARAM_ENGINES,
+			.value = to_user_pointer(&p_engines),
+			.size = sizeof(p_engines),
+		};
+
+		struct drm_i915_gem_exec_object2 obj = {};
+		struct drm_i915_gem_execbuffer2 execbuf = {
+			.buffers_ptr = to_user_pointer(&obj),
+			.buffer_count = 1,
+		};
 
 		igt_debug("%u: class=%u instance=%u flags=%llx capabilities=%llx\n",
 			  i,
@@ -689,6 +713,15 @@ static void engines(int fd)
 			  engine->engine.engine_instance,
 			  engine->flags,
 			  engine->capabilities);
+		gem_context_set_param(fd, &param);
+		igt_assert_eq(__gem_execbuf(fd, &execbuf), -ENOENT);
+	}
+	gem_context_reset_engines(fd, 0);
+
+	/* Check results match the legacy GET_PARAM (where we can). */
+	for (i = 0; i < engines->num_engines; i++) {
+		struct drm_i915_engine_info *engine =
+			(struct drm_i915_engine_info *)&engines->engines[i];
 
 		switch (engine->engine.engine_class) {
 		case I915_ENGINE_CLASS_RENDER:
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
