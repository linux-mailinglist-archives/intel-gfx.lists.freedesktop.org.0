Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED707A4ADA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7537210E2D4;
	Mon, 18 Sep 2023 13:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C14010E190;
 Mon, 18 Sep 2023 13:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045182; x=1726581182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cthm1tBJCPYtwDo3WuAmuyxQhQxFVxdwHpDlz5ogKBE=;
 b=XAHWIBXcTG+K2hPeGhHQj+Loz9ZN1C+fx4T1Uouy2z7G+KNWNNYCsTDm
 qHVZrYgGHLpiae02tyEvxcSn59KKWf8/yeB9zuJQhSgm2SwbO0H3JjMIt
 99n7ZHztbp/GzHN5vGkRWqPLJtkzOsI9DILGLcFK+UEKuM48TP/LWZtTa
 I+2r+fbZ6gbVhzQRFmPU9EHqYnChD//RYSuBNw6yDZVQhjL1lKQogv9W9
 psYfVnt0DSObdpwmOZblMYIDrwQJnV3hL7J1dfZDpMANYavPvjYfUzvjA
 G0lYYaEnCtRQ8eZs9iDNUHlJmpHIvZRjr6hYdbtF7TXOp0BaCg4ZBuotb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969747"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969747"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:53:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030597"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030597"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:53:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:43:06 +0200
Message-ID: <20230918134249.31645-35-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 16/17] lib/kunit: Strip "_test" or
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
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_kmod.c | 23 ++++++++++++++++++++---
 tests/drm_mm.c | 42 +++++++++++++++++++++---------------------
 2 files changed, 41 insertions(+), 24 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 7fa5b4aa80..f6e0ab07ce 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -978,7 +978,27 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	struct igt_ktest tst = { .kmsg = -1, };
 
 
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
 	igt_fixture {
+		igt_require(name);
+
 		igt_skip_on(igt_ktest_init(&tst, module_name));
 		igt_skip_on(igt_ktest_begin(&tst));
 	}
@@ -990,9 +1010,6 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
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

