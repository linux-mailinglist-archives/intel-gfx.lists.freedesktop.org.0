Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FEE15F6FD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 20:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFE36FBAB;
	Fri, 14 Feb 2020 19:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EF86E867;
 Fri, 14 Feb 2020 19:40:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20230820-1500050 
 for multiple; Fri, 14 Feb 2020 19:40:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 19:40:14 +0000
Message-Id: <20200214194016.4054376-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
References: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] i915/gem_ctx_engine: Exercise
 for_each_context_engine() with custom engine[]
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

Set up a custom engine map with no engines, and check that the
for_each_context_engine() correctly iterates over nothing.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_engines.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index 063140e0f..6a2edd1e0 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -549,6 +549,31 @@ static void independent(int i915)
 	gem_context_destroy(i915, param.ctx_id);
 }
 
+static void libapi(int i915)
+{
+	struct i915_context_param_engines engines = {};
+	struct drm_i915_gem_context_param p = {
+		.ctx_id = gem_context_create(i915),
+		.param = I915_CONTEXT_PARAM_ENGINES,
+		.value = to_user_pointer(&engines),
+		.size = sizeof(engines),
+	};
+	const struct intel_execution_engine2 *e;
+	unsigned int count = 0;
+
+	gem_context_set_param(i915, &p);
+
+	for_each_context_engine(i915, p.ctx_id, e)
+		count++;
+	igt_assert_eq(count, 0);
+
+	____for_each_physical_engine(i915, p.ctx_id, e)
+		count++;
+	igt_assert_eq(count, 0);
+
+	gem_context_destroy(i915, p.ctx_id);
+}
+
 igt_main
 {
 	int i915 = -1;
@@ -584,6 +609,9 @@ igt_main
 	igt_subtest("independent")
 		independent(i915);
 
+	igt_subtest("libapi")
+		libapi(i915);
+
 	igt_fixture
 		igt_stop_hang_detector();
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
