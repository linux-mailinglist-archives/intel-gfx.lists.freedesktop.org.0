Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CE088F161
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 22:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070881120BF;
	Wed, 27 Mar 2024 21:55:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DU3eHcLi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E086E1120BC;
 Wed, 27 Mar 2024 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711576506; x=1743112506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9I0dgm4VQxSLrfaGuwPR/2RwpFJEeXf+q2gXKMz5fQ4=;
 b=DU3eHcLiTEbZOrI3ZwxJ3hnj1f//0bwDEfZI+K393rSNt0S+PhIYhS0m
 tAd0T5C6ozoAXGpf8sjIpUJPp1JZr+387WZqJnhKIUtIG0t2ZyE/T1mKs
 isMW4+2D0RM21muViJ9uD5TK7FoM3lzcys3n2SCCgC7glqUvfXlBcyWVw
 CknNqX2gh6/Nigtqynaz3h+JbZu8U9U7Qjjog5vsofQhY7sjiQ5GcaNli
 ABX9cirj8HrXSymlSJ6w9Aueck463BPpXXJAFBJrhaEg4DjPCi2vMwckB
 aEhsJf4FWOtbb6ePwuc6hUJGPJR6BcWcyBHaCVt4WItcCgNcW9NEG6WzG g==;
X-CSE-ConnectionGUID: XrBo8lAFSJ6WkLv9G/e+QA==
X-CSE-MsgGUID: rXKDgdXrQZuiJCJIiKrAAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6820942"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; 
   d="scan'208";a="6820942"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 14:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="16513732"
Received: from jsteczyn-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.ger.corp.intel.com) ([10.213.16.241])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 14:55:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH i-g-t] lib/kunit: Read results from debugfs
Date: Wed, 27 Mar 2024 22:54:53 +0100
Message-ID: <2598806.Lt9SDvczpP@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <leokqgcgm67t54fvdv4od2z3wbhef6r6ejygn7wklpmzykk5ks@tp2xec36zeg4>
References: <20240327113700.7123-2-janusz.krzysztofik@linux.intel.com>
 <leokqgcgm67t54fvdv4od2z3wbhef6r6ejygn7wklpmzykk5ks@tp2xec36zeg4>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Wednesday, 27 March 2024 17:03:01 CET Lucas De Marchi wrote:
> On Wed, Mar 27, 2024 at 12:22:54PM +0100, Janusz Krzysztofik wrote:
> >KUnit can provide KTAP reports from test modules via debugfs files, one
> >per test suite.  Using that source of test results instead of extracting
> >them from dmesg, where they may be interleaved with other kernel messages,
> >seems more easy to handle and less error prone.  Switch to it.
> >
> >If KUnit debugfs support is found not configured then fall back to legacy
> >processing path.
> >
> >Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> >---
> > lib/igt_kmod.c | 143 ++++++++++++++++++++++++++++++++++++-------------
> > 1 file changed, 105 insertions(+), 38 deletions(-)
> >
> >diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> >index 1ec9c8a602..a5b170ca9c 100644
> >--- a/lib/igt_kmod.c
> >+++ b/lib/igt_kmod.c
> >@@ -28,6 +28,7 @@
> > #include <limits.h>
> > #include <pthread.h>
> > #include <signal.h>
> >+#include <stdio.h>
> > #include <stdlib.h>
> > #include <string.h>
> > #include <sys/stat.h>
> >@@ -39,6 +40,7 @@
> >
> > #include "igt_aux.h"
> > #include "igt_core.h"
> >+#include "igt_debugfs.h"
> > #include "igt_kmod.h"
> > #include "igt_ktap.h"
> > #include "igt_sysfs.h"
> >@@ -864,6 +866,31 @@ static int open_parameters(const char *module_name)
> > 	return open(path, O_RDONLY);
> > }
> >
> >+static DIR *kunit_debugfs_open(void)
> >+{
> >+	const char *debugfs_path = igt_debugfs_mount();
> >+	int debugfs_fd, kunit_fd;
> >+	DIR *kunit_dir;
> >+
> >+	if (igt_debug_on(!debugfs_path))
> >+		return NULL;
> >+
> >+	debugfs_fd = open(debugfs_path, O_DIRECTORY);
> >+	if (igt_debug_on(debugfs_fd < 0))
> >+		return NULL;
> >+
> >+	kunit_fd = openat(debugfs_fd, "kunit", O_DIRECTORY);
> >+	close(debugfs_fd);
> >+	if (igt_debug_on(kunit_fd < 0))
> >+		return NULL;
> >+
> >+	kunit_dir = fdopendir(kunit_fd);
> >+	if (igt_debug_on(!kunit_dir))
> >+		close(kunit_fd);
> >+
> >+	return kunit_dir;
> 
> 
> any reason not to use strcat() + return fopen()

To me the code looked simpler than if I copied and concatenated strings to a 
local buffer of fixed size with potential truncation handling.  I guess 
you prefer your pattern over mine, but you haven't explained why.  Would you 
like to convince me?

> 
> >+}
> >+
> > static bool kunit_set_filtering(const char *filter_glob, const char *filter,
> > 				const char *filter_action)
> > {
> >@@ -1071,23 +1098,48 @@ static void kunit_results_free(struct igt_list_head *results,
> > 	free(*suite_name);
> > }
> >
> >-static int kunit_get_results(struct igt_list_head *results, int kmsg_fd,
> >-			     struct igt_ktap_results **ktap)
> >+static int kunit_get_results(struct igt_list_head *results, int debugfs_fd,
> >+			     const char *suite, struct igt_ktap_results **ktap)
> > {
> >-	int err;
> >+	FILE *results_stream;
> >+	int ret, results_fd;
> >+	char *buf = NULL;
> >+	size_t size = 0;
> >+	ssize_t len;
> >+
> >+	if (igt_debug_on((ret = openat(debugfs_fd, suite, O_DIRECTORY), ret < 0)))
> 
> a little odd to return on any value != 0, but log on < 0. did you mean
> to compare < 0 in the first arg?.

I'm not able to recall what I could mean, but anyway, you are right, 
	if (igt_debug_on((ret = openat(...)) < 0))
will be more correct.

> 
> >+		return ret;
> >+
> >+	results_fd = openat(ret, "results", O_RDONLY);
> >+	close(ret);
> >+	if (igt_debug_on(results_fd < 0))
> >+		return results_fd;
> >+
> >+	results_stream = fdopen(results_fd, "r");
> >+	if (igt_debug_on(!results_stream)) {
> >+		close(results_fd);
> >+		return -errno;
> >+	}
> >
> > 	*ktap = igt_ktap_alloc(results);
> >-	if (igt_debug_on(!*ktap))
> >-		return -ENOMEM;
> >+	if (igt_debug_on(!*ktap)) {
> >+		ret = -ENOMEM;
> >+		goto out_fclose;
> >+	}
> >+
> >+	while (len = getline(&buf, &size, results_stream), len > 0) {
> >+		ret = igt_ktap_parse(buf, *ktap);
> >+		if (ret != -EINPROGRESS)
> >+			break;
> >+	}
> >
> >-	do
> >-		igt_debug_on((err = kunit_kmsg_result_get(results, NULL, kmsg_fd, *ktap),
> >-			      err && err != -EINPROGRESS));
> >-	while (err == -EINPROGRESS);
> >+	free(buf);
> >
> > 	igt_ktap_free(ktap);
> >+out_fclose:
> >+	fclose(results_stream);
> >
> >-	return err;
> >+	return ret;
> > }
> >
> > static void __igt_kunit_legacy(struct igt_ktest *tst,
> >@@ -1101,7 +1153,13 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
> > 	pthread_mutexattr_t attr;
> > 	IGT_LIST_HEAD(results);
> > 	unsigned long taints;
> >-	int ret;
> >+	int flags, ret;
> >+
> >+	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
> >+
> >+	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
> >+	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
> >+		      "Could not set /dev/kmsg to blocking mode\n");
> >
> > 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> >
> >@@ -1224,30 +1282,20 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
> > 	igt_skip_on_f(ret, "KTAP parser failed\n");
> > }
> >
> >-static void kunit_get_tests_timeout(int signal)
> >-{
> >-	igt_skip("Timed out while trying to extract a list of KUnit test cases from /dev/kmsg\n");
> >-}
> >-
> > static bool kunit_get_tests(struct igt_list_head *tests,
> > 			    struct igt_ktest *tst,
> > 			    const char *suite,
> > 			    const char *opts,
> >+			    DIR *debugfs_dir,
> > 			    struct igt_ktap_results **ktap)
> > {
> >-	struct sigaction sigalrm = { .sa_handler = kunit_get_tests_timeout, },
> >-			 *saved;
> > 	struct igt_ktap_result *r, *rn;
> >+	struct dirent *subdir;
> > 	unsigned long taints;
> >-	int flags, err;
> >-
> >-	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
> >+	int debugfs_fd;
> >
> >-	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
> >-	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
> >-		      "Could not set /dev/kmsg to blocking mode\n");
> >-
> >-	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> >+	if (igt_debug_on(!debugfs_dir))
> >+		return false;
> >
> > 	/*
> > 	 * To get a list of test cases provided by a kunit test module, ask the
> >@@ -1260,19 +1308,32 @@ static bool kunit_get_tests(struct igt_list_head *tests,
> > 	if (igt_debug_on(!kunit_set_filtering(suite, "module=none", "skip")))
> > 		return false;
> >
> >+	if (!suite) {
> >+		seekdir(debugfs_dir, 2);	/* directory itself and its parent */
> >+		errno = 0;
> >+		igt_skip_on_f(readdir(debugfs_dir) || errno,
> >+			      "Require empty KUnit debugfs directory\n");
> >+		rewinddir(debugfs_dir);
> >+	}
> >+
> > 	igt_skip_on(modprobe(tst->kmod, opts));
> > 	igt_skip_on(igt_kernel_tainted(&taints));
> >
> >-	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
> >-	alarm(10);
> >+	debugfs_fd = dirfd(debugfs_dir);
> >+	if (suite) {
> >+		igt_skip_on(kunit_get_results(tests, debugfs_fd, suite, ktap));
> 
> instead of skipping, do we need to treat it specially if this returns
> -EINPROGRESS? That would probably be bug in our ktap parser or a format
> change or something like that so we may want to start failing rather
> than skipping.

Unfortunately we are not allowed to fail here because kunit_get_tests() is 
called from inside a body of igt_subtest_with_dynamic() but outside of any 
igt_dynamic(), where fails are allowed again.  We may use a verbose variant of 
igt_skip() to provide additional information on that skip.  We may also 
precede that skip with igt_warn(), but I'm not sure how that will by reported 
by upper layers (igt_runner, CI).

> 
> anyway, consider the comments above as just nits. This seems like a
> great improvement.
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thank you,
Janusz

> 
> thanks
> Lucas De Marchi
> 
> >
> >-	err = kunit_get_results(tests, tst->kmsg, ktap);
> >+	} else while (subdir = readdir(debugfs_dir), subdir) {
> >+		if (!(subdir->d_type & DT_DIR))
> >+			continue;
> >
> >-	alarm(0);
> >-	igt_debug_on(sigaction(SIGALRM, saved, NULL));
> >+		if (!strcmp(subdir->d_name, ".") || !strcmp(subdir->d_name, ".."))
> >+			continue;
> >
> >-	igt_skip_on_f(err,
> >-		      "KTAP parser failed while getting a list of test cases\n");
> >+		igt_warn_on_f(kunit_get_results(tests, debugfs_fd, subdir->d_name, ktap),
> >+			      "parsing KTAP report from test suite \"%s\" failed\n",
> >+			      subdir->d_name);
> >+	}
> >
> > 	igt_list_for_each_entry_safe(r, rn, tests, link)
> > 		igt_require_f(r->code == IGT_EXIT_SKIP,
> >@@ -1287,6 +1348,7 @@ static void __igt_kunit(struct igt_ktest *tst,
> > 			const char *subtest,
> > 			const char *suite,
> > 			const char *opts,
> >+			int debugfs_fd,
> > 			struct igt_list_head *tests,
> > 			struct igt_ktap_results **ktap)
> > {
> >@@ -1307,8 +1369,6 @@ static void __igt_kunit(struct igt_ktest *tst,
> >
> > 			igt_skip_on(igt_kernel_tainted(&taints));
> >
> >-			igt_fail_on(lseek(tst->kmsg, 0, SEEK_END) == -1 && errno);
> >-
> > 			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
> > 					       t->suite_name, t->case_name),
> > 				      sizeof(glob));
> >@@ -1317,7 +1377,8 @@ static void __igt_kunit(struct igt_ktest *tst,
> > 			igt_assert_eq(modprobe(tst->kmod, opts), 0);
> > 			igt_assert_eq(igt_kernel_tainted(&taints), 0);
> >
> >-			igt_assert_eq(kunit_get_results(&results, tst->kmsg, ktap), 0);
> >+			igt_assert_eq(kunit_get_results(&results, debugfs_fd,
> >+							t->suite_name, ktap), 0);
> >
> > 			for (i = 0; i < 2; i++) {
> > 				kunit_result_free(&r, &suite_name, &case_name);
> >@@ -1388,6 +1449,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> > 	struct igt_ktest tst = { .kmsg = -1, };
> > 	struct igt_ktap_results *ktap = NULL;
> > 	const char *subtest = suite;
> >+	DIR *debugfs_dir = NULL;
> > 	IGT_LIST_HEAD(tests);
> >
> > 	/*
> >@@ -1435,10 +1497,12 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> > 		 *	 LTS kernels not capable of using KUnit filters for
> > 		 *	 listing test cases in KTAP format, with igt_require.
> > 		 */
> >-		if (!kunit_get_tests(&tests, &tst, suite, opts, &ktap))
> >+		debugfs_dir = kunit_debugfs_open();
> >+		if (!kunit_get_tests(&tests, &tst, suite, opts, debugfs_dir, &ktap))
> > 			__igt_kunit_legacy(&tst, subtest, opts);
> > 		else
> >-			__igt_kunit(&tst, subtest, suite, opts, &tests, &ktap);
> >+			__igt_kunit(&tst, subtest, suite, opts,
> >+				    dirfd(debugfs_dir), &tests, &ktap);
> > 	}
> >
> > 	igt_fixture {
> >@@ -1448,6 +1512,9 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> >
> > 		kunit_results_free(&tests, &suite_name, &case_name);
> >
> >+		if (debugfs_dir)
> >+			closedir(debugfs_dir);
> >+
> > 		igt_ktest_end(&tst);
> > 	}
> >
> 




