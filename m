Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E867A4AD0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C500E10E011;
	Mon, 18 Sep 2023 13:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9A810E04D;
 Mon, 18 Sep 2023 13:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045158; x=1726581158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iCQ+MWsQZNQh+UO6eDz4m7sv5WWrAMfmwamZITYgPys=;
 b=mWy6TRJFM2s9TZz/99bJqHdh9VArRoPcuTsKwhJgjCLV1Uf7/8UiHXYG
 OdTAvuIGHNBrRy60/9eSVmW0wxxaNU4qTTtg1/7LdICMNltxRLXm6TsS+
 IMVpWDSs0BRXS6WesjIZ2LUF9Gth34qE0ORVZ2/6Pkhj+pprjJMOpZDG6
 xBHDEiNri0n7Af2Gd5sC5Yt/BynP/A3Z8Nc3n+56YdqM3zrroWPdeBw6Z
 dHLb0/F1uG/MdoqwrckTSU06TwcwsMwkUnSggafgnJ19YYHT3uh5hz2NX
 HvroDe4+cX/9XuMLBO4RLr/bUWGRPlfmWhIIfSRdrUldbMd9BGpeSonmy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969552"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969552"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030496"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030496"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:36 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:56 +0200
Message-ID: <20230918134249.31645-25-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 06/17] lib/ktap: Make sure we fail on
 premature cancel
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

After loading a kunit test module that executes some kunit test cases, we
evaluate overall result of an IGT subtest that corresponds to that module
based on an error code returned by kunit_parser_stop() helper, obtained
from a .ret field of a ktap_args structure.  That code is now assigned to
that structure field right before completion of the KTAP parser thread
start routine.  If the thread is canceled for some reason then the return
code will be undefined.

Initialize the return code on KTAP parser startup with a value that
indicates a failure, then change it to success when so indicated by result
of KTAP parsing.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_ktap.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 123a40d183..84fb13218f 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -579,9 +579,7 @@ igt_ktap_parser_start:
 igt_ktap_parser_end:
 	results.still_running = false;
 
-	if (failed_tests || !found_tests)
-		ktap_args.ret = IGT_EXIT_FAILURE;
-	else
+	if (found_tests && !failed_tests)
 		ktap_args.ret = IGT_EXIT_SUCCESS;
 
 	return NULL;
@@ -598,6 +596,7 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 	ktap_args.fd = fd;
 	ktap_args.is_builtin = is_builtin;
 	ktap_args.is_running = true;
+	ktap_args.ret = IGT_EXIT_FAILURE;
 	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
 
 	return &results;
-- 
2.41.0

