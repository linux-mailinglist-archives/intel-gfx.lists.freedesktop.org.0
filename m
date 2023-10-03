Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C127B6523
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80E310E2A0;
	Tue,  3 Oct 2023 09:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A5510E276;
 Tue,  3 Oct 2023 09:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696324407; x=1727860407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w9EPQd5jzPLg6WCyJIZgR2rX1m23RaW/THesNn3lM7s=;
 b=VgArYAgh+YYias8oSe6SOQwcpUoQAA80i1lx9vct/sRHNY0KbWTI8zAc
 tl/ye2NJpr6FUSGk/08qwbU+puEIFTBqzg0Tyz/1FOD53a55/l7i+Vzbb
 4z9Py0CO930hq0aTrVsIwFHvNPV7NMd6K17bOikLKvZRe/zoeuI5GRCfQ
 rGDRG5Rdem39QYPHqmHT2OrWYXndIepdTZFVbPvjv89k24Ymsmk0+IuR7
 y6J1dZipB0/cPcmDct5ffHa+6sp3pDEBe85LHrrnkoT/DK3YSsaEXMMnM
 Wvz5Nde8rdzx6xCBvprbGTMeGSFQLw2v+J5NBhMYlkGyOyJh6SU2Bt2U1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1419703"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="1419703"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997935766"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="997935766"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.14.111])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:24 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Oct 2023 11:10:48 +0200
Message-ID: <20231003091044.407965-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/9] lib/kunit: Fix misplaced igt_kunit()
 doc
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

