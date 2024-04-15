Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76508A592B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 19:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA11810ED42;
	Mon, 15 Apr 2024 17:34:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/zvXRIk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAE410EC04;
 Mon, 15 Apr 2024 17:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713202472; x=1744738472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zk6ZlYw9dq587//0jeR6BGcXcv5csdrTw4LOVGq7oW0=;
 b=U/zvXRIknHkJGdBo1SUvQkQ7b28HaznDpWtiWPwyBQmvEPYiKMzwdIYx
 KzIPlkFd59Q+YBPspfJeqFEXpqtj2bvw5cLJBt6KuA1eUFgiK86zAf0+k
 hso2q/VKjkRR78TPS3eWsaQJGCU0HYM5hVT+CmTVjed6yOr2NxOWznXAb
 oURLVHutPqsgtF/7XKiNQX0DzzKl3t2ZnHeUHVW/5CCjbBwkOsEFg5W4T
 rBb+aFqBPNkWeOX3vUQMjbtN90ZykOiLUCJHz46o41MEtuh3y51Rf3seB
 xV+muQpKEHUPAAGUf+ZasgRlD22RE45j+huoSJgtfyccVG6Y0fs7kGvq/ A==;
X-CSE-ConnectionGUID: QXP7mzlFT32w26ixIW58eQ==
X-CSE-MsgGUID: Owe6wocgQ12nuvy+ZgKe3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8441015"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8441015"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 10:34:32 -0700
X-CSE-ConnectionGUID: GOMl+B+uTPiUG0WYsettVw==
X-CSE-MsgGUID: Qys7xMwhQiSonQKVMAiATg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="59426650"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.20.116])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 10:34:29 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3] lib/kunit: Read results from debugfs
Date: Mon, 15 Apr 2024 19:31:59 +0200
Message-ID: <20240415173405.120137-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.44.0
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

KUnit can provide KTAP reports from test modules via debugfs files, one
per test suite.  Using that source of test results instead of extracting
them from dmesg, where they may be interleaved with other kernel messages,
seems more easy to handle and less error prone.  Switch to it.

If KUnit debugfs support is found not configured then fall back to legacy
processing path.

v3: Try to open KUnit debugfs directory before applying KUnit filters we
    use for test case listing, otherwise those skip-all filters applied
    can break legacy path we may enter on missing KUnit debugfs support
    (detected by Kamil).
v2: Check validity of debugfs argument before calling kunit_get_tests()
    (Kamil),
  - replace multiple openat() + fdopen/fdopendir(), each followed by an
    error check, with less expensive fopen/opendir() of file/dir pathname
    components concatenated to a local buffer, protected from buffer
    overflow or truncation with a single check for enough buffer space
    (Lucas),
  - avoid confusing 'if' statement condition (Lucas).

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
@Lucas: I've assumed your R-b still applies, I hope you don't mind.

 lib/igt_kmod.c | 129 +++++++++++++++++++++++++++++++++++--------------
 1 file changed, 93 insertions(+), 36 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 6659c27eba..33f059199f 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -28,6 +28,7 @@
 #include <limits.h>
 #include <pthread.h>
 #include <signal.h>
+#include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <sys/stat.h>
@@ -39,6 +40,7 @@
 
 #include "igt_aux.h"
 #include "igt_core.h"
+#include "igt_debugfs.h"
 #include "igt_kmod.h"
 #include "igt_ktap.h"
 #include "igt_sysfs.h"
@@ -864,6 +866,19 @@ static int open_parameters(const char *module_name)
 	return open(path, O_RDONLY);
 }
 
+static void kunit_debugfs_path(char *kunit_path)
+{
+	const char *debugfs_path = igt_debugfs_mount();
+
+	if (igt_debug_on(!debugfs_path))
+		return;
+
+	if (igt_debug_on(strlen(debugfs_path) + strlen("/kunit/") >= PATH_MAX))
+		return;
+
+	strcpy(stpcpy(kunit_path, debugfs_path), "/kunit/");
+}
+
 static bool kunit_set_filtering(const char *filter_glob, const char *filter,
 				const char *filter_action)
 {
@@ -1071,21 +1086,41 @@ static void kunit_results_free(struct igt_list_head *results,
 	free(*suite_name);
 }
 
-static int kunit_get_results(struct igt_list_head *results, int kmsg_fd,
-			     struct igt_ktap_results **ktap)
+static int kunit_get_results(struct igt_list_head *results, const char *debugfs_path,
+			     const char *suite, struct igt_ktap_results **ktap)
 {
+	char results_path[PATH_MAX];
+	FILE *results_stream;
+	char *buf = NULL;
+	size_t size = 0;
+	ssize_t len;
 	int err;
 
+	if (igt_debug_on(strlen(debugfs_path) + strlen(suite) + strlen("/results") >= PATH_MAX))
+		return -ENOSPC;
+
+	strcpy(stpcpy(stpcpy(results_path, debugfs_path), suite), "/results");
+	results_stream = fopen(results_path, "r");
+	if (igt_debug_on(!results_stream))
+		return -errno;
+
 	*ktap = igt_ktap_alloc(results);
-	if (igt_debug_on(!*ktap))
-		return -ENOMEM;
+	if (igt_debug_on(!*ktap)) {
+		err = -ENOMEM;
+		goto out_fclose;
+	}
 
-	do
-		igt_debug_on((err = kunit_kmsg_result_get(results, NULL, kmsg_fd, *ktap),
-			      err && err != -EINPROGRESS));
-	while (err == -EINPROGRESS);
+	while (len = getline(&buf, &size, results_stream), len > 0) {
+		err = igt_ktap_parse(buf, *ktap);
+		if (err != -EINPROGRESS)
+			break;
+	}
+
+	free(buf);
 
 	igt_ktap_free(ktap);
+out_fclose:
+	fclose(results_stream);
 
 	return err;
 }
@@ -1101,7 +1136,13 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
 	pthread_mutexattr_t attr;
 	IGT_LIST_HEAD(results);
 	unsigned long taints;
-	int ret;
+	int flags, ret;
+
+	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
+
+	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
+	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
+		      "Could not set /dev/kmsg to blocking mode\n");
 
 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
 
@@ -1224,30 +1265,21 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
 	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
-static void kunit_get_tests_timeout(int signal)
-{
-	igt_skip("Timed out while trying to extract a list of KUnit test cases from /dev/kmsg\n");
-}
-
 static bool kunit_get_tests(struct igt_list_head *tests,
 			    struct igt_ktest *tst,
 			    const char *suite,
 			    const char *opts,
+			    const char *debugfs_path,
+			    DIR **debugfs_dir,
 			    struct igt_ktap_results **ktap)
 {
-	struct sigaction sigalrm = { .sa_handler = kunit_get_tests_timeout, },
-			 saved;
 	struct igt_ktap_result *r, *rn;
+	struct dirent *subdir;
 	unsigned long taints;
-	int flags, err;
 
-	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
-
-	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
-	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
-		      "Could not set /dev/kmsg to blocking mode\n");
-
-	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
+	*debugfs_dir = opendir(debugfs_path);
+	if (igt_debug_on(!*debugfs_dir))
+		return false;
 
 	/*
 	 * To get a list of test cases provided by a kunit test module, ask the
@@ -1260,19 +1292,37 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 	if (igt_debug_on(!kunit_set_filtering(suite, "module=none", "skip")))
 		return false;
 
+	if (!suite) {
+		seekdir(*debugfs_dir, 2);	/* directory itself and its parent */
+		errno = 0;
+		igt_skip_on_f(readdir(*debugfs_dir) || errno,
+			      "Require empty KUnit debugfs directory\n");
+		rewinddir(*debugfs_dir);
+	}
+
 	igt_skip_on(modprobe(tst->kmod, opts));
 	igt_skip_on(igt_kernel_tainted(&taints));
 
-	igt_skip_on(sigaction(SIGALRM, &sigalrm, &saved));
-	alarm(10);
+	while (subdir = readdir(*debugfs_dir), subdir) {
+		if (!(subdir->d_type & DT_DIR))
+			continue;
 
-	err = kunit_get_results(tests, tst->kmsg, ktap);
+		if (!strcmp(subdir->d_name, ".") || !strcmp(subdir->d_name, ".."))
+			continue;
 
-	alarm(0);
-	igt_debug_on(sigaction(SIGALRM, &saved, NULL));
+		if (suite && strcmp(subdir->d_name, suite))
+			continue;
 
-	igt_skip_on_f(err,
-		      "KTAP parser failed while getting a list of test cases\n");
+		igt_warn_on_f(kunit_get_results(tests, debugfs_path, subdir->d_name, ktap),
+			      "parsing KTAP report from test suite \"%s\" failed\n",
+			      subdir->d_name);
+
+		if (suite)
+			break;
+	}
+
+	closedir(*debugfs_dir);
+	*debugfs_dir = NULL;
 
 	igt_list_for_each_entry_safe(r, rn, tests, link)
 		igt_require_f(r->code == IGT_EXIT_SKIP,
@@ -1287,6 +1337,7 @@ static void __igt_kunit(struct igt_ktest *tst,
 			const char *subtest,
 			const char *suite,
 			const char *opts,
+			const char *debugfs_path,
 			struct igt_list_head *tests,
 			struct igt_ktap_results **ktap)
 {
@@ -1307,8 +1358,6 @@ static void __igt_kunit(struct igt_ktest *tst,
 
 			igt_skip_on(igt_kernel_tainted(&taints));
 
-			igt_fail_on(lseek(tst->kmsg, 0, SEEK_END) == -1 && errno);
-
 			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
 					       t->suite_name, t->case_name),
 				      sizeof(glob));
@@ -1317,7 +1366,8 @@ static void __igt_kunit(struct igt_ktest *tst,
 			igt_assert_eq(modprobe(tst->kmod, opts), 0);
 			igt_assert_eq(igt_kernel_tainted(&taints), 0);
 
-			igt_assert_eq(kunit_get_results(&results, tst->kmsg, ktap), 0);
+			igt_assert_eq(kunit_get_results(&results, debugfs_path,
+							t->suite_name, ktap), 0);
 
 			for (i = 0; i < 2; i++) {
 				kunit_result_free(&r, &suite_name, &case_name);
@@ -1385,9 +1435,11 @@ static void __igt_kunit(struct igt_ktest *tst,
  */
 void igt_kunit(const char *module_name, const char *suite, const char *opts)
 {
+	char debugfs_path[PATH_MAX] = { '\0', };
 	struct igt_ktest tst = { .kmsg = -1, };
 	struct igt_ktap_results *ktap = NULL;
 	const char *subtest = suite;
+	DIR *debugfs_dir = NULL;
 	IGT_LIST_HEAD(tests);
 
 	/*
@@ -1435,10 +1487,12 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
 		 *	 LTS kernels not capable of using KUnit filters for
 		 *	 listing test cases in KTAP format, with igt_require.
 		 */
-		if (!kunit_get_tests(&tests, &tst, suite, opts, &ktap))
+		kunit_debugfs_path(debugfs_path);
+		if (igt_debug_on(!*debugfs_path) ||
+		    !kunit_get_tests(&tests, &tst, suite, opts, debugfs_path, &debugfs_dir, &ktap))
 			__igt_kunit_legacy(&tst, subtest, opts);
 		else
-			__igt_kunit(&tst, subtest, suite, opts, &tests, &ktap);
+			__igt_kunit(&tst, subtest, suite, opts, debugfs_path, &tests, &ktap);
 	}
 
 	igt_fixture {
@@ -1448,6 +1502,9 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
 
 		kunit_results_free(&tests, &suite_name, &case_name);
 
+		if (debugfs_dir)
+			closedir(debugfs_dir);
+
 		igt_ktest_end(&tst);
 	}
 
-- 
2.44.0

