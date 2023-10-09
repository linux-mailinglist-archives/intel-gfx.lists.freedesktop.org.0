Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 412F47BDC99
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A336310E26A;
	Mon,  9 Oct 2023 12:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEEA410E265;
 Mon,  9 Oct 2023 12:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855416; x=1728391416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CyKAUbGGIKwZ5RjMwj4Kul+jKwaY+pwtiD7vroI0fjA=;
 b=aPsXamX+ajUc+97WSTxCfgoHSU/U4lZj1Jixc7Ju2DI4mO3Enws0oQhu
 i9Efw0ocuph9zKIsikaYG5IKlbVK6MJ1tBQyT3lj83I19CcOPi/D0U+Ct
 OHmPkoE7Xv2u30+PEKmINEmPoOiWLIAnOuJ+DfczRSAMTBYjZgfbG5k+y
 MdD2ft5oauSdzSceLWyrfmwptxbR4m3Rj0gQZ1j40A4zX55yGoSnAAG5H
 5vNg4JGj6t319Ba5wSKxJ7NPqpNt3LrJcGnkoqm5L156/rPRGiuoZ3EeS
 wZ6PSKT0DPrHimlA1wV3B2QjrR/cAwFFu9LRVE1BbHzWI2uO0YGA5ADgg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010568"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010568"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326822"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326822"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:33 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:27:54 +0200
Message-ID: <20231009122750.519112-16-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 03/11] lib/kunit: Fix misplaced
 igt_kunit() doc
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

When igt_kunit() was converted to a helper and wrapped with a new function
promoted to take the name and role of the library API, related
documentation was left unchanged and still placed in front the demoted
function.  Update that documentation and move it to where it now belongs.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_kmod.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index df0e650d49..426ae5b26f 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -762,15 +762,6 @@ static void *modprobe_task(void *arg)
 	return NULL;
 }
 
-/**
- * igt_kunit:
- * @module_name: the name of the module
- * @opts: options to load the module
- *
- * Loads the test module, parses its (k)tap dmesg output, then unloads it
- *
- * Returns: IGT default codes
- */
 static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 {
 	struct modprobe_data modprobe = { tst->kmod, opts, 0, };
@@ -849,6 +840,14 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
+/**
+ * igt_kunit:
+ * @module_name: the name of the module
+ * @name: the name of subtest, if different from that derived from module name
+ * @opts: options to load the module
+ *
+ * Loads the test module, parses its (k)tap dmesg output, then unloads it
+ */
 void igt_kunit(const char *module_name, const char *name, const char *opts)
 {
 	struct igt_ktest tst = { .kmsg = -1, };
-- 
2.42.0

