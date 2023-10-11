Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 597637C56E2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A1710E8EC;
	Wed, 11 Oct 2023 14:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9E310E8E1;
 Wed, 11 Oct 2023 14:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034724; x=1728570724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jn+DJ6h3ZddJvSC+i83qZY5yV7RLmzO+wuA0TSsMvAA=;
 b=VcCcebknDJvgEuit8dqJpIHrxeLERGpPjl31gLfQjNe/ecTAG3J0lFpq
 ysyWTeb9QSHT3XmZ6vuv48VoofDNXByBqmecCo8MQGu5YKbWnBOPvkwlW
 N6gguMZp1jFi6J/y6LssiuKXdBQA0M9Dea4INo+1FmRcMSXYgTKt9ozqF
 v1kfbRAeOC0u/3Yx/dd2LSGIalXaJ8t9Wxal9Beo4MsBAkO8ZLMqCQb46
 g6SgLWifk8TSECTBTUP6lXbACVWYxGs7PdZfHTECpJJO+s1QL8oRde/tB
 b0CiU+JjJJXJJc9byea2/ojwPUFRPVM4YxWvQGe2zvpyMy+0yWtLQV8VE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042107"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042107"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641624"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641624"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:30:15 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:45 +0200
Message-ID: <20231011141734.590321-23-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 10/11] lib/kunit: Fetch a list of test
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

v3: Preserve backward compatibility with kernels that can't provide
    listings of kunit test cases when kunit core is built as a module.
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
Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com> # v2
---
 lib/igt_kmod.c | 277 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 264 insertions(+), 13 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 5d85732b08..c20c52d372 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -902,8 +902,9 @@ static void kunit_results_free(struct igt_list_head *results,
 	free(*suite_name);
 }
 
-static void
-__igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
+static void __igt_kunit_legacy(struct igt_ktest *tst,
+			       const char *name,
+			       const char *opts)
 {
 	struct modprobe_data modprobe = { tst->kmod, opts, 0, pthread_self(), };
 	char *suite_name = NULL, *case_name = NULL;
@@ -912,13 +913,7 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 	pthread_mutexattr_t attr;
 	IGT_LIST_HEAD(results);
 	unsigned long taints;
-	int flags, ret;
-
-	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
-
-	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
-	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
-		      "Could not set /dev/kmsg to blocking mode\n");
+	int ret;
 
 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
 
@@ -1041,6 +1036,232 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
+static void kunit_get_tests(struct igt_list_head *tests,
+			    struct igt_ktest *tst,
+			    const char *filter,
+			    const char *opts)
+{
+	char *suite_name = NULL, *case_name = NULL;
+	struct igt_ktap_result *r, *rn;
+	struct igt_ktap_results *ktap;
+	int flags, err;
+
+	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
+
+	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
+	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
+		      "Could not set /dev/kmsg to blocking mode\n");
+
+	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
+
+	/*
+	 * To get a list of test cases provided by a kunit test module, ask the
+	 * generic kunit module to respond with SKIP result for each test found.
+	 * We could also use action=list kunit parameter to get the listing,
+	 * however, parsing a KTAP report -- something that we already can do
+	 * perfectly -- seems to be more safe than extracting a test case list
+	 * of unknown length from /dev/kmsg.
+	 *
+	 * TODO: drop the following workaround, which is required by LTS kernel
+	 *       v6.1 not capable of listing test cases when built as a module.
+	 * If loading the kunit module with required parameters fails then
+	 * assume that we are running on a kernel with missing test case listing
+	 * capabilities.  Dont's skip but just return with empty list of test
+	 * cases, that should tell the caller to use a legacy method of
+	 * iterating over KTAP results collected from blind execution of all
+	 * Kunit test cases provided by a Kunit test module.
+	 */
+	if (igt_debug_on(igt_kmod_load("kunit",
+				       "filter=module=none filter_action=skip")))
+		return;
+
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
+	struct modprobe_data modprobe = { tst->kmod, opts, 0, pthread_self(), };
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
+	igt_skip_on(pthread_mutexattr_init(&attr));
+	igt_skip_on(pthread_mutexattr_setrobust(&attr, PTHREAD_MUTEX_ROBUST));
+	igt_skip_on(pthread_mutex_init(&modprobe.lock, &attr));
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+
+	if (igt_debug_on(pthread_create(&modprobe.thread, NULL,
+					modprobe_task, &modprobe))) {
+		igt_ktap_free(ktap);
+		igt_skip("Failed to create a modprobe thread\n");
+	}
+
+	igt_list_for_each_entry(t, tests, link) {
+		igt_dynamic_f("%s%s%s",
+			      strcmp(t->suite_name, name) ?  t->suite_name : "",
+			      strcmp(t->suite_name, name) ? "-" : "",
+			      t->case_name) {
+
+			if (igt_list_empty(&results)) {
+				igt_assert_eq(ret, -EINPROGRESS);
+				ret = kunit_kmsg_result_get(&results, &modprobe,
+							    tst->kmsg, ktap);
+				igt_fail_on(igt_list_empty(&results));
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
+
+				r = igt_list_first_entry(&results, r, link);
+
+				if (code != IGT_EXIT_INVALID)
+					continue;
+
+				/* result from parametrized test case */
+				igt_fail_on_f(strcmp(r->suite_name, suite_name),
+					      "suite_name expected: %s, got: %s\n",
+					      suite_name, r->suite_name);
+				igt_fail_on_f(strcmp(r->case_name, case_name),
+					      "case_name expected: %s, got: %s\n",
+					      case_name, r->case_name);
+			}
+
+			igt_assert_neq(r->code, IGT_EXIT_INVALID);
+
+			if (r->msg && *r->msg) {
+				igt_skip_on_f(r->code == IGT_EXIT_SKIP,
+					      "%s\n", r->msg);
+				igt_fail_on_f(r->code == IGT_EXIT_FAILURE,
+					      "%s\n", r->msg);
+				igt_abort_on_f(r->code == IGT_EXIT_ABORT,
+					      "%s\n", r->msg);
+			} else {
+				igt_skip_on(r->code == IGT_EXIT_SKIP);
+				igt_fail_on(r->code == IGT_EXIT_FAILURE);
+				if (r->code == IGT_EXIT_ABORT)
+					igt_fail(r->code);
+			}
+			igt_assert_eq(r->code, IGT_EXIT_SUCCESS);
+
+			switch (pthread_mutex_lock(&modprobe.lock)) {
+			case 0:
+				igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+				break;
+			case EOWNERDEAD:
+				/* leave the mutex unrecoverable */
+				igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+				__attribute__ ((fallthrough));
+			case ENOTRECOVERABLE:
+				igt_assert_eq(modprobe.err, 0);
+				break;
+			default:
+				igt_debug("pthread_mutex_lock() failed\n");
+				break;
+			}
+
+			igt_assert_eq(igt_kernel_tainted(&taints), 0);
+		}
+
+		kunit_result_free(&r, &suite_name, &case_name);
+
+		if (igt_debug_on(ret != -EINPROGRESS))
+			break;
+	}
+
+	kunit_results_free(&results, &suite_name, &case_name);
+
+	switch (pthread_mutex_lock(&modprobe.lock)) {
+	case 0:
+		igt_debug_on(pthread_cancel(modprobe.thread));
+		igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+		igt_debug_on(pthread_join(modprobe.thread, NULL));
+		break;
+	case EOWNERDEAD:
+		/* leave the mutex unrecoverable */
+		igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+		break;
+	case ENOTRECOVERABLE:
+		break;
+	default:
+		igt_debug("pthread_mutex_lock() failed\n");
+		igt_debug_on(pthread_join(modprobe.thread, NULL));
+		break;
+	}
+
+	igt_ktap_free(ktap);
+
+	igt_skip_on(modprobe.err);
+	igt_skip_on(igt_kernel_tainted(&taints));
+	if (ret != -EINPROGRESS)
+		igt_skip_on_f(ret, "KTAP parser failed\n");
+}
+
 /**
  * igt_kunit:
  * @module_name: the name of the module
@@ -1052,7 +1273,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 void igt_kunit(const char *module_name, const char *name, const char *opts)
 {
 	struct igt_ktest tst = { .kmsg = -1, };
-
+	const char *filter = name;
+	IGT_LIST_HEAD(tests);
 
 	/*
 	 * If the caller (an IGT test) provides no subtest name then we
@@ -1077,6 +1299,17 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 
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
+
+		igt_assert(igt_list_empty(&tests));
 	}
 
 	/*
@@ -1086,11 +1319,29 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	 * proper namespace for dynamic subtests, with is required for CI
 	 * and for documentation.
 	 */
-	igt_subtest_with_dynamic(name)
-		__igt_kunit(&tst, name, opts);
+	igt_subtest_with_dynamic(name) {
+		kunit_get_tests(&tests, &tst, filter, opts);
+		/*
+		 * TODO: drop the __igt_kunit() legacy processing path, required
+		 *	 by kernels v6.1-v6.5 with DRM Kunit support but not
+		 *	 capable of listing test cases when built as a module,
+		 *	 as soon as no longer required by major Linux
+		 *	 distributions, now usually based on LTS kernel v6.1.
+		 */
+		if (igt_debug_on(igt_list_empty(&tests)))
+			__igt_kunit_legacy(&tst, name, opts);
+		else
+			__igt_kunit(&tst, name, opts, &tests);
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

