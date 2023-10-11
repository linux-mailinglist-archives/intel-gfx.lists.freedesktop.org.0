Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7CE7C56D9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB8110E8CD;
	Wed, 11 Oct 2023 14:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6172C10E8C5;
 Wed, 11 Oct 2023 14:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034710; x=1728570710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CyKAUbGGIKwZ5RjMwj4Kul+jKwaY+pwtiD7vroI0fjA=;
 b=nBAe2QM0WcIA7FPDXHPZIzfIXT/ZJ3vdIWDJFZ3qKlKVVtI9rJBYsLLi
 YhdhAPH1v9jtLAIGJw+OP/BbMfqbgFLWdIf1BrS2iINF7AKy4CP8jXJPM
 jdQ0qe6X6Gvg3u5HSBqJ2JkeMvhywVRldBcs95SOYj9kCoC4qEsfKLbuH
 esBEINDm/BmlP8i5H9yFsNklFdHeyGYO0Sq0A6boFsDw31IK9prGjPVzJ
 oNitEK/4+yOit6o+JIxRtMjEtPCfl8ZyS7+lm9XMIEsjdajH1R5UKlliP
 FlMhC6qtHZ9JmtEU8YfZygKkBaUU8lnyUMm+k5tFsUyRJz5tfmmnfDeun g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042033"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042033"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:31:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641559"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641559"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:30:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:39 +0200
Message-ID: <20231011141734.590321-17-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 04/11] lib/kunit: Fix misplaced
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

