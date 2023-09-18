Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A99B7A4ACF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C4E10E291;
	Mon, 18 Sep 2023 13:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 297E410E297;
 Mon, 18 Sep 2023 13:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045156; x=1726581156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+PcZiED3S5QXxvR34S9yibq5ZQTz2DMepfCD1+gSh6w=;
 b=WB26nchX2SKL5a2BluyP/zoHnDrLXpugfyueUWxeB2lOnc3d9/tu648E
 4ZCay5Fhd03FvDKJ0hmIRdZ/M03wC0OIGQ7dsvx6Lb8IS6AaneY/ot1WC
 +ZwJFrygnBtP7eKzC9Hk+6cbUKr5b9i/VpZ+L8CdrA7+5x4c7Vfa6SdP5
 TR9d+0GvHFfp4E3rSD+/gbx2Vz205UUMOgAf1T3pi4JFP88/6fClRYZsF
 ibgEDw/bveAKX0VtAabxPnemWTqroCLlZJ5LcBXWqqG5CiKVLZAsFCN/6
 LKxY+aM0+8Wj2TXhQI0zJ3hlehFcfE4CqWb8EuquhRa34UWCuamWg2End Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969542"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969542"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030486"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030486"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:33 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:55 +0200
Message-ID: <20230918134249.31645-24-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 05/17] lib/kunit: Fix illegal
 igt_fail() calls inside subtest body
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Dominik=20Karol=20Pi=C4=85tkowski?=
 <dominik.karol.piatkowski@intel.com>, Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In a body of a subtest with dynamic sub-subtests, it is illegal to call
igt_fail() and its variants from outside of a dynamic sub-subtest body.
On the other hand, it is perfectly legal to call either igt_skip() and
friends or __igt_abort() or its variant from there.

In the current implementation of igt_kunit(), there are several places
where igt_fail() is called despite being illegal.  Moreover, it is called
with IGT_EXIT_ABORT as an argument with no good reason for using such
aggressive method that forces CI to trigger system reboot (in most cases
igt_runner can decide if abort is required).

Follow igt_kselftests() pattern more closely, where similar setup and
cleanup operations are performed but their potential errors are processed
in a more friendly way.  Move common cleanup and their corresponding setup
steps out of the subtest body.  Place the latter as requirements in a
preceding igt_fixture section.  Replace remaining illegal igt_fail() calls
with more friendly skips.  Let igt_runner decide if abort is needed.

v2: Also call igt_skip() on igt_ktest_init() failure (Mauro), but then,
    initialize local tst structure when declaring it to avoid freeing a
    random pointer from igt_ktest_fini() when only listing subtests,
  - call igt_ktest_end() from igt_fixture so it is not unnecessarily
    called when only listing subtests.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
---
 lib/igt_kmod.c | 76 +++++++++++++++-----------------------------------
 1 file changed, 23 insertions(+), 53 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 1d1cd51170..063e4c12db 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -754,59 +754,27 @@ void igt_kselftest_get_tests(struct kmod_module *kmod,
  *
  * Returns: IGT default codes
  */
-static void __igt_kunit(const char *module_name, const char *opts)
+static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 {
-	struct igt_ktest tst;
 	struct kmod_module *kunit_kmod;
 	bool is_builtin;
 	int ret;
 	struct ktap_test_results *results;
 	struct ktap_test_results_element *temp;
-	int skip = 0;
-	bool fail = false;
-
-	/* get normalized module name */
-	if (igt_ktest_init(&tst, module_name) != 0) {
-		igt_warn("Unable to initialize ktest for %s\n", module_name);
-		igt_fail(IGT_EXIT_ABORT);
-	}
 
-	if (igt_ktest_begin(&tst) != 0) {
-		igt_warn("Unable to begin ktest for %s\n", module_name);
-		igt_ktest_fini(&tst);
-		igt_fail(IGT_EXIT_ABORT);
-	}
+	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
 
-	if (tst.kmsg < 0) {
-		igt_warn("Could not open /dev/kmsg\n");
-		fail = true;
-		goto unload;
-	}
-
-	if (lseek(tst.kmsg, 0, SEEK_END)) {
-		igt_warn("Could not seek the end of /dev/kmsg\n");
-		fail = true;
-		goto unload;
-	}
-
-	ret = kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod);
-	if (ret) {
-		igt_warn("Unable to load KUnit\n");
-		skip = ret;
-		goto unload;
-	}
+	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
 
+	igt_skip_on(kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod));
 	is_builtin = kmod_module_get_initstate(kunit_kmod) == KMOD_MODULE_BUILTIN;
 	kmod_module_unref(kunit_kmod);
 
-	results = ktap_parser_start(tst.kmsg, is_builtin);
+	results = ktap_parser_start(tst->kmsg, is_builtin);
 
-	ret = igt_kmod_load(module_name, opts);
-	if (ret) {
-		skip = ret;
-		igt_warn("Unable to load %s module\n", module_name);
-		ret = ktap_parser_stop();
-		goto unload;
+	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
+		igt_ignore_warn(ktap_parser_stop());
+		igt_skip("Unable to load %s module\n", tst->module_name);
 	}
 
 	while (READ_ONCE(results->still_running) || READ_ONCE(results->head) != NULL)
@@ -825,24 +793,21 @@ static void __igt_kunit(const char *module_name, const char *opts)
 		}
 	}
 
-unload:
-	igt_ktest_end(&tst);
-
-	igt_ktest_fini(&tst);
-
-	igt_skip_on_f(skip, "Skipping test, as probing KUnit module failed\n");
-
-	if (fail)
-		igt_fail(IGT_EXIT_ABORT);
-
 	ret = ktap_parser_stop();
 
-	if (ret != 0)
-		igt_fail(IGT_EXIT_ABORT);
+	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
 void igt_kunit(const char *module_name, const char *name, const char *opts)
 {
+	struct igt_ktest tst = { .kmsg = -1, };
+
+
+	igt_fixture {
+		igt_skip_on(igt_ktest_init(&tst, module_name));
+		igt_skip_on(igt_ktest_begin(&tst));
+	}
+
 	/*
 	 * We need to use igt_subtest here, as otherwise it may crash with:
 	 *  skipping is allowed only in fixtures, subtests or igt_simple_main
@@ -854,7 +819,12 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 		name = module_name;
 
 	igt_subtest_with_dynamic(name)
-		__igt_kunit(module_name, opts);
+		__igt_kunit(&tst, opts);
+
+	igt_fixture
+		igt_ktest_end(&tst);
+
+	igt_ktest_fini(&tst);
 }
 
 static int open_parameters(const char *module_name)
-- 
2.41.0

