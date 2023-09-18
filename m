Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 757BC7A4ADB
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC84310E286;
	Mon, 18 Sep 2023 13:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C2D10E2C5;
 Mon, 18 Sep 2023 13:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045185; x=1726581185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vt+qFfpL+cuWq9+pc5nzMWSke2+CYAEajidbWL5HH1g=;
 b=X4UBd9wqe2d0t5ax2Z2heiRa0VpmZGSahrKPTib6v5Ub75+kgqJ4Sfep
 oZA9fIvYueMR/8BBJLT7fGqFMUtm7mltZR72ndwQfV42KDk0wohSvTTVM
 6RKj05tuEcI72od1u8pcc4XLWWndPhNpWrqQ2rK/akKnhhJP1ANSFIK96
 WY1r0rQhUqDo9tEc+1YZSJYhJjvuWToOKXGP3fcZter7YcKu4ZPQw9Tu7
 SAHlurGQ41N7IaolCGBdzgNzDGwP2pIZY0TrMaJvBNrvo6JfoK4fizwET
 9GsmALYop/Lt8HpmW09v1YtS+cF6OT7sYTCXXyO6mYFpf124LL9uzpTis Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969758"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969758"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:53:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030606"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030606"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:53:02 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:43:07 +0200
Message-ID: <20230918134249.31645-36-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 17/17] lib/kunit: Omit suite name
 prefix if the same as subtest name
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

Kunit test modules usually contain one test suite, named after the module
name with the trailing "_test" or "_kunit" suffix omitted.  Since we
follow the same convention when we derive subtest names from module names,
there is a great chance that those two names match.  Take this into
account when composing names for IGT dynamic sub-subtest names and drop
the leading test suite name component when it is the same as subtest name.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index f6e0ab07ce..05c837031c 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -863,7 +863,8 @@ static void kunit_result_free(struct igt_ktap_result *r,
  *
  * Returns: IGT default codes
  */
-static void __igt_kunit(struct igt_ktest *tst, const char *opts)
+static void
+__igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 {
 	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0,
 					  PTHREAD_MUTEX_INITIALIZER, };
@@ -902,7 +903,11 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 
 		r = igt_list_first_entry(&results, r, link);
 
-		igt_dynamic_f("%s-%s", r->suite_name, r->case_name) {
+		igt_dynamic_f("%s%s%s",
+			      strcmp(r->suite_name, name) ?  r->suite_name : "",
+			      strcmp(r->suite_name, name) ? "-" : "",
+			      r->case_name) {
+
 			if (r->code == IGT_EXIT_INVALID) {
 				/* parametrized test case, get actual result */
 				kunit_result_free(r, &suite_name, &case_name);
@@ -1011,7 +1016,7 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	 * and for documentation.
 	 */
 	igt_subtest_with_dynamic(name)
-		__igt_kunit(&tst, opts);
+		__igt_kunit(&tst, name, opts);
 
 	igt_fixture
 		igt_ktest_end(&tst);
-- 
2.41.0

