Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5FA7B6528
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:13:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E832A10E2E6;
	Tue,  3 Oct 2023 09:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3295310E2D8;
 Tue,  3 Oct 2023 09:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696324420; x=1727860420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FIF1EHjL7+Al2ztOFOGJaqOUf7ZtpUKJ9/ZVYFlgHv0=;
 b=FV8/W/ZPGC7RyL5gTO/e4Fm8TzL/ndOYikveAymhU7cNzigK/A1GWUpW
 GDuuAF4znPSjnFB960L0VyC9kjk+gdIi81CuphAX7GKd7i6EkSxoHQm4g
 wqbbARfNFp5Upue6BPn1S6Fx0oNibZLVtHui07kyb70USwCmMkScrdMQL
 WTt4KJk20mtnHO5xvHzX6UTlIdsPYw9dWbJAKyPOYYO+se6Mxra9AVcHc
 9mZo5kwuWqrd8z+xmg48hwoKviP7Q1RyWTPJdf86vh9oO+v7GT5X3QHHE
 HqNnVc7jsaNQUysSfKyNusYWmqj8dbUqFz2YAniKkM8Mod45hwbC743OS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1419748"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="1419748"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997935801"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="997935801"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.14.111])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:34 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Oct 2023 11:10:52 +0200
Message-ID: <20231003091044.407965-18-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 7/9] lib/ktap: Drop workaround for missing
 top level KTAP headers
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A workaround was implemented in IGT KTAP parser so it could accepted KTAP
reports with missing top level KTAP version and test suite plan headers.
Since kernel side commit c95e7c05c139 ("kunit: Report the count of test
suites in a module"), included in the mainline kernel since v6.6-rc1, has
fixed that issue, that workaround is no longer needed.  Drop it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_ktap.c              | 12 ------------
 lib/tests/igt_ktap_parser.c |  3 +--
 2 files changed, 1 insertion(+), 14 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 53a6c63288..7c52ba11ed 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -84,18 +84,6 @@ int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap)
 		   igt_debug_on(sscanf(buf,
 				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
 				       &n, &len) == 1 && len == strlen(buf))) {
-		/*
-		 * TODO: drop the following workaround as soon as
-		 * kernel side issue of missing lines with top level
-		 * KTAP version and test suite plan is fixed.
-		 */
-		if (ktap->expect == KTAP_START) {
-			ktap->suite_count = 1;
-			ktap->suite_last = 0;
-			ktap->suite_name = NULL;
-			ktap->expect = SUITE_START;
-		}
-
 		if (igt_debug_on(ktap->expect != SUITE_START))
 			return -EPROTO;
 
diff --git a/lib/tests/igt_ktap_parser.c b/lib/tests/igt_ktap_parser.c
index 6357bdf6a5..476e14092f 100644
--- a/lib/tests/igt_ktap_parser.c
+++ b/lib/tests/igt_ktap_parser.c
@@ -190,8 +190,7 @@ static void ktap_top_version(void)
 
 	ktap = igt_ktap_alloc(&results);
 	igt_require(ktap);
-	/* TODO: change to -EPROTO as soon as related workaround is dropped */
-	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EPROTO);
 	igt_ktap_free(ktap);
 
 	ktap = igt_ktap_alloc(&results);
-- 
2.42.0

