Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D48D146844
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 13:43:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7CA76FC68;
	Thu, 23 Jan 2020 12:43:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7F06FC68;
 Thu, 23 Jan 2020 12:43:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 04:43:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,353,1574150400"; d="scan'208";a="222333440"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.10.247])
 by fmsmga008.fm.intel.com with ESMTP; 23 Jan 2020 04:43:09 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 23 Jan 2020 12:43:06 +0000
Message-Id: <20200123124306.18857-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_engine_topology: Introduce and
 use gem_context_clone_with_engines
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

In test cases which create new contexts and submit work against them using
the passed in engine index we are sometimes unsure whether this engine
index was potentially created based on a default context with engine map
configured (such as when under the __for_each_physical_engine iterator.

To simplify test code we add gem_context/queue_clone_with_engines which
is to be used in such scenario instead of the current pattern of
gem_context_create followed by gem_context_set_all_engines (which is also
removed by the patch).

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/i915/gem_context.c         | 59 ++++++++++++++++++++++++++++++++++
 lib/i915/gem_context.h         |  4 +++
 lib/i915/gem_engine_topology.c | 11 -------
 lib/i915/gem_engine_topology.h |  2 --
 tests/i915/gem_ctx_clone.c     | 15 +--------
 tests/i915/gem_ctx_switch.c    | 19 ++++-------
 tests/i915/gem_exec_parallel.c |  3 +-
 tests/i915/gem_spin_batch.c    | 11 +++----
 tests/perf_pmu.c               |  3 +-
 9 files changed, 76 insertions(+), 51 deletions(-)

diff --git a/lib/i915/gem_context.c b/lib/i915/gem_context.c
index 1fae5191f83f..f92d5ff3dfc5 100644
--- a/lib/i915/gem_context.c
+++ b/lib/i915/gem_context.c
@@ -372,6 +372,50 @@ uint32_t gem_context_clone(int i915,
 	return ctx;
 }
 
+bool gem_has_context_clone(int i915)
+{
+	struct drm_i915_gem_context_create_ext_clone ext = {
+		{ .name = I915_CONTEXT_CREATE_EXT_CLONE },
+		.clone_id = -1,
+	};
+	struct drm_i915_gem_context_create_ext create = {
+		.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
+		.extensions = to_user_pointer(&ext),
+	};
+	int err;
+
+	err = 0;
+	if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, &create)) {
+		err = -errno;
+		igt_assume(err);
+	}
+	errno = 0;
+
+	return err == -ENOENT;
+}
+
+/**
+ * gem_context_clone_with_engines:
+ * @i915: open i915 drm file descriptor
+ * @src: i915 context id
+ *
+ * Special purpose wrapper to create a new context by cloning engines from @src.
+ *
+ * In can be called regardless of whether the kernel supports context cloning.
+ *
+ * Intended purpose is to use for creating contexts against which work will be
+ * submitted and the engine index came from external source, derived from a
+ * default context potentially configured with an engine map.
+ */
+uint32_t gem_context_clone_with_engines(int i915, uint32_t src)
+{
+	if (!gem_has_context_clone(i915))
+		return gem_context_create(i915);
+	else
+		return gem_context_clone(i915, src, 0,
+					 I915_CONTEXT_CLONE_ENGINES);
+}
+
 uint32_t gem_queue_create(int i915)
 {
 	return gem_context_clone(i915, 0,
@@ -379,6 +423,21 @@ uint32_t gem_queue_create(int i915)
 				 I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE);
 }
 
+/**
+ * gem_queue_clone_with_engines:
+ * @i915: open i915 drm file descriptor
+ * @src: i915 context id
+ *
+ * See gem_context_clone_with_engines.
+ */
+uint32_t gem_queue_clone_with_engines(int i915, uint32_t src)
+{
+	return gem_context_clone(i915, src,
+				 I915_CONTEXT_CLONE_ENGINES |
+				 I915_CONTEXT_CLONE_VM,
+				 I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE);
+}
+
 bool gem_context_has_engine(int fd, uint32_t ctx, uint64_t engine)
 {
 	struct drm_i915_gem_exec_object2 exec = {};
diff --git a/lib/i915/gem_context.h b/lib/i915/gem_context.h
index c0d4c9615677..cf2ba33fee8f 100644
--- a/lib/i915/gem_context.h
+++ b/lib/i915/gem_context.h
@@ -41,8 +41,10 @@ int __gem_context_clone(int i915,
 uint32_t gem_context_clone(int i915,
 			   uint32_t src, unsigned int share,
 			   unsigned int flags);
+uint32_t gem_context_clone_with_engines(int i915, uint32_t src);
 
 uint32_t gem_queue_create(int i915);
+uint32_t gem_queue_clone_with_engines(int i915, uint32_t src);
 
 bool gem_contexts_has_shared_gtt(int i915);
 bool gem_has_queues(int i915);
@@ -52,6 +54,8 @@ void gem_require_contexts(int fd);
 void gem_context_require_bannable(int fd);
 void gem_context_require_param(int fd, uint64_t param);
 
+bool gem_has_context_clone(int i915);
+
 void gem_context_get_param(int fd, struct drm_i915_gem_context_param *p);
 void gem_context_set_param(int fd, struct drm_i915_gem_context_param *p);
 int __gem_context_set_param(int fd, struct drm_i915_gem_context_param *p);
diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 989a6e26d6ef..43a99e0ff680 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -274,17 +274,6 @@ int gem_context_lookup_engine(int fd, uint64_t engine, uint32_t ctx_id,
 	return 0;
 }
 
-void gem_context_set_all_engines(int fd, uint32_t ctx)
-{
-	DEFINE_CONTEXT_ENGINES_PARAM(engines, param, ctx, GEM_MAX_ENGINES);
-	struct intel_engine_data engine_data = { };
-
-	if (!gem_topology_get_param(fd, &param) && !param.size) {
-		query_engine_list(fd, &engine_data);
-		ctx_map_engines(fd, &engine_data, &param);
-	}
-}
-
 bool gem_has_engine_topology(int fd)
 {
 	struct drm_i915_gem_context_param param = {
diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
index 525741cc8a08..e40d7ec8320c 100644
--- a/lib/i915/gem_engine_topology.h
+++ b/lib/i915/gem_engine_topology.h
@@ -51,8 +51,6 @@ void intel_next_engine(struct intel_engine_data *ed);
 int gem_context_lookup_engine(int fd, uint64_t engine, uint32_t ctx_id,
 			      struct intel_execution_engine2 *e);
 
-void gem_context_set_all_engines(int fd, uint32_t ctx);
-
 bool gem_context_has_engine_map(int fd, uint32_t ctx);
 
 bool gem_engine_is_equal(const struct intel_execution_engine2 *e1,
diff --git a/tests/i915/gem_ctx_clone.c b/tests/i915/gem_ctx_clone.c
index 896b24dce39c..471031d4245b 100644
--- a/tests/i915/gem_ctx_clone.c
+++ b/tests/i915/gem_ctx_clone.c
@@ -40,19 +40,6 @@ static int ctx_create_ioctl(int i915, struct drm_i915_gem_context_create_ext *ar
 	return err;
 }
 
-static bool has_ctx_clone(int i915)
-{
-	struct drm_i915_gem_context_create_ext_clone ext = {
-		{ .name = I915_CONTEXT_CREATE_EXT_CLONE },
-		.clone_id = -1,
-	};
-	struct drm_i915_gem_context_create_ext create = {
-		.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
-		.extensions = to_user_pointer(&ext),
-	};
-	return ctx_create_ioctl(i915, &create) == -ENOENT;
-}
-
 static void invalid_clone(int i915)
 {
 	struct drm_i915_gem_context_create_ext_clone ext = {
@@ -436,7 +423,7 @@ igt_main
 		igt_require_gem(i915);
 		gem_require_contexts(i915);
 
-		igt_require(has_ctx_clone(i915));
+		igt_require(gem_has_context_clone(i915));
 		igt_fork_hang_detector(i915);
 	}
 
diff --git a/tests/i915/gem_ctx_switch.c b/tests/i915/gem_ctx_switch.c
index 6bbd24972676..a65d1b02f5ee 100644
--- a/tests/i915/gem_ctx_switch.c
+++ b/tests/i915/gem_ctx_switch.c
@@ -63,10 +63,8 @@ static int measure_qlen(int fd,
 	uint32_t ctx[64];
 	int min = INT_MAX, max = 0;
 
-	for (int i = 0; i < ARRAY_SIZE(ctx); i++) {
-		ctx[i] = gem_context_create(fd);
-		gem_context_set_all_engines(fd, ctx[i]);
-	}
+	for (int i = 0; i < ARRAY_SIZE(ctx); i++)
+		ctx[i] = gem_context_clone_with_engines(fd, 0);
 
 	for (unsigned int n = 0; n < engines->nengines; n++) {
 		uint64_t saved = execbuf->flags;
@@ -130,12 +128,9 @@ static void single(int fd, uint32_t handle,
 
 	for (n = 0; n < 64; n++) {
 		if (flags & QUEUE)
-			contexts[n] = gem_queue_create(fd);
+			contexts[n] = gem_queue_clone_with_engines(fd, 0);
 		else
-			contexts[n] = gem_context_create(fd);
-
-		if (gem_context_has_engine_map(fd, 0))
-			gem_context_set_all_engines(fd, contexts[n]);
+			contexts[n] = gem_context_clone_with_engines(fd, 0);
 	}
 
 	memset(&obj, 0, sizeof(obj));
@@ -237,11 +232,9 @@ static void all(int fd, uint32_t handle, unsigned flags, int timeout)
 
 	for (n = 0; n < ARRAY_SIZE(contexts); n++) {
 		if (flags & QUEUE)
-			contexts[n] = gem_queue_create(fd);
+			contexts[n] = gem_queue_clone_with_engines(fd, 0);
 		else
-			contexts[n] = gem_context_create(fd);
-
-		gem_context_set_all_engines(fd, contexts[n]);
+			contexts[n] = gem_context_clone_with_engines(fd, 0);
 	}
 
 	memset(obj, 0, sizeof(obj));
diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
index 56b26cf4dd7b..cfbe78070873 100644
--- a/tests/i915/gem_exec_parallel.c
+++ b/tests/i915/gem_exec_parallel.c
@@ -127,8 +127,7 @@ static void *thread(void *data)
 	if (t->gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
 	if (t->flags & CONTEXTS) {
-		execbuf.rsvd1 = gem_context_create(fd);
-		gem_context_set_all_engines(fd, execbuf.rsvd1);
+		execbuf.rsvd1 = gem_context_clone_with_engines(fd, 0);
 	}
 
 	for (i = 0; i < 16; i++) {
diff --git a/tests/i915/gem_spin_batch.c b/tests/i915/gem_spin_batch.c
index c5114ac79b0e..1142a77c7d7f 100644
--- a/tests/i915/gem_spin_batch.c
+++ b/tests/i915/gem_spin_batch.c
@@ -73,9 +73,10 @@ static void spin(int fd, const struct intel_execution_engine2 *e2,
 static void spin_resubmit(int fd, const struct intel_execution_engine2 *e2,
 			  unsigned int flags)
 {
-	const uint32_t ctx0 = gem_context_create(fd);
-	const uint32_t ctx1 = (flags & RESUBMIT_NEW_CTX) ?
-		gem_context_create(fd) : ctx0;
+	const uint32_t ctx0 = gem_context_clone_with_engines(fd, 0);
+	const uint32_t ctx1 =
+		(flags & RESUBMIT_NEW_CTX) ?
+		gem_context_clone_with_engines(fd, 0) : ctx0;
 	igt_spin_t *spin = __igt_spin_new(fd, .ctx = ctx0, .engine = e2->flags);
 	const struct intel_execution_engine2 *other;
 
@@ -89,10 +90,6 @@ static void spin_resubmit(int fd, const struct intel_execution_engine2 *e2,
 		   !(flags & RESUBMIT_ALL_ENGINES));
 
 	if (flags & RESUBMIT_ALL_ENGINES) {
-		gem_context_set_all_engines(fd, ctx0);
-		if (ctx0 != ctx1)
-			gem_context_set_all_engines(fd, ctx1);
-
 		for_each_context_engine(fd, ctx1, other) {
 			if (gem_engine_is_equal(other, e2))
 				continue;
diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
index 3e179daef9d5..e17efe293f96 100644
--- a/tests/perf_pmu.c
+++ b/tests/perf_pmu.c
@@ -361,8 +361,7 @@ busy_double_start(int gem_fd, const struct intel_execution_engine2 *e)
 	uint32_t ctx;
 	int fd;
 
-	ctx = gem_context_create(gem_fd);
-	gem_context_set_all_engines(gem_fd, ctx);
+	ctx = gem_context_clone_with_engines(gem_fd, 0);
 
 	/*
 	 * Defeat the busy stats delayed disable, we need to guarantee we are
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
