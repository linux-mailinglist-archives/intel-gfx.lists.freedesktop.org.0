Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE98699F8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 16:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F4D10E91E;
	Tue, 27 Feb 2024 15:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e7rvoyna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF35910E919;
 Tue, 27 Feb 2024 15:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709046709; x=1740582709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nCvQviZXwkpKHWIUwJ+GASrK/UlFJb6DKneCUm32LAc=;
 b=e7rvoynaV/Xlu1SIZUEkj2qEP6Zqu16oUZw+Bo4s1ZCZU+FTRz8vK2mh
 cWt7tQvQsmBcQrQbMvi0pWOjsM4KoTRKGPhdaqDJr9mCOLnR1MjtjR7P3
 kJ6OzCkbaKSAjBEK0Emglf3DY73WDSBhxMwWLIzlaoKbajQC46WvtvPNi
 +PmW5rvbjp3Vrln4xT6Uzgi5spldOffmbCtIJmo0C6nLKKnHGKUN7z+OL
 fDsA7E7OD4dC0v6b/MvZDAVn8k6zQv/iheszzkth2jOVEByct/R6PpoYi
 b/VyW9YAqFgvTMj0X8nVe1cUXSvN2FjK+OMq1vci0cNFtiG26ptwduqC5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3260413"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="3260413"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 07:11:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7635369"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.4.234])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 07:11:48 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH i-g-t v2 2/2] lib/kunit: Minimize code duplication
Date: Tue, 27 Feb 2024 16:10:42 +0100
Message-ID: <20240227151128.16802-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
References: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
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

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index e9e00ac5b2..86cf50d5b7 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1177,9 +1177,8 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 			    const char *opts)
 {
 	struct igt_ktap_result *r, *rn;
-	struct igt_ktap_results *ktap;
 	unsigned long taints;
-	int flags, err;
+	int flags;
 
 	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
 
@@ -1203,17 +1202,7 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 	igt_skip_on(modprobe(tst->kmod, opts));
 	igt_skip_on(igt_kernel_tainted(&taints));
 
-	ktap = igt_ktap_alloc(tests);
-	igt_require(ktap);
-
-	do
-		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, ktap);
-	while (err == -EINPROGRESS);
-
-	igt_ktap_free(ktap);
-
-	igt_skip_on_f(err,
-		      "KTAP parser failed while getting a list of test cases\n");
+	igt_skip_on(kunit_get_results(tests, tst->kmsg));
 
 	igt_list_for_each_entry_safe(r, rn, tests, link)
 		igt_require_f(r->code == IGT_EXIT_SKIP,
-- 
2.43.0

