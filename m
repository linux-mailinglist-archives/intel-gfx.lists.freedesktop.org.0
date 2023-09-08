Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D82F7798614
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE0F10E8A6;
	Fri,  8 Sep 2023 10:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416A610E8A4;
 Fri,  8 Sep 2023 10:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170002; x=1725706002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DuR9KvcoUVDYrg3SuqqMkjTr0aU3slLY33Dj+Euc05E=;
 b=oEnKMx7dzpihdTtuXBiNpFEczoIYtpnB6WOSmBtxdBRfCwJ6QgyFLkhF
 omPf4XNMupSO1CJuJ2901er5JmLcx0moWdxJ/qFGAGUvaLfijBU0u2sE1
 21L1+lfmGMu06TYRGQCCgRzRKrGTU32l/KcVtbBl5fr3QS/9XDA+p6QY/
 SEhtyIpKjoq26KEncYS6B7BhvyeY/4zy8tKwn0bFZQC26QZlplPNFZIbE
 4lSDzK1vofHpA0IxCSEbjX8+hv67raVK0kRUYSUFOxKcxp6svg5X8a+z1
 soaJ2ToATZcQlv36JZjRoBxunnY3VW/UJZhomRtA1qKHNu3ChEWQuy0Za A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922598"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922598"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531582"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531582"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:39 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:45 +0200
Message-ID: <20230908104438.125454-25-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 06/17] lib/ktap: Make sure we fail on
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

