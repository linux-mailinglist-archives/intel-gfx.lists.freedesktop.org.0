Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDEB7A4AD7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B98910E2CF;
	Mon, 18 Sep 2023 13:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C6010E190;
 Mon, 18 Sep 2023 13:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045177; x=1726581177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7wnjMBn8hyh4pVg0G+mXr24gz0YOiaSNgk9ieuXW9c0=;
 b=Rsgo8AbqjW6WMNC2n+u/rr+CAwBgyTgFkbmMYHj4WCAvACEdCO32BHso
 v/hPHWU+jBom+aFSNIDROub4BdFOpRhxvhAehpPGQlEF5c3JClYZIFUhb
 3UCljEX1BifZi0tTkGOLsCib8WWD8CSyThmbstrhng1QXrdCBZ/1PbtPJ
 dRxJTyrfECbCY9Z+Zdns43+m5C1EWtT5s3hcIr2TifangBOsriQabxdHG
 gNKhTeZCDBYal6kn+XRBjAJ7L5TRvwnEU81t8tAxJGzLC1dC/+XDjfQ0I
 Vt+Vmo9+DvXQ2mG1DKD4SR7d2xkLKYd0YSf/UwAUA1lJfaGAaPwKH5pMh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969716"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969716"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030578"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030578"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:54 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:43:04 +0200
Message-ID: <20230918134249.31645-33-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 14/17] lib/kunit: Load test modules in
 background
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

For igt_runner to be able to correlate a stream of IGT results from
dynamic sub-subtests that correspond to individual kunit test cases, read
by the igt_runner from stdout / stderr of the test process, with a stream
of kernel messages read from /dev/kmsg, we need both result streams being
fed with data in parallel.  While our KTAP parser is currently started in
the background and reads KTAP results from /dev/kmsg in parallel with
execution of kunit tests performed by the kernel while we are loading a
kunit test module, results from the parser are then only stored as
intermediate data and not processed any further until the module loading
completes.  As a consequence, there is no synchronization between the two
streams.

Call the function that loads the kunit test module from a separate thread
and process the intermediate results immediately, as soon as available
from the background parser, without waiting for completion of module
loading.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_kmod.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 2941524bb4..8fbd274ccf 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -25,6 +25,7 @@
 #include <signal.h>
 #include <errno.h>
 #include <fcntl.h>
+#include <pthread.h>
 #include <sys/utsname.h>
 
 #include "igt_aux.h"
@@ -746,6 +747,21 @@ void igt_kselftest_get_tests(struct kmod_module *kmod,
 	kmod_module_info_free_list(pre);
 }
 
+struct modprobe_data {
+	struct kmod_module *kmod;
+	const char *opts;
+	int err;
+};
+
+static void *modprobe_task(void *arg)
+{
+	struct modprobe_data *data = arg;
+
+	data->err = modprobe(data->kmod, data->opts);
+
+	return NULL;
+}
+
 /**
  * igt_kunit:
  * @module_name: the name of the module
@@ -757,9 +773,11 @@ void igt_kselftest_get_tests(struct kmod_module *kmod,
  */
 static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 {
+	struct modprobe_data modprobe = { tst->kmod, opts, 0, };
 	struct kmod_module *kunit_kmod;
 	bool is_builtin;
 	struct ktap_test_results *results;
+	pthread_t modprobe_thread;
 	unsigned long taints;
 	int flags, ret;
 
@@ -777,18 +795,25 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 
 	results = ktap_parser_start(tst->kmsg, is_builtin);
 
-	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
+	if (igt_debug_on(pthread_create(&modprobe_thread, NULL,
+					modprobe_task, &modprobe))) {
 		ktap_parser_cancel();
 		igt_ignore_warn(ktap_parser_stop());
-		igt_skip("Unable to load %s module\n", tst->module_name);
+		igt_skip("Failed to create a modprobe thread\n");
 	}
 
 	while (READ_ONCE(results->still_running) || !igt_list_empty(&results->list))
 	{
 		struct ktap_test_results_element *result;
 
+		if (!pthread_tryjoin_np(modprobe_thread, NULL) && modprobe.err) {
+			ktap_parser_cancel();
+			break;
+		}
+
 		if (igt_kernel_tainted(&taints)) {
 			ktap_parser_cancel();
+			pthread_cancel(modprobe_thread);
 			break;
 		}
 
@@ -806,14 +831,20 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 		igt_dynamic(result->test_name) {
 			igt_assert(READ_ONCE(result->passed));
 
+			if (!pthread_tryjoin_np(modprobe_thread, NULL))
+				igt_assert_eq(modprobe.err, 0);
+
 			igt_fail_on(igt_kernel_tainted(&taints));
 		}
 
 		free(result);
 	}
 
+	pthread_join(modprobe_thread, NULL);
+
 	ret = ktap_parser_stop();
 
+	igt_skip_on(modprobe.err);
 	igt_skip_on(igt_kernel_tainted(&taints));
 	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
-- 
2.41.0

