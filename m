Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FC087E76C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E5710F54A;
	Mon, 18 Mar 2024 10:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WYlj2/gc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5B610F54A;
 Mon, 18 Mar 2024 10:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710758183; x=1742294183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bAdW1IZHk6MOr/TR6Oar5fVbqRJv0DNEcjg8iLNyHnM=;
 b=WYlj2/gcS3WKNQN+pFT0G5mkLGtFdn3+sFGQt2fmbny1nZXGPudogNY+
 U5FdmxvwghvRxHCCX0IVcwSN3nOdIzVkO9m7Zw3skVLDaYamk2pnkHCAy
 hd4gAzN2zaQvLLe6Gg+Iu8VZ2rYMiriHUgxbmIFAKwINyGdTvf8uhdQqv
 FoapJOlUeJdhA7vew9kJY+OWWN7C57dEmK8NN/+iRTH/dXO3jNjutbC5I
 gLUhhsSmC/9MNDHeHDBi/N9z/6x/WpwUwbtLDh8yT4InvlzgJxE2O5Kzs
 ho3AlATs5viu0XANOsoY3W5hQKasw9LKR5mLSLyDZdNhNP525f5qZE/G3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="6168205"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="6168205"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="18015814"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.105])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:21 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v3 4/5] lib/kunit: Execute test cases synchronously
Date: Mon, 18 Mar 2024 11:13:30 +0100
Message-ID: <20240318103534.701693-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
References: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
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

Up to now we were loading a KUnit test module in test execution mode only
once per subtest, in background, and then, in parallel with execution of
test cases while the module was loading, we were looking through dmesg for
KTAP results from each expected test case.  As a consequence, our IGT
messages were more or less delayed, never in full sync with kernel
messages.  Moreover, parsing of KTAP results from already completed test
cases could be abandoned on a failure from loading the test module or
kernel taint caused by a subsequent test case.  Also, parsing of KTAP
results from all subsequent test cases could be abandoned on a failure of
the parser caused by any test case.  Other than that, if a user requested
a single dynamic sub-subtest, all test cases were executed anyway while
results from only one of them that corresponded to the selected dynamic
sub-subtest were reported.  That way, kernel messages from unrelated test
cases, not only the selected one, could contribute to dmesg-fail or dmesg-
warn CI results from that sub-subtest.

Since recent KUnit implementation is capable of executing only those test
cases that match a user filter, stop executing all of them asynchronously
and parsing their KTAP results as they appear.  Instead, reload the test
module once per each dynamic sub-subtest with a filter that selects a
specific test case and wait for its completion.  If successful and no
kernel taint has occurred then parse the whole KTAP report from a single
test case it has produced and translate it to IGT result of that single
corresponding sub-subtest.

With that in place, we no longer need to skip the whole subtest on a
failure from module loading or KTAP reading or parsing.  Since such event
is now local to execution of an individual test case, only fail its
corresponding dynamic sub-subtests and continue with subsequent ones.
However, still omit execution of subsequent test cases once the kernel
gets tainted.

v3: Refresh on top of changes to struct igt_ktap_results pointer handling,
  - use "for(;;) {}" instead of "do {} while();" when processing results
    from parametrized test cases (Kamil).
v2: Refresh on top of changes to KUnit filters handling,
  - include the code of a new helper from a previously separate patch,
  - actually limit the scope of the helper to fetching a KTAP report from
    a file descriptor, and let the caller decide on how other steps, like
    setting up filters or loading a test module, and errors they return
    are handled,
  - similar to kernel taint handling, just omit any remaining dynamic sub-
    subtests if unloading the test module fails,
  - update commit description with a more detailed justification of why we
    need these changes.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_kmod.c | 156 +++++++++++++++++--------------------------------
 1 file changed, 54 insertions(+), 102 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index f0e4d5ec76..c495d11b16 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1070,6 +1070,25 @@ static void kunit_results_free(struct igt_list_head *results,
 	free(*suite_name);
 }
 
+static int kunit_get_results(struct igt_list_head *results, int kmsg_fd,
+			     struct igt_ktap_results **ktap)
+{
+	int err;
+
+	*ktap = igt_ktap_alloc(results);
+	if (igt_debug_on(!*ktap))
+		return -ENOMEM;
+
+	do
+		igt_debug_on((err = kunit_kmsg_result_get(results, NULL, kmsg_fd, *ktap),
+			      err && err != -EINPROGRESS));
+	while (err == -EINPROGRESS);
+
+	igt_ktap_free(ktap);
+
+	return err;
+}
+
 static void __igt_kunit_legacy(struct igt_ktest *tst,
 			       const char *subtest,
 			       const char *opts)
@@ -1277,82 +1296,52 @@ static void __igt_kunit(struct igt_ktest *tst,
 			struct igt_list_head *tests,
 			struct igt_ktap_results **ktap)
 {
-	struct modprobe_data modprobe = { tst->kmod, opts, 0, pthread_self(), };
-	char *suite_name = NULL, *case_name = NULL;
-	struct igt_ktap_result *t, *r = NULL;
-	pthread_mutexattr_t attr;
-	IGT_LIST_HEAD(results);
-	int ret = -EINPROGRESS;
-	unsigned long taints;
-
-	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
-
-	*ktap = igt_ktap_alloc(&results);
-	igt_require(*ktap);
+	struct igt_ktap_result *t;
 
 	igt_list_for_each_entry(t, tests, link) {
+		char *suite_name = NULL, *case_name = NULL;
+		IGT_LIST_HEAD(results);
+		unsigned long taints;
+
 		igt_dynamic_f("%s%s%s",
 			      strcmp(t->suite_name, subtest) ?  t->suite_name : "",
 			      strcmp(t->suite_name, subtest) ? "-" : "",
 			      t->case_name) {
+			struct igt_ktap_result *r = NULL;
+			char glob[1024];
+			int i;
 
-			if (!modprobe.thread) {
-				igt_require(kunit_set_filtering(suite, NULL, NULL));
+			igt_skip_on(igt_kernel_tainted(&taints));
 
-				igt_assert_eq(pthread_mutexattr_init(&attr), 0);
-				igt_assert_eq(pthread_mutexattr_setrobust(&attr,
-							  PTHREAD_MUTEX_ROBUST),
-					      0);
-				igt_assert_eq(pthread_mutex_init(&modprobe.lock,
-								 &attr), 0);
+			igt_fail_on(lseek(tst->kmsg, 0, SEEK_END) == -1 && errno);
 
-				modprobe.err = pthread_create(&modprobe.thread,
-							      NULL,
-							      modprobe_task,
-							      &modprobe);
-				igt_assert_eq(modprobe.err, 0);
+			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
+					       t->suite_name, t->case_name),
+				      sizeof(glob));
+			igt_assert(kunit_set_filtering(glob, NULL, NULL));
 
-				igt_assert(igt_list_empty(&results));
-				igt_assert_eq(ret, -EINPROGRESS);
-				ret = kunit_kmsg_result_get(&results, &modprobe,
-							    tst->kmsg, *ktap);
+			igt_assert_eq(modprobe(tst->kmod, opts), 0);
+			igt_assert_eq(igt_kernel_tainted(&taints), 0);
+
+			igt_assert_eq(kunit_get_results(&results, tst->kmsg, ktap), 0);
+
+			for (i = 0; i < 2; i++) {
+				kunit_result_free(&r, &suite_name, &case_name);
 				igt_fail_on(igt_list_empty(&results));
 
 				r = igt_list_first_entry(&results, r, link);
-			}
 
-			while (igt_debug_on_f(strcmp(r->suite_name, t->suite_name),
+				igt_fail_on_f(strcmp(r->suite_name, t->suite_name),
 					      "suite_name expected: %s, got: %s\n",
-					      t->suite_name, r->suite_name) ||
-			       igt_debug_on_f(strcmp(r->case_name, t->case_name),
+					      t->suite_name, r->suite_name);
+				igt_fail_on_f(strcmp(r->case_name, t->case_name),
 					      "case_name expected: %s, got: %s\n",
-					      t->case_name, r->case_name) ||
-			       r->code == IGT_EXIT_INVALID) {
+					      t->case_name, r->case_name);
 
-				int code = r->code;
-
-				kunit_result_free(&r, &suite_name, &case_name);
-				if (igt_list_empty(&results)) {
-					igt_assert_eq(ret, -EINPROGRESS);
-					ret = kunit_kmsg_result_get(&results,
-								    &modprobe,
-								    tst->kmsg,
-								    *ktap);
-					igt_fail_on(igt_list_empty(&results));
-				}
-
-				r = igt_list_first_entry(&results, r, link);
-
-				if (code != IGT_EXIT_INVALID)
-					continue;
+				if (r->code != IGT_EXIT_INVALID)
+					break;
 
 				/* result from parametrized test case */
-				igt_fail_on_f(strcmp(r->suite_name, suite_name),
-					      "suite_name expected: %s, got: %s\n",
-					      suite_name, r->suite_name);
-				igt_fail_on_f(strcmp(r->case_name, case_name),
-					      "case_name expected: %s, got: %s\n",
-					      case_name, r->case_name);
 			}
 
 			igt_assert_neq(r->code, IGT_EXIT_INVALID);
@@ -1371,58 +1360,21 @@ static void __igt_kunit(struct igt_ktest *tst,
 					igt_fail(r->code);
 			}
 			igt_assert_eq(r->code, IGT_EXIT_SUCCESS);
-
-			switch (pthread_mutex_lock(&modprobe.lock)) {
-			case 0:
-				igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
-				break;
-			case EOWNERDEAD:
-				/* leave the mutex unrecoverable */
-				igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
-				__attribute__ ((fallthrough));
-			case ENOTRECOVERABLE:
-				igt_assert_eq(modprobe.err, 0);
-				break;
-			default:
-				igt_debug("pthread_mutex_lock() failed\n");
-				break;
-			}
-
-			igt_assert_eq(igt_kernel_tainted(&taints), 0);
 		}
 
-		if (igt_debug_on(ret != -EINPROGRESS))
-			break;
-	}
-
-	kunit_results_free(&results, &suite_name, &case_name);
+		kunit_results_free(&results, &suite_name, &case_name);
 
-	if (modprobe.thread) {
-		switch (pthread_mutex_lock(&modprobe.lock)) {
-		case 0:
-			igt_debug_on(pthread_cancel(modprobe.thread));
-			igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
-			igt_debug_on(pthread_join(modprobe.thread, NULL));
-			break;
-		case EOWNERDEAD:
-			/* leave the mutex unrecoverable */
-			igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+		if (igt_debug_on(igt_kernel_tainted(&taints))) {
+			igt_info("Kernel tainted, not executing more selftests.\n");
 			break;
-		case ENOTRECOVERABLE:
-			break;
-		default:
-			igt_debug("pthread_mutex_lock() failed\n");
-			igt_debug_on(pthread_join(modprobe.thread, NULL));
+		}
+
+		if (igt_debug_on(kmod_module_remove_module(tst->kmod,
+							   KMOD_REMOVE_FORCE))) {
+			igt_info("Unloading test module failed, not executing more selftests.\n");
 			break;
 		}
 	}
-
-	igt_ktap_free(ktap);
-
-	igt_skip_on(modprobe.err);
-	igt_skip_on(igt_kernel_tainted(&taints));
-	if (ret != -EINPROGRESS)
-		igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
 /**
-- 
2.43.0

