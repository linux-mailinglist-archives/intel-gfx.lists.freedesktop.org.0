Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A10E15F6C2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 20:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D416E83C;
	Fri, 14 Feb 2020 19:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1186E83C;
 Fri, 14 Feb 2020 19:24:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20230682-1500050 
 for multiple; Fri, 14 Feb 2020 19:23:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 19:23:27 +0000
Message-Id: <20200214192327.4002875-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engines: Exercise 0 engines[]
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Setup a context with no engines, and make sure we reject all execution
attempts.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_engines.c | 45 ++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index cb82f08ef..063140e0f 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -242,6 +242,48 @@ static void idempotent(int i915)
 	gem_context_destroy(i915, p.ctx_id);
 }
 
+static uint32_t batch_create(int i915)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle = gem_create(i915, 4096);
+
+	gem_write(i915, handle, 0, &bbe, sizeof(bbe));
+	return handle;
+}
+
+static void none(int i915)
+{
+	struct i915_context_param_engines engines = {};
+	struct drm_i915_gem_context_param p = {
+		.ctx_id = gem_context_create(i915),
+		.param = I915_CONTEXT_PARAM_ENGINES,
+		.value = to_user_pointer(&engines),
+		.size = sizeof(engines),
+	};
+
+	gem_context_set_param(i915, &p);
+
+	{
+		struct drm_i915_gem_exec_object2 obj = {
+			.handle = batch_create(i915),
+		};
+		struct drm_i915_gem_execbuffer2 execbuf = {
+			.buffers_ptr = to_user_pointer(&obj),
+			.buffer_count = 1,
+			.rsvd1 = p.ctx_id,
+		};
+
+		for (execbuf.flags = 0;
+		     execbuf.flags <= I915_EXEC_RING_MASK;
+		     execbuf.flags++)
+			igt_assert_eq(__gem_execbuf(i915, &execbuf), -EINVAL);
+
+		gem_close(i915, obj.handle);
+	}
+
+	gem_context_destroy(i915, p.ctx_id);
+}
+
 static void execute_one(int i915)
 {
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines , I915_EXEC_RING_MASK + 1);
@@ -527,6 +569,9 @@ igt_main
 	igt_subtest("idempotent")
 		idempotent(i915);
 
+	igt_subtest("none")
+		none(i915);
+
 	igt_subtest("execute-one")
 		execute_one(i915);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
