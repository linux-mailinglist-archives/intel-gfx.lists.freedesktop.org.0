Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5B68699F9
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 16:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D0F10E91F;
	Tue, 27 Feb 2024 15:11:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqVd4qkL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE3310E913;
 Tue, 27 Feb 2024 15:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709046707; x=1740582707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5RYsS2CY6OJf7J3cpyLMPNCMzz+A9eGmxcijwPHBZ90=;
 b=SqVd4qkL/aThBdEin1mUPmTPeqkF2u47SZ4ux+Y4oWHRdQdhprpxiyYZ
 lb4ae8u5USNYXywa4aATZUHLudTimSiZyjQf5sRClqD0UV5m5U67z7Mie
 j26mECFejO9JeBXI284Us1AQ6IOWM/7xrI6PolEsb7V9u9STZLrmbWHSN
 uR3UvnS6/8qDoxqZ6rGpddjEfUEVPoO2Bvta4RvhBI+wTsJwhy3ZRe9o/
 yFRUBpaY66dYxnnqWjjzvLtlyLZXd8cKgBLrxtoHsjZzVk8ckXiPYb21t
 qmJAav9+IC1MMBQJ1mfgq+o/jdatEDV7R29h1H/x17rA/ZGCmvtZ12m67 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3260411"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="3260411"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 07:11:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7635350"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.4.234])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 07:11:45 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v2 1/2] lib/kunit: Execute test cases synchronously
Date: Tue, 27 Feb 2024 16:10:41 +0100
Message-ID: <20240227151128.16802-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
References: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
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
---
 lib/igt_kmod.c | 157 ++++++++++++++++---------------------------------
 1 file changed, 52 insertions(+), 105 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index cc242838fa..e9e00ac5b2 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1018,6 +1018,25 @@ static void kunit_results_free(struct igt_list_head *results,
 	free(*suite_name);
 }
 
+static int kunit_get_results(struct igt_list_head *results, int kmsg_fd)
+{
+	struct igt_ktap_results *ktap;
+	int err;
+
+	ktap = igt_ktap_alloc(results);
+	if (igt_debug_on(!ktap))
+		return -ENOMEM;
+
+	do
+		igt_debug_on((err = kunit_kmsg_result_get(results, NULL, kmsg_fd, ktap),
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
@@ -1211,86 +1230,51 @@ static void __igt_kunit(struct igt_ktest *tst,
 			const char *opts,
 			struct igt_list_head *tests)
 {
-	struct modprobe_data modprobe = { tst->kmod, opts, 0, pthread_self(), };
-	char *suite_name = NULL, *case_name = NULL;
-	struct igt_ktap_result *t, *r = NULL;
-	struct igt_ktap_results *ktap;
-	pthread_mutexattr_t attr;
-	IGT_LIST_HEAD(results);
-	int ret = -EINPROGRESS;
-	unsigned long taints;
-
-	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
-
-	ktap = igt_ktap_alloc(&results);
-	igt_require(ktap);
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
+			int expect = 2;
 
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
-							    tst->kmsg, ktap);
-				igt_fail_on(igt_list_empty(&results));
+			igt_assert_eq(modprobe(tst->kmod, opts), 0);
+			igt_assert_eq(igt_kernel_tainted(&taints), 0);
 
-				r = igt_list_first_entry(&results, r, link);
-			}
+			igt_assert_eq(kunit_get_results(&results, tst->kmsg), 0);
 
-			while (igt_debug_on_f(strcmp(r->suite_name, t->suite_name),
-					      "suite_name expected: %s, got: %s\n",
-					      t->suite_name, r->suite_name) ||
-			       igt_debug_on_f(strcmp(r->case_name, t->case_name),
-					      "case_name expected: %s, got: %s\n",
-					      t->case_name, r->case_name) ||
-			       r->code == IGT_EXIT_INVALID) {
-
-				int code = r->code;
+			do {
+				igt_fail_on_f(!expect--, "Invalid result code\n");
 
 				kunit_result_free(&r, &suite_name, &case_name);
-				if (igt_list_empty(&results)) {
-					igt_assert_eq(ret, -EINPROGRESS);
-					ret = kunit_kmsg_result_get(&results,
-								    &modprobe,
-								    tst->kmsg,
-								    ktap);
-					igt_fail_on(igt_list_empty(&results));
-				}
+				igt_fail_on(igt_list_empty(&results));
 
 				r = igt_list_first_entry(&results, r, link);
 
-				if (code != IGT_EXIT_INVALID)
-					continue;
-
-				/* result from parametrized test case */
-				igt_fail_on_f(strcmp(r->suite_name, suite_name),
+				igt_fail_on_f(strcmp(r->suite_name, t->suite_name),
 					      "suite_name expected: %s, got: %s\n",
-					      suite_name, r->suite_name);
-				igt_fail_on_f(strcmp(r->case_name, case_name),
+					      t->suite_name, r->suite_name);
+				igt_fail_on_f(strcmp(r->case_name, t->case_name),
 					      "case_name expected: %s, got: %s\n",
-					      case_name, r->case_name);
-			}
+					      t->case_name, r->case_name);
 
-			igt_assert_neq(r->code, IGT_EXIT_INVALID);
+			} while (r->code == IGT_EXIT_INVALID);
 
 			if (r->msg && *r->msg) {
 				igt_skip_on_f(r->code == IGT_EXIT_SKIP,
@@ -1306,58 +1290,21 @@ static void __igt_kunit(struct igt_ktest *tst,
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
+		kunit_results_free(&results, &suite_name, &case_name);
 
-	kunit_results_free(&results, &suite_name, &case_name);
-
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

