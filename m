Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B51D87E76B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBEC10F54D;
	Mon, 18 Mar 2024 10:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSv67osK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C440C10F54D;
 Mon, 18 Mar 2024 10:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710758181; x=1742294181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2DNOxfCS127zn8QYpRJ1U9s+DlTDWfbWXS5vyx7TVk=;
 b=DSv67osKSgyCSRIca0Y1Ur0b2ANwrZOE0JtYTI9mMv4biPBuGCP2gWt2
 yRdwmTi6phDOa4EbWZDFlkj/+xhx0o7gxzeB6L+FaRZ/Xplvi3yhX3ZQW
 bqufwoPMiBMR5V+KzJ6WdqUEwBSwyGFWnVk3WhVrzcDZPeLMn1HdPXyOz
 8bv/BPOi4f3qKWS9deS9K8qbVhhmYN6+gqRFzZCWJG58NsPYrOHDexNeM
 TbHPlYoEb3O3UfGjNx5vjNftzWASCggzdHC2k6m7eu2VV3DOLi2wbF/hM
 1mDYf9KPgynZQWLjbL7R8f/wyw5rOEAFzZVg53zeu62ztJCVoCgmSiGf0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="6168201"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="6168201"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="18015809"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.105])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v3 3/5] lib/kunit: Time out promptly on missing KTAP
 report
Date: Mon, 18 Mar 2024 11:13:29 +0100
Message-ID: <20240318103534.701693-10-janusz.krzysztofik@linux.intel.com>
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

If a test provides a subtest name that doesn't match any test suites
provided by the requested KUnit test module then no KTAP report appears in
dmesg, not even an empty one as one may expect.  As a consequence, we now
loop endlessly around reading potential lines of the missing report from
/dev/kmsg, until killed by IGT runner on timeout.

When trying to collect names of test cases from a KTAP report generated in
all skip mode, set an alarm that fires up 10 seconds after we start
waiting for the report, interrupts blocking read() if pending, and
terminates the subtest with SKIP result.

As soon as we have collected a non-empty list of test cases, we may as
well expect a non-empty KTAP report from actual execution of those test
cases, assuming successful load of the KUnit test module in execution
mode.  Then, there is no need to set up a similar timeout before we start
to extract and parse that report.

Suggested-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 8a6824ea7e..f0e4d5ec76 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1204,12 +1204,19 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
 	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
+static void kunit_get_tests_timeout(int signal)
+{
+	igt_skip("Timed out while trying to extract a list of KUnit test cases from /dev/kmsg\n");
+}
+
 static bool kunit_get_tests(struct igt_list_head *tests,
 			    struct igt_ktest *tst,
 			    const char *suite,
 			    const char *opts,
 			    struct igt_ktap_results **ktap)
 {
+	struct sigaction sigalrm = { .sa_handler = kunit_get_tests_timeout, },
+			 *saved;
 	struct igt_ktap_result *r, *rn;
 	unsigned long taints;
 	int flags, err;
@@ -1239,10 +1246,16 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 	*ktap = igt_ktap_alloc(tests);
 	igt_require(*ktap);
 
+	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
+	alarm(10);
+
 	do
 		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
 	while (err == -EINPROGRESS);
 
+	alarm(0);
+	igt_debug_on(sigaction(SIGALRM, saved, NULL));
+
 	igt_ktap_free(ktap);
 
 	igt_skip_on_f(err,
-- 
2.43.0

