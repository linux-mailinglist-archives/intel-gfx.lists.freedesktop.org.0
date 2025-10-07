Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A464BC13EC
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 13:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CBE10E699;
	Tue,  7 Oct 2025 11:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Izrsl2di";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E63210E66F;
 Tue,  7 Oct 2025 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759837222; x=1791373222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=113dhQEn/kKrBwmwNtt6/Pxj9u19cpj/ElnkQFVCwyY=;
 b=Izrsl2dixFrv+w+TsUYrQSnIRJ4e9UKG2FBeVbJugoVAbOFUxyPt2IKV
 4BtG7IE4iWwoDT/Y9gaQtHCGChjhvUMlKVJeEKmU0SZYiftdzXXifTwdf
 SEkTYE1D8x9KyeEGdjZyAy9dvDewW/jOEZg2v6cWyfVEDkwfJdX1Ps95q
 qxbvQlr9NHhNWTDJlE0ZSczwVMbHabu8Tbq4JoPWm74pMbOQWgw1+b4AE
 enUeC2MMdqXjwD5LiMnfc2i6D1Hq888QqFUwoaG72NvxSWRNRHK/UPg+u
 yvHD7YpYPk8YNnW5AkMSVTSOdKTQKGcJBPUBq7AB0lxjgMj6cY6eQKsz0 A==;
X-CSE-ConnectionGUID: llmIyp1ES/GilmJE7LMQQg==
X-CSE-MsgGUID: 83B1dte1TeGXqWHzm+WGgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73442920"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73442920"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:22 -0700
X-CSE-ConnectionGUID: kaOBmLwNT/GOdTxJ6yn/Nw==
X-CSE-MsgGUID: wVJbTJdkR+uJGLL1mcqKJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184161258"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:20 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v2 5/5] tests/gem_eio: Avoid exceeding CI disk space
 limit
Date: Tue,  7 Oct 2025 13:38:28 +0200
Message-ID: <20251007113910.3336564-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Each call to trigger_reset() results in GPU state dumped to stderr.
Subtests that call trigger_reset() many times from a loop tend to exhaust
per test disk space limit watched by igt_runner.  That results in
incompletes reported instead of actual subtest results, and CI coverage
unnecessarily reduced as a further consequence.  Stop dumping GPU state
from those subtests.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index cbbf78b932..54ae65155f 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -139,7 +139,7 @@ static bool i915_reset_control(int fd, bool enable)
 	return igt_params_set(fd, "reset", "%d", enable);
 }
 
-static void trigger_reset(int fd)
+static void trigger_reset(int fd, bool dump)
 {
 	struct timespec ts = { };
 
@@ -159,7 +159,8 @@ static void trigger_reset(int fd)
 	igt_kmsg(KMSG_DEBUG "Checking that the GPU recovered\n");
 	gem_test_all_engines(fd);
 
-	igt_debugfs_dump(fd, "i915_engine_info");
+	if (dump)
+		igt_debugfs_dump(fd, "i915_engine_info");
 	igt_drop_caches_set(fd, DROP_ACTIVE);
 
 	/* We expect the health check to be quick! */
@@ -199,7 +200,7 @@ static void test_throttle(int fd)
 
 	igt_assert_eq(__gem_throttle(fd), -EIO);
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 }
 
 static void test_create(int fd)
@@ -208,7 +209,7 @@ static void test_create(int fd)
 
 	gem_close(fd, gem_create(fd, 4096));
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 }
 
 static void test_create_ext(int fd)
@@ -233,7 +234,7 @@ static void test_create_ext(int fd)
 		gem_close(fd, handle);
 	}
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 }
 
 static void test_context_create(int fd)
@@ -246,7 +247,7 @@ static void test_context_create(int fd)
 
 	igt_assert_eq(__gem_context_create(fd, &ctx), -EIO);
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 }
 
 static void test_execbuf(int fd)
@@ -269,7 +270,7 @@ static void test_execbuf(int fd)
 	igt_assert_eq(__gem_execbuf(fd, &execbuf), -EIO);
 	gem_close(fd, exec.handle);
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 }
 
 static int __gem_wait(int fd, uint32_t handle, int64_t timeout)
@@ -475,7 +476,7 @@ static void __test_banned(int fd)
 		/* Trigger a reset, making sure we are detected as guilty */
 		ahnd = get_reloc_ahnd(fd, 0);
 		hang = spin_sync(fd, ahnd, intel_ctx_0(fd), 0);
-		trigger_reset(fd);
+		trigger_reset(fd, false);
 		igt_spin_free(fd, hang);
 		put_ahnd(ahnd);
 
@@ -562,7 +563,7 @@ static void test_wait(int fd, unsigned int flags, unsigned int wait)
 
 	igt_require(i915_reset_control(fd, true));
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -580,7 +581,7 @@ static void test_suspend(int fd, int state)
 	igt_system_suspend_autoresume(state, SUSPEND_TEST_DEVICES);
 
 	igt_require(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -642,7 +643,7 @@ static void test_inflight(int fd, unsigned int wait)
 		put_ahnd(ahnd);
 
 		igt_assert(i915_reset_control(fd, true));
-		trigger_reset(fd);
+		trigger_reset(fd, true);
 
 		gem_close(fd, obj[1].handle);
 		drm_close_driver(fd);
@@ -705,7 +706,7 @@ static void test_inflight_suspend(int fd)
 	put_ahnd(ahnd);
 
 	igt_assert(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -791,7 +792,7 @@ static void test_inflight_contexts(int fd, unsigned int wait)
 		put_ahnd(ahnd);
 
 		igt_assert(i915_reset_control(fd, true));
-		trigger_reset(fd);
+		trigger_reset(fd, true);
 
 		for (unsigned int n = 0; n < ARRAY_SIZE(ctx); n++)
 			intel_ctx_destroy(fd, ctx[n]);
@@ -851,7 +852,7 @@ static void test_inflight_external(int fd)
 	igt_spin_free(fd, hang);
 	put_ahnd(ahnd);
 	igt_assert(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -901,7 +902,7 @@ static void test_inflight_internal(int fd, unsigned int wait)
 	put_ahnd(ahnd);
 
 	igt_assert(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -959,7 +960,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 
 		/* Unwedge by forcing a reset. */
 		igt_assert(i915_reset_control(fd, true));
-		trigger_reset(fd);
+		trigger_reset(fd, false);
 
 		gem_quiescent_gpu(fd);
 
-- 
2.51.0

