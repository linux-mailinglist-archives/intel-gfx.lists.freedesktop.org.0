Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2DE1531E4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 14:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9194789F35;
	Wed,  5 Feb 2020 13:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84F289F35;
 Wed,  5 Feb 2020 13:32:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20124671-1500050 
 for multiple; Wed, 05 Feb 2020 13:31:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 13:31:54 +0000
Message-Id: <20200205133154.1886680-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Check that we
 cannot hide hangs on old engines
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

As the kernel loses track of the context's old engines, if we request
that the context is non-persistent then any request on the untracked
engines must be cancelled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 62 +++++++++++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index c54797e9b..0db5c31c2 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -761,6 +761,51 @@ static void smoketest(int i915)
 	gem_quiescent_gpu(i915);
 }
 
+static void replace_engines_hostile(int i915,
+				    const struct intel_execution_engine2 *e)
+{
+	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {
+		.engines = {{ e->class, e->instance }}
+	};
+	struct drm_i915_gem_context_param param = {
+		.ctx_id = gem_context_create(i915),
+		.param = I915_CONTEXT_PARAM_ENGINES,
+		.value = to_user_pointer(&engines),
+		.size = sizeof(engines),
+	};
+	igt_spin_t *spin[2];
+	int64_t timeout;
+
+	/*
+	 * Suppose the user tries to hide a hanging batch by replacing
+	 * the set of engines on the context so that it's not visible
+	 * at the time of closure? Then we must act when they replace
+	 * the engines!
+	 */
+
+	gem_context_set_persistence(i915, param.ctx_id, false);
+
+	gem_context_set_param(i915, &param);
+	spin[0] = igt_spin_new(i915, param.ctx_id,
+			       .flags = IGT_SPIN_NO_PREEMPTION);
+
+	gem_context_set_param(i915, &param);
+	spin[1] = igt_spin_new(i915, param.ctx_id,
+			       .flags = IGT_SPIN_NO_PREEMPTION);
+
+	gem_context_destroy(i915, param.ctx_id);
+
+	timeout = reset_timeout_ms * NSEC_PER_MSEC;
+	igt_assert_eq(gem_wait(i915, spin[1]->handle, &timeout), 0);
+
+	timeout = reset_timeout_ms * NSEC_PER_MSEC;
+	igt_assert_eq(gem_wait(i915, spin[0]->handle, &timeout), 0);
+
+	igt_spin_free(i915, spin[1]);
+	igt_spin_free(i915, spin[0]);
+	gem_quiescent_gpu(i915);
+}
+
 int i915;
 
 static void exit_handler(int sig)
@@ -793,10 +838,10 @@ igt_main
 		igt_assert(igt_sysfs_set_parameter
 			   (i915, "reset", "%d", -1 /* any [default] reset */));
 
-		igt_require(has_persistence(i915));
 		enable_hangcheck(i915);
 		igt_install_exit_handler(exit_handler);
 
+		igt_require(has_persistence(i915));
 		igt_allow_hang(i915, 0, 0);
 	}
 
@@ -861,6 +906,21 @@ igt_main
 			smoketest(i915);
 	}
 
+	/* Check interactions with set-engines */
+	igt_subtest_group {
+		const struct intel_execution_engine2 *e;
+
+		igt_fixture
+			gem_require_contexts(i915);
+
+		igt_subtest_with_dynamic("replace-hostile") {
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					replace_engines_hostile(i915, e);
+			}
+		}
+	}
+
 	igt_fixture {
 		close(i915);
 	}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
