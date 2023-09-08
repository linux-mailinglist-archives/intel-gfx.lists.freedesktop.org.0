Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36870798717
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 14:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34AF10E8B6;
	Fri,  8 Sep 2023 12:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD1C10E8AD;
 Fri,  8 Sep 2023 12:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176468; x=1725712468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r+IHRzp6K/Mi2Qdb1+eIJA15NKdIDNp1VFDAPNtiAi0=;
 b=W7qwu+Isw2iTeDy8wqWMtGnQbLrWSlsVVlhlQd2e9M20/tyDOT7RgYAy
 RAd7gpbn9wSEnjb1eiHfzDxK3tNkYvxAv9LDSXrpwnY/v1UvhqsBnKnDR
 GYErMrGaZdRADnv9BUfzECzFwrlUElDm/W2X41pd1pOmgWMfC6yXaHHqv
 PdtBeBeM7AMYZgXPkijTuSzje1gkq4OhgUsZtTsmmz5E+OIx+Pd1MzEfF
 MKOuiEC19+IanzPtCRJK6xOrzCDYi3gM3bzf+XwmcRrM0ebse3PvZANaI
 yJAlT3uD65BGHHfYP4+lFV4cJV0Imh3Fc8u9kTKifod8bDGb0Y85ohMvK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375014959"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375014959"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857381935"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857381935"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:25 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 14:32:38 +0200
Message-ID: <20230908123233.137134-23-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 04/17] lib/kunit: Optimize calls to
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

