Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EB57A4ACE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CBE10E290;
	Mon, 18 Sep 2023 13:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC79B10E28A;
 Mon, 18 Sep 2023 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045153; x=1726581153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QjsQJot0t2pE6OIPMhGvT3ZJTsfAAoVMGx+qnjrzYjU=;
 b=DWLyTfdoxA5ptJpmDvuRlEZX2xWgNKDopBfUuu2sZF+0SJxDO/tYVmBw
 1ri50MDGZFsu/2viwUQ12sMi++1+Pm/kvk/TXc6ur8akEKz1oUNHSvh3J
 tCTilamV60oxpoOvxcNFEhVY9z9PWQIu1Jvd+ZP6VYwZJXpHvgLPnr0Z3
 vLddl91yiRyvuqkLcrbrRKEkgyea2SVrASqfc+2LuDNcmIHUPeWMiXCDs
 1aATOpEnQ04A88jJHq31XSDW0kRDgwXQnLbaXNj9glM8XXus1IBHrgWBN
 Q/Gy8PZGP2WoYtqJLKYIP0F6EJeqQ+Sg+bDivGkcHMA7LvkgOrguOaGgI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969530"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969530"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030474"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030474"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:54 +0200
Message-ID: <20230918134249.31645-23-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 04/17] lib/kunit: Optimize calls to
 igt_success/skip/fail()
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

Calling igt_success() explicitly at the end of subtest body is not needed.
Other calls to igt_success() can be usually avoided by inverting test
result checks.  Optimize the code that now calls igt_success().

Moreover, using more advanced variants of igt_skip() and igt_fail() where
applicable makes the code more compact.  Go for it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_kmod.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 34ddec3fad..1d1cd51170 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -814,12 +814,8 @@ static void __igt_kunit(const char *module_name, const char *opts)
 		if (READ_ONCE(results->head) != NULL) {
 			pthread_mutex_lock(&results->mutex);
 
-			igt_dynamic(results->head->test_name) {
-				if (READ_ONCE(results->head->passed))
-					igt_success();
-				else
-					igt_fail(IGT_EXIT_FAILURE);
-			}
+			igt_dynamic(results->head->test_name)
+				igt_assert(READ_ONCE(results->head->passed));
 
 			temp = results->head;
 			results->head = results->head->next;
@@ -834,8 +830,7 @@ unload:
 
 	igt_ktest_fini(&tst);
 
-	if (skip)
-		igt_skip("Skipping test, as probing KUnit module returned %d", skip);
+	igt_skip_on_f(skip, "Skipping test, as probing KUnit module failed\n");
 
 	if (fail)
 		igt_fail(IGT_EXIT_ABORT);
@@ -844,9 +839,6 @@ unload:
 
 	if (ret != 0)
 		igt_fail(IGT_EXIT_ABORT);
-
-	if (ret == 0)
-		igt_success();
 }
 
 void igt_kunit(const char *module_name, const char *name, const char *opts)
-- 
2.41.0

