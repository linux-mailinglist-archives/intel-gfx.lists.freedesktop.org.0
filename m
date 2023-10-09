Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31BF7BDCA2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DFEB10E285;
	Mon,  9 Oct 2023 12:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F1B10E272;
 Mon,  9 Oct 2023 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855435; x=1728391435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KMO1QD1vUpf3Kf9TbobkD+tLgHDw+kIm+fYHGtyEl7A=;
 b=NHH7LtXDJa4UTMvJqWC3MN+wwsTU6QKayhZ5ghiPGtQCtYDKbHjcEGdT
 MXTNwdey03M3SDpuIW6ibMyOGSYClNG+OUVJpV8T976ojfRGW4fky9Np5
 ltjxmlbJB9k7G9A+U/bUBn/GcRyftg3YxZ2i9NS8zxsPWU4yzGUc3n5Nd
 7S2BqLwuwe4NPpIPbivsGBDFrGahASp7Yr2HZSrEhUhJAx3bC/fyCCX18
 3xDM5eVyAllmkCZDhDIt6N2RcKKpSWU+4WsdAJSYZjH8NNeoaj4QbRwil
 +nX0FdrtViNXNXVgdN2mQwOqb2N2kobfqT0goUJ5xgBGk6DGN1+N91GRW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010606"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010606"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823327027"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823327027"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:52 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:28:02 +0200
Message-ID: <20231009122750.519112-24-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 11/11] lib/kunit: Execute kunit test
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
---
 lib/igt_kmod.c | 66 ++++++++++++++++++++++++++------------------------
 1 file changed, 35 insertions(+), 31 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 150fe49803..69915adc40 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -981,33 +981,37 @@ static void __igt_kunit(struct igt_ktest *tst,
 
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
@@ -1079,30 +1083,30 @@ static void __igt_kunit(struct igt_ktest *tst,
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

