Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0222BDE878
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6CA10E7B9;
	Wed, 15 Oct 2025 12:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmUQO+Ib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FB510E7AE;
 Wed, 15 Oct 2025 12:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532290; x=1792068290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QIfkb61OK3g8EQOQSkitvBb3Wf4rKUis9xFLZ/OSlJ4=;
 b=KmUQO+IbNEfytTaJKmXbsEgZoHqBgaCO0Fo3aFAiiRvupk1UINUdIdMS
 l3e3RCEO/UamgNgNaoFQBPaOSBmh0FtE0ZzBUTHsZggn2vM4c7muFFeHH
 IR+iQvUwtofLakYJMKLb/Ja/I+Pw3FxfmB3b2LHZN+2M5kF3yLGLPeNkB
 qfoE7+oDsRaEB0eQe8BoYvniJ8yhvsdFdjBGVSvqosHaBtnTR78pNqcfx
 wLW9zVTIEu2okR+rU214stmX4HOnzLo+1QLUSW1PqmeGbPDfGR5p2/CxK
 e1AqpRZbQTugKPSyvtcAdD9eo4uAXdPEOE+bE3CZaFXmwQQmYZZ/Hs/9j g==;
X-CSE-ConnectionGUID: R27OlwVyRseKPpfe0jTONw==
X-CSE-MsgGUID: SiLAcHRqReOPVqB3zo7lyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601565"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601565"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:50 -0700
X-CSE-ConnectionGUID: +4BTUruCR3aNMpJ5dqhE9A==
X-CSE-MsgGUID: a1og0VOrRruAO0I/1a0CtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384955"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 5/6] tests/gem_eio: Reduce debug info on stderr from
 stress subtests
Date: Wed, 15 Oct 2025 14:39:23 +0200
Message-ID: <20251015124419.66460-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
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
Stress subtests that call trigger_reset() many times from a loop may
contribute to exhaustion of per test disk space limit watched by
igt_runner, causing incompletes reported by CI instead of actual subtest
results, and unnecessary reduction of CI coverage as a further
consequence.  Stop dumping GPU state from those subtests.

v3: Reword commit message, there will be one more patch with similar
    objective but a different, additional solution,
  - reword commit description a bit for its better strictness.

Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 05c54514ac..be071ba8a0 100644
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
@@ -476,7 +477,7 @@ static void __test_banned(int fd)
 		/* Trigger a reset, making sure we are detected as guilty */
 		ahnd = get_reloc_ahnd(fd, 0);
 		hang = spin_sync(fd, ahnd, intel_ctx_0(fd), 0);
-		trigger_reset(fd);
+		trigger_reset(fd, false);
 		igt_spin_free(fd, hang);
 		put_ahnd(ahnd);
 
@@ -563,7 +564,7 @@ static void test_wait(int fd, unsigned int flags, unsigned int wait)
 
 	igt_require(i915_reset_control(fd, true));
 
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -581,7 +582,7 @@ static void test_suspend(int fd, int state)
 	igt_system_suspend_autoresume(state, SUSPEND_TEST_DEVICES);
 
 	igt_require(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -643,7 +644,7 @@ static void test_inflight(int fd, unsigned int wait)
 		put_ahnd(ahnd);
 
 		igt_assert(i915_reset_control(fd, true));
-		trigger_reset(fd);
+		trigger_reset(fd, true);
 
 		gem_close(fd, obj[1].handle);
 		drm_close_driver(fd);
@@ -706,7 +707,7 @@ static void test_inflight_suspend(int fd)
 	put_ahnd(ahnd);
 
 	igt_assert(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -792,7 +793,7 @@ static void test_inflight_contexts(int fd, unsigned int wait)
 		put_ahnd(ahnd);
 
 		igt_assert(i915_reset_control(fd, true));
-		trigger_reset(fd);
+		trigger_reset(fd, true);
 
 		for (unsigned int n = 0; n < ARRAY_SIZE(ctx); n++)
 			intel_ctx_destroy(fd, ctx[n]);
@@ -852,7 +853,7 @@ static void test_inflight_external(int fd)
 	igt_spin_free(fd, hang);
 	put_ahnd(ahnd);
 	igt_assert(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -902,7 +903,7 @@ static void test_inflight_internal(int fd, unsigned int wait)
 	put_ahnd(ahnd);
 
 	igt_assert(i915_reset_control(fd, true));
-	trigger_reset(fd);
+	trigger_reset(fd, true);
 	drm_close_driver(fd);
 }
 
@@ -960,7 +961,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
 
 		/* Unwedge by forcing a reset. */
 		igt_assert(i915_reset_control(fd, true));
-		trigger_reset(fd);
+		trigger_reset(fd, false);
 
 		gem_quiescent_gpu(fd);
 
-- 
2.51.0

