Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 752957C56E1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE2210E8E6;
	Wed, 11 Oct 2023 14:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BC810E8E1;
 Wed, 11 Oct 2023 14:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034726; x=1728570726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NpPnxQOXrWSur2mpE1KtouvuaAj1ZZYah0+FY1HvPRU=;
 b=Z3t+PhgI1jY9Pr+aH6mjbT9UmYfp7XFK17GZi+jJ4XrDeQy6RECDF14v
 aUewyCKw6vqhKZfBifdI+AhOKSCD8UUMXF2RP9dd5psRbGpfm0s/DxdwU
 M5I+Q/hNproduiYyC5tSHjkUUEMlY5wJlb55nSTHEfFJDJZSbvdTL4PVu
 wXIugmIRpO8ifgRVtn4KhBi7EMnYRqWG1vb5/1UvhEosAm6xgqoezL7vP
 nf9yIauQy6ZLVWU+HGv3fmjhIf/USA9cAJZyl2HY2pe1xjp+6HTpjkFLS
 jneapo/c9hemVFGPNNXRvjUpp9XEc5cyuLIvlkvwFharDMUadg4wEt0Ry Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042135"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042135"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641650"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641650"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:30:18 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:46 +0200
Message-ID: <20231011141734.590321-24-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 11/11] lib/kunit: Execute kunit test
 cases only when needed
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

IGT user interface allows to request execution of only those dynamic sub-
subtests that match a user provided name pattern.  If the user pattern
doesn't match any names of test cases provided by a kunit test module used
with the subtest to be run then no results from any dynamic sub-subtests
will be reported.  Since we already know the list of test cases provided
by the kunit test module, there is no need to load that module to execute
them unless the user pattern matches at least one of those test cases.

Don't load the kunit test module in execute mode before entering the loop
of dynamic sub-subtests, and do that only from the first actually executed
dynamic sub-subtest.

v2: Always pass last result to next dynamic sub-subtest, fetch first
    result right after loading the kunit test module for execution.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_kmod.c | 66 ++++++++++++++++++++++++++------------------------
 1 file changed, 35 insertions(+), 31 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index c20c52d372..ca0356b1ca 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1130,33 +1130,37 @@ static void __igt_kunit(struct igt_ktest *tst,
 
 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
 
-	igt_skip_on(pthread_mutexattr_init(&attr));
-	igt_skip_on(pthread_mutexattr_setrobust(&attr, PTHREAD_MUTEX_ROBUST));
-	igt_skip_on(pthread_mutex_init(&modprobe.lock, &attr));
-
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 
-	if (igt_debug_on(pthread_create(&modprobe.thread, NULL,
-					modprobe_task, &modprobe))) {
-		igt_ktap_free(ktap);
-		igt_skip("Failed to create a modprobe thread\n");
-	}
-
 	igt_list_for_each_entry(t, tests, link) {
 		igt_dynamic_f("%s%s%s",
 			      strcmp(t->suite_name, name) ?  t->suite_name : "",
 			      strcmp(t->suite_name, name) ? "-" : "",
 			      t->case_name) {
 
-			if (igt_list_empty(&results)) {
+			if (!modprobe.thread) {
+				igt_assert_eq(pthread_mutexattr_init(&attr), 0);
+				igt_assert_eq(pthread_mutexattr_setrobust(&attr,
+							  PTHREAD_MUTEX_ROBUST),
+					      0);
+				igt_assert_eq(pthread_mutex_init(&modprobe.lock,
+								 &attr), 0);
+
+				modprobe.err = pthread_create(&modprobe.thread,
+							      NULL,
+							      modprobe_task,
+							      &modprobe);
+				igt_assert_eq(modprobe.err, 0);
+
+				igt_assert(igt_list_empty(&results));
 				igt_assert_eq(ret, -EINPROGRESS);
 				ret = kunit_kmsg_result_get(&results, &modprobe,
 							    tst->kmsg, ktap);
 				igt_fail_on(igt_list_empty(&results));
-			}
 
-			r = igt_list_first_entry(&results, r, link);
+				r = igt_list_first_entry(&results, r, link);
+			}
 
 			while (igt_debug_on_f(strcmp(r->suite_name, t->suite_name),
 					      "suite_name expected: %s, got: %s\n",
@@ -1228,30 +1232,30 @@ static void __igt_kunit(struct igt_ktest *tst,
 			igt_assert_eq(igt_kernel_tainted(&taints), 0);
 		}
 
-		kunit_result_free(&r, &suite_name, &case_name);
-
 		if (igt_debug_on(ret != -EINPROGRESS))
 			break;
 	}
 
 	kunit_results_free(&results, &suite_name, &case_name);
 
-	switch (pthread_mutex_lock(&modprobe.lock)) {
-	case 0:
-		igt_debug_on(pthread_cancel(modprobe.thread));
-		igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
-		igt_debug_on(pthread_join(modprobe.thread, NULL));
-		break;
-	case EOWNERDEAD:
-		/* leave the mutex unrecoverable */
-		igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
-		break;
-	case ENOTRECOVERABLE:
-		break;
-	default:
-		igt_debug("pthread_mutex_lock() failed\n");
-		igt_debug_on(pthread_join(modprobe.thread, NULL));
-		break;
+	if (modprobe.thread) {
+		switch (pthread_mutex_lock(&modprobe.lock)) {
+		case 0:
+			igt_debug_on(pthread_cancel(modprobe.thread));
+			igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+			igt_debug_on(pthread_join(modprobe.thread, NULL));
+			break;
+		case EOWNERDEAD:
+			/* leave the mutex unrecoverable */
+			igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
+			break;
+		case ENOTRECOVERABLE:
+			break;
+		default:
+			igt_debug("pthread_mutex_lock() failed\n");
+			igt_debug_on(pthread_join(modprobe.thread, NULL));
+			break;
+		}
 	}
 
 	igt_ktap_free(ktap);
-- 
2.42.0

