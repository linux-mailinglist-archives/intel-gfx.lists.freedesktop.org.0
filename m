Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209DB87E76D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E3010F54E;
	Mon, 18 Mar 2024 10:36:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JWTiNvbe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCA210F542;
 Mon, 18 Mar 2024 10:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710758178; x=1742294178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vme7zger9lqPwSdS7rFdcLSQgdsKYwLEmpibVFiJ/qc=;
 b=JWTiNvbePNpZNZog5h/7Mt0+E8Ul1IJeoAqCiHTv6p6kT0cO9R52wxEL
 xe2SuCYcJiecN5CcNwweRojPSONXxvzJWFS2Urw0ca3x/JUrKypcBv0IJ
 KsTF0ZdWjrAeoCt+v7tzNpPDelSgNRMcvypSW7RgOqS1KMMWp2TSXzE7w
 PHLb1jK4YtutSR/KB+6rf3Cx64bdl6eOo+zhzcw0+h8IH8bq7QyONmdJu
 GoeEMczdgej6TDCNhoAn4HTrw6jVpzUVIADED+cvnMIHrqSPOuBtP1nw6
 qiXJupr6Ih7pMBEdvwGqZZdXabEdbjMJrN1xK0WLSZZ3OhV93ks5lEyJy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="6168196"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="6168196"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="18015804"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.105])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:16 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v3 2/5] lib/kunit: Let igt_ktap_free() take care of
 pointer reset
Date: Mon, 18 Mar 2024 11:13:28 +0100
Message-ID: <20240318103534.701693-9-janusz.krzysztofik@linux.intel.com>
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

Users who store a pointer to struct igt_ktap_results, obtained from
igt_ktap_alloc(), in a central location and then call igt_ktap_free() when
no longer needed, now have to reset that pointer to NULL to avoid double
free on final cleanup.  For their convenience, teach igt_ktap_free() to
accept that location as an argument and reset the pointer after freeing
the structure.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c              | 12 +++++-------
 lib/igt_ktap.c              |  5 +++--
 lib/igt_ktap.h              |  2 +-
 lib/tests/igt_ktap_parser.c | 24 ++++++++++++------------
 4 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index ca20012a97..8a6824ea7e 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1094,7 +1094,7 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
 
 	if (igt_debug_on(pthread_create(&modprobe.thread, NULL,
 					modprobe_task, &modprobe))) {
-		igt_ktap_free(ktap);
+		igt_ktap_free(&ktap);
 		igt_skip("Failed to create a modprobe thread\n");
 	}
 
@@ -1197,7 +1197,7 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
 		break;
 	}
 
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	igt_skip_on(modprobe.err);
 	igt_skip_on(igt_kernel_tainted(&taints));
@@ -1243,8 +1243,7 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
 	while (err == -EINPROGRESS);
 
-	igt_ktap_free(*ktap);
-	*ktap = NULL;
+	igt_ktap_free(ktap);
 
 	igt_skip_on_f(err,
 		      "KTAP parser failed while getting a list of test cases\n");
@@ -1405,8 +1404,7 @@ static void __igt_kunit(struct igt_ktest *tst,
 		}
 	}
 
-	igt_ktap_free(*ktap);
-	*ktap = NULL;
+	igt_ktap_free(ktap);
 
 	igt_skip_on(modprobe.err);
 	igt_skip_on(igt_kernel_tainted(&taints));
@@ -1487,7 +1485,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
 	igt_fixture {
 		char *suite_name = NULL, *case_name = NULL;
 
-		igt_ktap_free(ktap);
+		igt_ktap_free(&ktap);
 
 		kunit_results_free(&tests, &suite_name, &case_name);
 
diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index aa7ea84476..300fb2bb5a 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -310,7 +310,8 @@ struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results)
 	return ktap;
 }
 
-void igt_ktap_free(struct igt_ktap_results *ktap)
+void igt_ktap_free(struct igt_ktap_results **ktap)
 {
-	free(ktap);
+	free(*ktap);
+	*ktap = NULL;
 }
diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
index c422636bfc..7684e859b3 100644
--- a/lib/igt_ktap.h
+++ b/lib/igt_ktap.h
@@ -41,6 +41,6 @@ struct igt_ktap_results;
 
 struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results);
 int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap);
-void igt_ktap_free(struct igt_ktap_results *ktap);
+void igt_ktap_free(struct igt_ktap_results **ktap);
 
 #endif /* IGT_KTAP_H */
diff --git a/lib/tests/igt_ktap_parser.c b/lib/tests/igt_ktap_parser.c
index 6357bdf6a5..8c2d16080d 100644
--- a/lib/tests/igt_ktap_parser.c
+++ b/lib/tests/igt_ktap_parser.c
@@ -45,7 +45,7 @@ static void ktap_list(void)
 	igt_assert_eq(igt_ktap_parse("    ok 4 test_case_4 # SKIP\n", ktap), -EINPROGRESS);
 	igt_assert_eq(igt_ktap_parse("ok 3 test_suite_3\n", ktap), 0);
 
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	igt_assert_eq(igt_list_length(&results), 8);
 
@@ -107,7 +107,7 @@ static void ktap_results(void)
 	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EINPROGRESS);
 	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
 
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	igt_assert_eq(igt_list_length(&results), 2);
 
@@ -162,7 +162,7 @@ static void ktap_success(void)
 	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
 	igt_assert_eq(igt_list_length(&results), 2);
 
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	result = igt_list_last_entry(&results, result, link);
 	igt_list_del(&result->link);
@@ -186,48 +186,48 @@ static void ktap_top_version(void)
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	/* TODO: change to -EPROTO as soon as related workaround is dropped */
 	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("        ok 1 parameter 1\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
 	igt_assert_eq(igt_ktap_parse("ok 1 test_suite\n", ktap), -EPROTO);
-	igt_ktap_free(ktap);
+	igt_ktap_free(&ktap);
 }
 
 igt_main
-- 
2.43.0

