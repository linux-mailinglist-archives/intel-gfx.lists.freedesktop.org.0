Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F447BDCA1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0450E10E272;
	Mon,  9 Oct 2023 12:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAB210E283;
 Mon,  9 Oct 2023 12:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855432; x=1728391432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q5BgjOTuoxcIdjw3BlURkDtMUhL7qidvAUdBYohL0E8=;
 b=FJWfkTnb+wVg+OdyCwVdZcvDRr4OZNIOywnloJ+xzyi1JPjCUltoPQIV
 AnMUp/vY2GuU9CJoxTKliLtnM+4MZlZnZi/mGyw2GxsHehYK1d6jxCXwS
 KqCKkY/X1LEU6tW7g6rQ/LF2W+BZ72gUSpnQU+WQM580eX+a03cDtq3ZW
 bTmzMf0eeu4FhqdGMxmfrwOBoDuyUffcypwBP6Cy1ux2BvbfyqkcW4bmJ
 oIlklZoEhy9hQqO+qyXouHCRb4w7km00TZANFmYy7kzDRdgXtZdFGJeop
 WhLQP8YGNWM7t2v44CEyT3fYX6WEkelxYipoiwcuNwD4FMH6gRpMnOi/4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010602"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010602"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326992"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326992"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:28:01 +0200
Message-ID: <20231009122750.519112-23-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 10/11] lib/kunit: Fetch a list of test
 cases in advance
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Recent improvements to the kernel kunit framework allow us to obtain a
list of test cases provided by a kunit test module without actually
running them.  Use that feature to get a list of expected test cases
before we enter a loop around igt_dynamic().  Once done, enter the
igt_dynamic() section for each consecutive test case immediately, even
before first line of a related KTAP report appears, then look for a result
from that test case.  That should make our IGT results output still better
synchronized with related kernel messages.

The list of test cases provided by a kunit test module can be obtained by
loading the kunit base module with specific options, then loading the test
module.  For that to be possible, take care of unloading the kunit base
module before each kunit subtest (I was wrong when in one of my previous
commit messages I suggested that on final unload of a kunit test module
the kunit base module is unloaded automatically as its dependency,
however, that didn't matter before, then no separate fix was required).
Since that module can then be left loaded with non-default options if an
error occurs, unload it explicitly before returning from igt_kunit().

There are two possible ways of getting a list of test cases: by loading
the base kunit module with action=list module option, or by filtering
out all test cases from being executed while asking for SKIP results from
those filtered out.  Since the latter provides regular KTAP report that we
can already parse perfectly, use it instead of trying to identify an
unstructured list of test cases of unknown length submitted by the former.

If an IGT test that calls igt_kunit() provides a subtest name then use
that name to filter out potential test cases that don't belong to the
named test suite from the list.

To avoid loading any modules if no subtest is going to be executed (e.g.,
if a nonexistent subtest has been requested), load the kunit modules in
list mode from inside the igt_subtest_with_dynamic() section.  In order to
be free to skip the whole subtest on unmet requirements that need to be
verified after that list has been already populated, clean it up from a
follow up igt_fixture section.

Since we may now finish processing of all test cases / dynamic sub-
subtests before KTAP parsing completes, don't fail if we exit the loop of
dynamic sub-subtests with -EINPROGRESS error code returned by the parser.

v2: Split out changes in handling of modprobe errors and kernel taints to
    separate patches (Kamil),
  - fix some string duplicates referenced from filtered out test cases not
    freed,
  - don't check if next result is needed before fetching one, obviously
    true in first dynamic sub-subtest, and we always free last result
    before looping to next sub-subtest,
  - still break the loop of test cases on unexpected return codes from
    kunit_kmsg_get_result(),
  - use kunit_results_free() helper,
  - fix typos (Kamil),
  - update commit description.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 169 ++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 132 insertions(+), 37 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index ed41aa1235..150fe49803 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -899,17 +899,15 @@ static void kunit_results_free(struct igt_list_head *results,
 	free(*suite_name);
 }
 
-static void
-__igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
+static void kunit_get_tests(struct igt_list_head *tests,
+			    struct igt_ktest *tst,
+			    const char *filter,
+			    const char *opts)
 {
-	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0, };
 	char *suite_name = NULL, *case_name = NULL;
+	struct igt_ktap_result *r, *rn;
 	struct igt_ktap_results *ktap;
-	struct igt_ktap_result *r;
-	pthread_mutexattr_t attr;
-	IGT_LIST_HEAD(results);
-	unsigned long taints;
-	int flags, ret;
+	int flags, err;
 
 	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
 
@@ -919,6 +917,70 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 
 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
 
+	/*
+	 * To get a list of test cases provided by a kunit test module, ask the
+	 * generic kunit module to respond with SKIP result for each test found.
+	 * We could also use action=list kunit parameter to get the listing,
+	 * however, parsing a KTAP report -- something that we already can do
+	 * perfectly -- seems to be more safe than extracting a test case list
+	 * of unknown length from /dev/kmsg.
+	 */
+	igt_skip_on(igt_kmod_load("kunit", "filter=module=none filter_action=skip"));
+	igt_skip_on(modprobe(tst->kmod, opts));
+
+	ktap = igt_ktap_alloc(tests);
+	igt_require(ktap);
+
+	do
+		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, ktap);
+	while (err == -EINPROGRESS);
+
+	igt_ktap_free(ktap);
+
+	if (!err)
+		igt_list_for_each_entry_safe(r, rn, tests, link) {
+			if (igt_debug_on(r->code != IGT_EXIT_SKIP)) {
+				err = r->code ?: -EPROTO;
+				break;
+			}
+
+			if (!filter)
+				continue;
+
+			if (strcmp(r->suite_name, filter))
+				kunit_result_free(&r, &case_name, &suite_name);
+		}
+
+	if (err) {
+		kunit_results_free(tests, &case_name, &suite_name);
+	} else {
+		free(suite_name);
+		free(case_name);
+	}
+
+	igt_skip_on(kmod_module_remove_module(tst->kmod, KMOD_REMOVE_FORCE));
+	igt_skip_on(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
+
+	igt_skip_on_f(err,
+		      "KTAP parser failed while getting a list of test cases\n");
+}
+
+static void __igt_kunit(struct igt_ktest *tst,
+			const char *name,
+			const char *opts,
+			struct igt_list_head *tests)
+{
+	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0, };
+	char *suite_name = NULL, *case_name = NULL;
+	struct igt_ktap_result *t, *r = NULL;
+	struct igt_ktap_results *ktap;
+	pthread_mutexattr_t attr;
+	IGT_LIST_HEAD(results);
+	int ret = -EINPROGRESS;
+	unsigned long taints;
+
+	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
+
 	igt_skip_on(pthread_mutexattr_init(&attr));
 	igt_skip_on(pthread_mutexattr_setrobust(&attr, PTHREAD_MUTEX_ROBUST));
 	igt_skip_on(pthread_mutex_init(&modprobe.lock, &attr));
@@ -932,37 +994,47 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 		igt_skip("Failed to create a modprobe thread\n");
 	}
 
-	do {
-		ret = kunit_kmsg_result_get(&results, &modprobe,
-					    tst->kmsg, ktap);
-		if (igt_debug_on(ret && ret != -EINPROGRESS))
-			break;
-
-		if (igt_debug_on(igt_list_empty(&results)))
-			break;
-
-		r = igt_list_first_entry(&results, r, link);
-
+	igt_list_for_each_entry(t, tests, link) {
 		igt_dynamic_f("%s%s%s",
-			      strcmp(r->suite_name, name) ?  r->suite_name : "",
-			      strcmp(r->suite_name, name) ? "-" : "",
-			      r->case_name) {
-
-			if (r->code == IGT_EXIT_INVALID) {
-				/* parametrized test case, get actual result */
-				kunit_result_free(&r, &suite_name, &case_name);
-
-				igt_assert(igt_list_empty(&results));
+			      strcmp(t->suite_name, name) ?  t->suite_name : "",
+			      strcmp(t->suite_name, name) ? "-" : "",
+			      t->case_name) {
 
+			if (igt_list_empty(&results)) {
+				igt_assert_eq(ret, -EINPROGRESS);
 				ret = kunit_kmsg_result_get(&results, &modprobe,
 							    tst->kmsg, ktap);
-				if (ret != -EINPROGRESS)
-					igt_fail_on(ret);
-
 				igt_fail_on(igt_list_empty(&results));
+			}
+
+			r = igt_list_first_entry(&results, r, link);
+
+			while (igt_debug_on_f(strcmp(r->suite_name, t->suite_name),
+					      "suite_name expected: %s, got: %s\n",
+					      t->suite_name, r->suite_name) ||
+			       igt_debug_on_f(strcmp(r->case_name, t->case_name),
+					      "case_name expected: %s, got: %s\n",
+					      t->case_name, r->case_name) ||
+			       r->code == IGT_EXIT_INVALID) {
+
+				int code = r->code;
+
+				kunit_result_free(&r, &suite_name, &case_name);
+				if (igt_list_empty(&results)) {
+					igt_assert_eq(ret, -EINPROGRESS);
+					ret = kunit_kmsg_result_get(&results,
+								    &modprobe,
+								    tst->kmsg,
+								    ktap);
+					igt_fail_on(igt_list_empty(&results));
+				}
 
 				r = igt_list_first_entry(&results, r, link);
 
+				if (code != IGT_EXIT_INVALID)
+					continue;
+
+				/* result from parametrized test case */
 				igt_fail_on_f(strcmp(r->suite_name, suite_name),
 					      "suite_name expected: %s, got: %s\n",
 					      suite_name, r->suite_name);
@@ -1009,7 +1081,9 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 
 		kunit_result_free(&r, &suite_name, &case_name);
 
-	} while (ret == -EINPROGRESS);
+		if (igt_debug_on(ret != -EINPROGRESS))
+			break;
+	}
 
 	kunit_results_free(&results, &suite_name, &case_name);
 
@@ -1035,7 +1109,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 
 	igt_skip_on(modprobe.err);
 	igt_skip_on(igt_kernel_tainted(&taints));
-	igt_skip_on_f(ret, "KTAP parser failed\n");
+	if (ret != -EINPROGRESS)
+		igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
 /**
@@ -1049,7 +1124,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 void igt_kunit(const char *module_name, const char *name, const char *opts)
 {
 	struct igt_ktest tst = { .kmsg = -1, };
-
+	const char *filter = name;
+	IGT_LIST_HEAD(tests);
 
 	/*
 	 * If the caller (an IGT test) provides no subtest name then we
@@ -1074,6 +1150,15 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 
 		igt_skip_on(igt_ktest_init(&tst, module_name));
 		igt_skip_on(igt_ktest_begin(&tst));
+
+		/*
+		 * Since we need to load kunit base module with specific
+		 * options in order to get a list of test cases, make
+		 * sure that the module is not loaded.  However, since
+		 * unload may fail if kunit base module is not loaded,
+		 * ignore any failures, we'll fail later if still loaded.
+		 */
+		igt_ignore_warn(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
 	}
 
 	/*
@@ -1083,11 +1168,21 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	 * proper namespace for dynamic subtests, with is required for CI
 	 * and for documentation.
 	 */
-	igt_subtest_with_dynamic(name)
-		__igt_kunit(&tst, name, opts);
+	igt_subtest_with_dynamic(name) {
+		kunit_get_tests(&tests, &tst, filter, opts);
+		igt_skip_on(igt_list_empty(&tests));
+
+		__igt_kunit(&tst, name, opts, &tests);
+	}
+
+	igt_fixture {
+		char *suite_name = NULL, *case_name = NULL;
+
+		kunit_results_free(&tests, &suite_name, &case_name);
 
-	igt_fixture
 		igt_ktest_end(&tst);
+		igt_debug_on(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
+	}
 
 	igt_ktest_fini(&tst);
 }
-- 
2.42.0

