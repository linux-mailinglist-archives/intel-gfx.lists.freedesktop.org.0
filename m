Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DAF79871B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 14:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5158D10E8C6;
	Fri,  8 Sep 2023 12:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFAD110E8BF;
 Fri,  8 Sep 2023 12:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176477; x=1725712477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXREkvPA82Us23UqpnMo3Rm7aWMcQPg5Crt1sUMTIM4=;
 b=N+JTH9Xp+XQzl0vkFezDbWVbz7ecfQtDLpDeJtoDD2WsRvs8uRT+6hH8
 8ecX87SkEShNKZb1omw6B1/0YoZWDfCv7LNvQe9KEAPI16zMqNBrSntzn
 GUOFxQ5fX5X9ulpn/tg9QpGLv3zOUOZrvmO9gLxJnyEFE5B2fPrNUPuJc
 UubIhVWbc+iyk+gkBFEeShp/iXKmZe4henNJjHoTRz6RhpALLWjKbQgCt
 TnU8iBYnQk7vc6JnzTChCmBjRj2eAzyaZudocL1WtzlSeO74l8MSmLWwf
 cHW1nB6xXnAdXB6unSfRoooeUZHny8bnlVISrkrkSmBas2LAK7jCa0iiJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375014988"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375014988"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857381981"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857381981"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:34 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 14:32:42 +0200
Message-ID: <20230908123233.137134-27-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 08/17] lib/kunit: Cancel KTP parser on
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

