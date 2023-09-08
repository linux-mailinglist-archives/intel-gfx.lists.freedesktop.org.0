Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9772D79861F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7D710E04B;
	Fri,  8 Sep 2023 10:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B0D10E8B9;
 Fri,  8 Sep 2023 10:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170027; x=1725706027;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JKnf7psVzbr57Mq5EFJBAPM3SNWMV0ma7c+dpTqUf1g=;
 b=SvIxcc0Ond3abC9UStERh2AYpJDTAHTbvqy5Ig3ez9aopT2CI5nQAH0v
 Ybx1bCytlmajhQY9UneFpC5lrwqbou27JHYnGjG0SzSp5nkQy4jGAWixh
 9fFWF8lJSu1KF2wfgbN1A23ov8J0VbwL20q7g+b0g9wTgmWCmWxUy7jqo
 yB6p4c8DSAbXe8WaOMkhTwSvA0IO9C/rzqqSH6iR9rX0h77ljcbN1V01H
 1RGnUROYaCixHXsMOCdN28FijOJ5oP+bR0w4f/2SchfJWHRD+Gm3WL19o
 LazNmZOeVbjdNOjxQbUMSlGl8Dg1ldw0zKHeuxGK5uFb8zddDvQhGhL9Z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922695"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922695"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:47:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531648"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531648"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:47:05 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:56 +0200
Message-ID: <20230908104438.125454-36-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 17/17] lib/kunit: Omit suite name prefix
 if the same as subtest name
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
index ddd5499f5e..bd4305482b 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -822,7 +822,8 @@ static void kunit_result_free(struct igt_ktap_result *r,
  *
  * Returns: IGT default codes
  */
-static void __igt_kunit(struct igt_ktest *tst, const char *opts)
+static void
+__igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 {
 	struct modprobe_data modprobe = { tst->kmod, opts, 0, };
 	char *suite_name = NULL, *case_name = NULL;
@@ -866,7 +867,11 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 
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
@@ -976,7 +981,7 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	 * and for documentation.
 	 */
 	igt_subtest_with_dynamic(name)
-		__igt_kunit(&tst, opts);
+		__igt_kunit(&tst, name, opts);
 
 	igt_ktest_end(&tst);
 
-- 
2.41.0

