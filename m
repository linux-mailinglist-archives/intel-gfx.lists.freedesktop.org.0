Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7FC30B49
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 12:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343CD10E5C3;
	Tue,  4 Nov 2025 11:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fRYi6rRi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7E610E5C2;
 Tue,  4 Nov 2025 11:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762255291; x=1793791291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PSPNcxz3nvKiC+be6jJbzNEa6xWh62Vt2aiuWofFqY0=;
 b=fRYi6rRiLjFdwU+4EzleoGDKMQEIZhFiRgrE4MPK3vPr21TOKdtu7qF+
 zJbJWp60okLYuDLf7eWmAGK3tRrU+f/VDgc8DnYVFdSSfKRFeUgS/yq2/
 CQzhFd4O8FrBAE+9VfIW3WprX1PM7VT2fWcnCItVBWCQYPFogwEHnu41C
 tdMw0WNSODz3N3WHpH49Xc86CD0p5GekSTTidwIQVQ7RR0BOYVvGzCdTb
 qZfjEMAFo+2euJlIxcfpW7pAvHCaZDRWwJi6/eXEWm4WobZQHFphhFy9U
 8q7FBgiWXWQJFqE1ZfPtl5EcN563pBviLMbfZCcdWFJfp8io3C0IWMBRQ Q==;
X-CSE-ConnectionGUID: AV4oBml/QtGRuOnASDwgGQ==
X-CSE-MsgGUID: ATEMGGgVTWyDekhTOP4STA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81751029"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="81751029"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 03:21:30 -0800
X-CSE-ConnectionGUID: 2rlPQxsnQLu+tPmCBsMo2Q==
X-CSE-MsgGUID: MjD7O1WfSc6PtA3LcAdIJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="186808752"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 03:21:27 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Nitin Gote <nitin.r.gote@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Date: Tue,  4 Nov 2025 12:20:24 +0100
Message-ID: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.1
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

Certain selftests, while basically correct, may fail on certain platforms.
E.g., igt@dmabuf@all-test@dma_fence_chain used to complete successfully,
but on slow machines it triggers soft lockup warnings which taint the
kernel.

Sometimes, like in the above mentioned case, it's not possible to fix a
root cause of the issue since it is not recognized as a bug.  To avoid
ever returning CI bug reports in such cases, allow selftests to be called
via user provided wrappers that take care of not triggering unavoidable
failures, e.g. by skipping specific selftests if some conditions are not
met, or watching their execution and acting upon certain conditions or
events.

With that in place, update the dmabuf test so it, as the first user of the
new feature, skips the dma_fence_chain selftest if a machine looks too
slow.  Since that's a hardware agnostic selftest, running it on a limited
subset of machines seems acceptable, especially when the soft lockups it
can trigger aren't recognized as bugs on the kernel side.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c              | 13 +++++++---
 lib/igt_kmod.h              | 10 ++++++-
 tests/dmabuf.c              | 52 ++++++++++++++++++++++++++++++++++++-
 tests/intel/i915_selftest.c |  6 ++---
 4 files changed, 73 insertions(+), 8 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index a10626eedf..68ab4dbd57 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1355,7 +1355,8 @@ static const char *unfilter(const char *filter, const char *name)
 void igt_kselftests(const char *module_name,
 		    const char *options,
 		    const char *result,
-		    const char *filter)
+		    const char *filter,
+		    igt_kselftest_wrap_t wrapper)
 {
 	struct igt_ktest tst;
 	IGT_LIST_HEAD(tests);
@@ -1370,10 +1371,16 @@ void igt_kselftests(const char *module_name,
 	igt_kselftest_get_tests(tst.kmod, filter, &tests);
 	igt_subtest_with_dynamic(filter ?: "all-tests") {
 		igt_list_for_each_entry_safe(tl, tn, &tests, link) {
+			const char *dynamic_name = unfilter(filter, tl->name);
 			unsigned long taints;
 
-			igt_dynamic_f("%s", unfilter(filter, tl->name))
-				igt_kselftest_execute(&tst, tl, options, result);
+			igt_dynamic_f("%s", dynamic_name) {
+				if (wrapper)
+					wrapper(dynamic_name, &tst, tl);
+				else
+					igt_kselftest_execute(&tst, tl,
+							      options, result);
+			}
 			free(tl);
 
 			if (igt_kernel_tainted(&taints)) {
diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
index 9050708974..c9700240c9 100644
--- a/lib/igt_kmod.h
+++ b/lib/igt_kmod.h
@@ -28,6 +28,13 @@
 
 #include "igt_list.h"
 
+struct igt_ktest;
+struct igt_kselftest_list;
+
+typedef int (*igt_kselftest_wrap_t)(const char *dynamic_name,
+				    struct igt_ktest *tst,
+				    struct igt_kselftest_list *tl);
+
 bool igt_kmod_is_loaded(const char *mod_name);
 void igt_kmod_list_loaded(void);
 
@@ -79,7 +86,8 @@ void igt_kunit(const char *module_name, const char *name, const char *opts);
 void igt_kselftests(const char *module_name,
 		    const char *module_options,
 		    const char *result_option,
-		    const char *filter);
+		    const char *filter,
+		    igt_kselftest_wrap_t wrapper);
 
 struct igt_ktest {
 	struct kmod_module *kmod;
diff --git a/tests/dmabuf.c b/tests/dmabuf.c
index 8568bdfb3a..12c2db68f6 100644
--- a/tests/dmabuf.c
+++ b/tests/dmabuf.c
@@ -42,7 +42,57 @@
 
 IGT_TEST_DESCRIPTION("Kernel selftests for the dmabuf API");
 
+static unsigned int bogomips(void)
+{
+	unsigned int bogomips, ret = 0;
+	char *line = NULL;
+	size_t size = 0;
+	FILE *cpuinfo;
+
+	cpuinfo = fopen("/proc/cpuinfo", "r");
+	if (igt_debug_on(!cpuinfo))
+		return UINT_MAX;
+
+	while (getline(&line, &size, cpuinfo) != -1) {
+		char *colon;
+
+		if (strncmp(line, "bogomips", 8))
+			continue;
+
+		colon = strchr(line, ':');
+		if (igt_debug_on(!colon))
+			bogomips = 0;
+		else
+			bogomips = atoi(colon + 1);
+
+		if (igt_debug_on(!bogomips))
+			break;
+
+		ret += bogomips;
+	}
+	free(line);
+	fclose(cpuinfo);
+
+	return igt_debug_on(!bogomips) ? UINT_MAX : ret;
+}
+
+static int wrapper(const char *dynamic_name,
+		   struct igt_ktest *tst,
+		   struct igt_kselftest_list *tl)
+{
+	/*
+	 * Test case wait-backward of dma_fence_chain selftest can trigger soft
+	 * lockups on slow machines.  Since that slowness is not recognized as
+	 * a bug on the kernel side, the issue is not going to be fixed.  Based
+	 * on analysis of CI results, skip that selftest on machines slower than
+	 * 25000 BogoMIPS to avoid ever returning CI reports on that failure.
+	 */
+	igt_skip_on(!strcmp(dynamic_name, "dma_fence_chain") && bogomips() < 25000);
+
+	return igt_kselftest_execute(tst, tl, NULL, NULL);
+}
+
 igt_main
 {
-	igt_kselftests("dmabuf_selftests", NULL, NULL, NULL);
+	igt_kselftests("dmabuf_selftests", NULL, NULL, NULL, wrapper);
 }
diff --git a/tests/intel/i915_selftest.c b/tests/intel/i915_selftest.c
index aa29eb36af..824e6f5b95 100644
--- a/tests/intel/i915_selftest.c
+++ b/tests/intel/i915_selftest.c
@@ -646,15 +646,15 @@ igt_main
 	igt_assert(snprintf(opts, sizeof(opts),
 			    "mock_selftests=-1 disable_display=1 st_filter=%s",
 			    env) < sizeof(opts));
-	igt_kselftests("i915", opts, NULL, "mock");
+	igt_kselftests("i915", opts, NULL, "mock", NULL);
 
 	igt_assert(snprintf(opts, sizeof(opts),
 			    "live_selftests=-1 disable_display=1 st_filter=%s",
 			    env) < sizeof(opts));
-	igt_kselftests("i915", opts, "live_selftests", "live");
+	igt_kselftests("i915", opts, "live_selftests", "live", NULL);
 
 	igt_assert(snprintf(opts, sizeof(opts),
 			    "perf_selftests=-1 disable_display=1 st_filter=%s",
 			    env) < sizeof(opts));
-	igt_kselftests("i915", opts, "perf_selftests", "perf");
+	igt_kselftests("i915", opts, "perf_selftests", "perf", NULL);
 }
-- 
2.51.1

