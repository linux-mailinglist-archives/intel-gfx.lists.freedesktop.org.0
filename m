Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D9A798612
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD45010E8A3;
	Fri,  8 Sep 2023 10:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C4710E89F;
 Fri,  8 Sep 2023 10:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694169997; x=1725705997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r+IHRzp6K/Mi2Qdb1+eIJA15NKdIDNp1VFDAPNtiAi0=;
 b=PyD1WBdYy37oYB5kAvnXjzWb7VpDKOXUaHcT6djUJ4ryyBYa/BgIiidi
 lx3khu7l9vK8ObzVolzsE6nH95E8X5kAKvPd+FpE7gyqrALHS1NwzIXK8
 SHmLoROiEiF3O0yP2bfAKPJQp3PtoaHv41E1s8AA2iyKLAe30StX6XUNA
 HZiwJIYoqNfjfmqXhALUjzhF4l3hKAAQ2Sb3lr0E+tMw7eStpGC2TpOXR
 qKXDfbsrH3LfKGssOQjac5omemV3FS/Nng8R/Y73f7c3zzN0bZSvwwX5a
 SQRm2xznfXdyjZOpd9LnNNOOG50Ne6hcnpU7kzB8yw7tvjabN8XR6sPo0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922574"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922574"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531561"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531561"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:35 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:43 +0200
Message-ID: <20230908104438.125454-23-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 04/17] lib/kunit: Optimize calls to
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

