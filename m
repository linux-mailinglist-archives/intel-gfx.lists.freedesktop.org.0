Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 835524E6FCB
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8B210E72B;
	Fri, 25 Mar 2022 09:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00BD010E72A;
 Fri, 25 Mar 2022 09:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648199421; x=1679735421;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bg4kbnwVOSjpDe5O+WOYHyqZ7GSV9huflfozXOknWgQ=;
 b=dtH+BQ6k+fSsZf0Lq8/VyrjlwAb4+yLd0yWaRYtC6EBMjd59uX3E3Ph4
 M1LL3e0ANzY1rA+3S6Y1ueAMdGmqeC87ZxnaXLf7tUi+eSmdUD63G56m4
 U1L6sR3Z98qkeUMvt9IJ/aiEh0fkmbqh3FrOh9nobFDLB5F9VdX/rUuc6
 2AwFnYrh3WBvp5KMtPRI6eGv4lFalS8wmZ0N6aEMGvHQ+7nBma/3eE4n8
 L65d0cHGMAHety6FxFVcMTneaqGlJabzHt1MXc7FY77hGUg73x5F3RPgp
 HSMnnRDT3w4s7MtLPdEL7VOXJ8R/pN1sCqzUHSM5h4X33M+vTAcSFUDWY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258559413"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258559413"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:10:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561760179"
Received: from mhenry-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.10.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:10:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 25 Mar 2022 09:09:57 +0000
Message-Id: <20220325090958.408654-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325090958.408654-1-matthew.auld@intel.com>
References: <20220325090958.408654-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 2/3] test/gem_lmem_swapping: fix
 physical engine usage
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

During execbuf DG2 currently just hits:

	"execbuf with unknown ring: 5"

It looks like the fix is to convert the test over to using the
non-legacy API where we instead fill the ctx with all the physical
engines and then engine/ring becomes the index into this.

v2:
  - Make sure we destroy our newly created contexts(Ashutosh)
  - Tweak the commit message so that we are talking less nonsense(Tvrtko)
  - s/i915/fd/ when calling set_persistence

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5192
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_lmem_swapping.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 193ff370..526835cc 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -126,6 +126,7 @@ verify_object(int i915, const struct object *obj,  unsigned int flags)
 }
 
 static void move_to_lmem(int i915,
+			 const intel_ctx_t *ctx,
 			 struct object *list,
 			 unsigned int num,
 			 uint32_t batch,
@@ -137,6 +138,7 @@ static void move_to_lmem(int i915,
 		.buffers_ptr = to_user_pointer(obj),
 		.buffer_count = 1 + num,
 		.flags = I915_EXEC_NO_RELOC | I915_EXEC_HANDLE_LUT | engine,
+		.rsvd1 = ctx->id,
 	};
 	unsigned int i, ret;
 
@@ -156,6 +158,7 @@ retry:
 }
 
 static void __do_evict(int i915,
+		       const intel_ctx_t *ctx,
 		       struct drm_i915_gem_memory_class_instance *region,
 		       struct params *params,
 		       unsigned int seed)
@@ -170,7 +173,6 @@ static void __do_evict(int i915,
 	struct timespec t = {};
 	unsigned int num;
 
-	__gem_context_set_persistence(i915, 0, false);
 	size = 4096;
 	batch = create_bo(i915, &size, region, params->oom_test);
 
@@ -201,7 +203,7 @@ static void __do_evict(int i915,
 		}
 		obj->handle = create_bo(i915, &obj->size, region, params->oom_test);
 
-		move_to_lmem(i915, objects + i, 1, batch, engine,
+		move_to_lmem(i915, ctx, objects + i, 1, batch, engine,
 			     params->oom_test);
 		if (params->flags & TEST_VERIFY)
 			init_object(i915, obj, rand(), params->flags);
@@ -226,7 +228,7 @@ static void __do_evict(int i915,
 			idx = (idx + 1) % params->count;
 		}
 
-		move_to_lmem(i915, list, num, batch, engine, params->oom_test);
+		move_to_lmem(i915, ctx, list, num, batch, engine, params->oom_test);
 
 		if (params->flags & TEST_ENGINES)
 			engine = (engine + 1) % __num_engines__;
@@ -342,6 +344,7 @@ static void fill_params(int i915, struct params *params,
 }
 
 static void test_evict(int i915,
+		       const intel_ctx_t *ctx,
 		       struct drm_i915_memory_region_info *region,
 		       unsigned int flags)
 {
@@ -353,14 +356,18 @@ static void test_evict(int i915,
 	if (flags & TEST_PARALLEL) {
 		int fd = gem_reopen_driver(i915);
 
+		ctx = intel_ctx_create_all_physical(fd);
+		__gem_context_set_persistence(fd, ctx->id, false);
+
 		igt_fork(child, nproc)
-			__do_evict(fd, &region->region, &params,
+			__do_evict(fd, ctx, &region->region, &params,
 				   params.seed + child + 1);
 
 		igt_waitchildren();
+		intel_ctx_destroy(fd, ctx);
 		close(fd);
 	} else {
-		__do_evict(i915, &region->region, &params, params.seed);
+		__do_evict(i915, ctx, &region->region, &params, params.seed);
 	}
 }
 
@@ -399,6 +406,7 @@ static void smem_oom_exit_handler(int sig)
 }
 
 static void test_smem_oom(int i915,
+			  const intel_ctx_t *ctx,
 			  struct drm_i915_memory_region_info *region)
 {
 	const uint64_t smem_size = intel_get_total_ram_mb() +
@@ -421,7 +429,7 @@ static void test_smem_oom(int i915,
 		fill_params(i915, &params, region, 0, 1, true);
 
 		igt_install_exit_handler(smem_oom_exit_handler);
-		__do_evict(fd, &region->region, &params,
+		__do_evict(fd, ctx, &region->region, &params,
 			   params.seed + child + 1);
 
 		close(fd);
@@ -513,6 +521,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		{ "parallel-multi", TEST_PARALLEL | TEST_RANDOM | TEST_VERIFY | TEST_ENGINES | TEST_MULTI },
 		{ }
 	};
+	const intel_ctx_t *ctx;
 	int i915 = -1;
 
 	igt_fixture {
@@ -528,19 +537,23 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		for_each_physical_engine(i915, e)
 			__num_engines__++;
 		igt_require(__num_engines__);
+		ctx = intel_ctx_create_all_physical(i915);
+		__gem_context_set_persistence(i915, ctx->id, false);
+
 	}
 
 	for (test = tests; test->name; test++) {
 		igt_describe("Exercise local memory swapping to system memory");
 		dynamic_lmem_subtest(region, regions, test->name)
-			test_evict(i915, region, test->flags);
+			test_evict(i915, ctx, region, test->flags);
 	}
 
 	igt_describe("Exercise local memory swapping during exhausting system memory");
 	dynamic_lmem_subtest(region, regions, "smem-oom")
-		test_smem_oom(i915, region);
+		test_smem_oom(i915, ctx, region);
 
 	igt_fixture {
+		intel_ctx_destroy(i915, ctx);
 		free(regions);
 		close(i915);
 	}
-- 
2.34.1

