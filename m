Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D32141599A8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 20:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72AB6E153;
	Tue, 11 Feb 2020 19:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311416E153;
 Tue, 11 Feb 2020 19:23:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20191590-1500050 
 for multiple; Tue, 11 Feb 2020 19:22:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 19:22:53 +0000
Message-Id: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Race context
 closure with replace-engines
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

Tvrtko spotted a race condition between replacing a set of hanging
engines and closing the context. So exercise it.

5s is not much time to hit the small window, but a little bit of testing
several times a day is better than nothing.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 93 ++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 22f29d25e..6321dbe67 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -33,6 +33,7 @@
 #include "i915/gem_engine_topology.h"
 #include "i915/gem_ring.h"
 #include "i915/gem_submission.h"
+#include "igt_aux.h"
 #include "igt_debugfs.h"
 #include "igt_dummyload.h"
 #include "igt_gt.h"
@@ -803,6 +804,95 @@ static void replace_engines(int i915, const struct intel_execution_engine2 *e)
 	gem_quiescent_gpu(i915);
 }
 
+struct close_race {
+	int pipe[2];
+};
+
+static void race_set_engines(int i915, int fd)
+{
+	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {
+		.engines = {}
+	};
+	struct drm_i915_gem_context_param param = {
+		.param = I915_CONTEXT_PARAM_ENGINES,
+		.value = to_user_pointer(&engines),
+		.size = sizeof(engines),
+	};
+
+	while (read(fd, &param.ctx_id, sizeof(param.ctx_id)) > 0) {
+		if (!param.ctx_id)
+			break;
+		__gem_context_set_param(i915, &param);
+	}
+}
+
+static void close_replace_race(int i915)
+{
+	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
+	struct close_race *t;
+	int fence = -1;
+
+	/*
+	 * Tvrtko being the evil genius noticed that if we could successfully
+	 * replace a set of engines after the context had been closed, those
+	 * engines could escape oversight.
+	 */
+
+	t = malloc(sizeof(*t) * ncpus);
+	igt_assert(t);
+
+	for (int i = 0; i < ncpus; i++)
+		igt_assert(pipe(t[i].pipe) == 0);
+
+	igt_fork(child, ncpus) {
+		close(t[child].pipe[1]);
+		race_set_engines(i915, t[child].pipe[0]);
+	}
+
+	for (int i = 0; i < ncpus; i++)
+		close(t[i].pipe[0]);
+
+	igt_until_timeout(5) {
+		igt_spin_t *spin;
+		uint32_t ctx;
+
+		ctx = gem_context_clone_with_engines(i915, 0);
+		gem_context_set_persistence(i915, ctx, true);
+
+		spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_FENCE_OUT);
+		for (int i = 0; i < ncpus; i++)
+			write(t[i].pipe[1], &ctx, sizeof(ctx));
+
+		if (fence < 0) {
+			fence = spin->out_fence;
+		} else {
+			int tmp;
+
+			tmp = sync_fence_merge(fence, spin->out_fence);
+			close(fence);
+			close(spin->out_fence);
+
+			fence = tmp;
+		}
+		spin->out_fence = -1;
+
+		gem_context_destroy(i915, ctx);
+	}
+
+	for (int i = 0; i < ncpus; i++) {
+		uint32_t end = 0;
+		write(t[i].pipe[1], &end, sizeof(end));
+		close(t[i].pipe[1]);
+	}
+	igt_waitchildren();
+	free(t);
+
+	igt_assert(sync_fence_wait(fence, MSEC_PER_SEC / 2) == 0);
+	close(fence);
+
+	gem_quiescent_gpu(i915);
+}
+
 static void replace_engines_hostile(int i915,
 				    const struct intel_execution_engine2 *e)
 {
@@ -961,6 +1051,9 @@ igt_main
 					replace_engines_hostile(i915, e);
 			}
 		}
+
+		igt_subtest("close-replace-race")
+			close_replace_race(i915);
 	}
 
 	igt_fixture {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
