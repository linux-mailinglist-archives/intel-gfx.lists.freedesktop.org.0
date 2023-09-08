Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 679A079861D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A4F10E8B8;
	Fri,  8 Sep 2023 10:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DB0E10E8B9;
 Fri,  8 Sep 2023 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170025; x=1725706025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JnHWuNqrg719Ei4PdPu6rwQA/349CcrtKrTYDmGHO40=;
 b=VM0IllRi0XQUqPkvHYLmZsF5ScFR+8fBOaNer9+WcQMQG6WoPu1H0Isu
 gA2WYwTyz9Jl13IBR9ME7+iV+hRLYAou6Nu//lsONMbqynE3xqMN2GpQF
 pc+fOCn712QcadrjU6NVrns2/Nj1bo7Z1Gb7Lxo8xpfn2/pre+AFtG8CU
 wBywp12uGRuv5CYHqF/Yz405owurRRg/kIluyIdgjn0szZgTSVJZ5bkYt
 VkD3Pbc9KinfWJvjFl4EXfeBTi7SNmRFCyy82y4Cg0Muq8T5fa8vjIBKQ
 UdFtihcIxH3ykL1M7kCj/OQfaSAqzOoHH2KZo+Goo0/IKoEd3WUJYi2tS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922687"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922687"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531643"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531643"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:47:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:55 +0200
Message-ID: <20230908104438.125454-35-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 16/17] lib/kunit: Strip "_test" or
 "_kunit" suffix from subtest names
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

If a user (an IGT test) doesn't provide a subtest name when calling
igt_kunit() then we now use the requested kernel module name as IGT
subtest name.  Since names of kunit test modules usually end with a
"_test" or "_kunit" suffix, those parts of the names don't carry any
useful information.  Strip those suffixes from IGT subtest names.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 26 ++++++++++++++++++++++----
 tests/drm_mm.c | 42 +++++++++++++++++++++---------------------
 2 files changed, 43 insertions(+), 25 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 46a6f81e73..ddd5499f5e 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -944,8 +944,29 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	if (igt_ktest_init(&tst, module_name) != 0)
 		return;
 
-	igt_fixture
+	/*
+	 * If the caller (an IGT test) provides no subtest name then we
+	 * take the module name, drop the trailing "_test" or "_kunit"
+	 * suffix, if any, and use the result as our IGT subtest name.
+	 */
+	if (!name) {
+		name = strdup(module_name);
+		if (name) {
+			char *suffix = strstr(name, "_test");
+
+			if (!suffix)
+				suffix = strstr(name, "_kunit");
+
+			if (suffix)
+				*suffix = '\0';
+		}
+	}
+
+	igt_fixture {
+		igt_require(name);
+
 		igt_require(igt_ktest_begin(&tst) == 0);
+	}
 
 	/*
 	 * We need to use igt_subtest here, as otherwise it may crash with:
@@ -954,9 +975,6 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	 * proper namespace for dynamic subtests, with is required for CI
 	 * and for documentation.
 	 */
-	if (name == NULL)
-		name = module_name;
-
 	igt_subtest_with_dynamic(name)
 		__igt_kunit(&tst, opts);
 
diff --git a/tests/drm_mm.c b/tests/drm_mm.c
index 9a8b3f3fcb..e6ba224745 100644
--- a/tests/drm_mm.c
+++ b/tests/drm_mm.c
@@ -29,123 +29,123 @@
  * Feature: mapping
  * Run type: FULL
  *
- * SUBTEST: drm_mm_test
+ * SUBTEST: drm_mm
  *
- * SUBTEST: drm_mm_test@align
+ * SUBTEST: drm_mm@align
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@align32
+ * SUBTEST: drm_mm@align32
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@align64
+ * SUBTEST: drm_mm@align64
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@bottomup
+ * SUBTEST: drm_mm@bottomup
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@color
+ * SUBTEST: drm_mm@color
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@color_evict
+ * SUBTEST: drm_mm@color_evict
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@color_evict_range
+ * SUBTEST: drm_mm@color_evict_range
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@debug
+ * SUBTEST: drm_mm@debug
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@evict
+ * SUBTEST: drm_mm@evict
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@evict_range
+ * SUBTEST: drm_mm@evict_range
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@frag
+ * SUBTEST: drm_mm@frag
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@highest
+ * SUBTEST: drm_mm@highest
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@init
+ * SUBTEST: drm_mm@init
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@insert
+ * SUBTEST: drm_mm@insert
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@insert_range
+ * SUBTEST: drm_mm@insert_range
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@lowest
+ * SUBTEST: drm_mm@lowest
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@replace
+ * SUBTEST: drm_mm@replace
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@reserve
+ * SUBTEST: drm_mm@reserve
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@sanitycheck
+ * SUBTEST: drm_mm@sanitycheck
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
  * Test category: GEM_Legacy
  *
- * SUBTEST: drm_mm_test@topdown
+ * SUBTEST: drm_mm@topdown
  * Category: Infrastructure
  * Description: drm_mm range manager SW validation
  * Functionality: DRM memory mangemnt
-- 
2.41.0

