Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EE9798617
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E53B10E8A0;
	Fri,  8 Sep 2023 10:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867BA10E89A;
 Fri,  8 Sep 2023 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170012; x=1725706012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXREkvPA82Us23UqpnMo3Rm7aWMcQPg5Crt1sUMTIM4=;
 b=D2brvC/t/KQm+xAoJEB8uN3On8QObD6R5XlYS8Nwec46NrkEzqoDvlBt
 MFArXE4xsOIwP5XLerB//dyTbUAZ6TilIQjASv0RAycbP+Jg3eUPOUa2g
 PaQB4XqWpsTdYT+7/dCs2VFd1riZdfgNcYtIhId6pqyiSoUKrXM4KOenS
 DG9T1qUhqEK9mOR1JVsmTQrnKX2QaZ06OBcb4Oqh4g3F7u7LbBuPNHeTV
 S9r+GduvPFHwMee0zTDdxiCn51dGwMexTKSH6mBhhv6R/ZM4SSFp2MCAt
 1RqqUS/pKc+K+c0XBaQRBQL/cvDqvDpjRy1QCofngoI/ZjgzOrr56CZji w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922636"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922636"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531596"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531596"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:47 +0200
Message-ID: <20230908104438.125454-27-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 08/17] lib/kunit: Cancel KTP parser on
 module load failure
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

For our KTAP parser to be running in parallel with kunit test module
loading, we now start it in a separate thread before we load the module.
If the module loading fails then we join the KTAP parser thread right
after that failure.  If the KTAP thread sleeps for some reason then we
can fail to break the test immediately.

Cancel the KTAP parser thread right after module load error and before
joining it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 1 +
 lib/igt_ktap.c | 6 ++++++
 lib/igt_ktap.h | 1 +
 3 files changed, 8 insertions(+)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 78b8eb8f53..fb0bd21ee5 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -773,6 +773,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 	results = ktap_parser_start(tst->kmsg, is_builtin);
 
 	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
+		ktap_parser_cancel();
 		igt_ignore_warn(ktap_parser_stop());
 		igt_skip("Unable to load %s module\n", tst->module_name);
 	}
diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 3cfb55ec97..1e75b2ec23 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -602,6 +602,12 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 	return &results;
 }
 
+void ktap_parser_cancel(void)
+{
+	ktap_args.is_running = false;
+	pthread_cancel(ktap_parser_thread);
+}
+
 int ktap_parser_stop(void)
 {
 	ktap_args.is_running = false;
diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
index ea57c2bb9b..991800e912 100644
--- a/lib/igt_ktap.h
+++ b/lib/igt_ktap.h
@@ -45,6 +45,7 @@ struct ktap_test_results {
 
 
 struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin);
+void ktap_parser_cancel(void);
 int ktap_parser_stop(void);
 
 #endif /* IGT_KTAP_H */
-- 
2.41.0

