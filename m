Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FE187E76E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F0A10F552;
	Mon, 18 Mar 2024 10:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5rSZIgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8099B10F552;
 Mon, 18 Mar 2024 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710758185; x=1742294185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a0v1nVFvLUOLk0DnUPtRMAhsBxCXgFxaJBgTDsEAuOI=;
 b=F5rSZIgc/I/DKwyNDDtHB140Qhx/JZ7AfKwBA9quR2YYkGmz5lok4PyS
 uN80R6Ir20iOPTG1rjz+G+C3BIou54wfaenIB5Z+FzsFfJECMbjJZ2C/M
 nMoeDZ89Uv1BQZNLdL5bxK2tqWMzWvFczDuAj9zx/tMXWVPMkewSIc1zA
 H8+dYE6cnC+C6fIWyI5mdE+OaXU4Sah237+i6pNTgEsIwNTetf09TMCcM
 GBGg8QJcUvddOyHM9eVPn6mCzstVCrFkX5dTocDyGcXanFU9/HbUCFGo7
 lzPo8yY2pan8XAL4dNwdX+vzJRCdvYdyNY3enegIWoU2vC0/Rhu607len g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="6168208"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="6168208"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="18015818"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.105])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:36:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v3 5/5] lib/kunit: Minimize code duplication
Date: Mon, 18 Mar 2024 11:13:31 +0100
Message-ID: <20240318103534.701693-12-janusz.krzysztofik@linux.intel.com>
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

A new helper has been introduced recently, used for fetching KTAP results
of a single test case.  Since that helper is called for that purpose
only after the test module is loaded with all other test cases filtered
out, its actual implementation is as simple as collecting all results from
a single KTAP report, no matter how many test suites and test cases it
covers.  Then, it's a good candidate for reuse in other scenarios when a
single KTAP report is handled, e.g., when we collect a list of test cases
from a single test suite or test module.  Go for it.

v3: Rebased on top of changes to struct igt_ktap_results pointer handling.
v2: Rebased on invalid test suite name workaround.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 lib/igt_kmod.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index c495d11b16..8979a5928b 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1262,21 +1262,14 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 	igt_skip_on(modprobe(tst->kmod, opts));
 	igt_skip_on(igt_kernel_tainted(&taints));
 
-	*ktap = igt_ktap_alloc(tests);
-	igt_require(*ktap);
-
 	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
 	alarm(10);
 
-	do
-		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
-	while (err == -EINPROGRESS);
+	err = kunit_get_results(tests, tst->kmsg, ktap);
 
 	alarm(0);
 	igt_debug_on(sigaction(SIGALRM, saved, NULL));
 
-	igt_ktap_free(ktap);
-
 	igt_skip_on_f(err,
 		      "KTAP parser failed while getting a list of test cases\n");
 
-- 
2.43.0

