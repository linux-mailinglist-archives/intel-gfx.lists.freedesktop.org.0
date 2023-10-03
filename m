Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D74527B6529
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82B310E2EE;
	Tue,  3 Oct 2023 09:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD67710E2A9;
 Tue,  3 Oct 2023 09:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696324424; x=1727860424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/0YpursjmBGJ34pg+hxvDndAJwDi6+zaWM5OhHmA7LU=;
 b=hdrksE0TB5utBDAyfhGQLGZ31UmekBP+BuWvoBwJrQ8KHIqbrcR8A+8Z
 yW29ZEGI0dQXBV82PfpGOMsyWH8PS/Vcizd5x9Q0dS1mzBl8tKlfaiL1d
 8cy4a1MsmOrk5mLKxIT5fZqhuqE0TWXiMxtH2nVPI3qOoPnbdCwm/hpVF
 tyIE/Rrx2YqoIWJ90EZyCkMhHCY8fWwryUxh4cxhQMco/544vjpe7P0qX
 dTiP/eJqUcZzAfMdjU/lBnu5R3pi+cMH2ARx+wYe5gxPZ2yjnZm5BEnEN
 wA4QfQLMjUMFqK00U/OTIEb9RT6G5HDdRQP15EBV//2JEoa6L4EJciBnJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1419766"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="1419766"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997935811"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="997935811"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.14.111])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:38 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Oct 2023 11:10:54 +0200
Message-ID: <20231003091044.407965-20-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 9/9] lib/kunit: Execute kunit test cases
 only when needed
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

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 59 ++++++++++++++++++++++++++++----------------------
 1 file changed, 33 insertions(+), 26 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 4fba77ead4..a8a140c9f1 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -962,24 +962,29 @@ static void __igt_kunit(struct igt_ktest *tst,
 
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
+			}
+
 			if (!r) {
 				if (igt_list_empty(&results)) {
 					igt_assert_eq(ret, -EINPROGRESS);
@@ -1075,22 +1080,24 @@ static void __igt_kunit(struct igt_ktest *tst,
 	free(case_name);
 	free(suite_name);
 
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

