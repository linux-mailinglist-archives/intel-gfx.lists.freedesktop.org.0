Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 906B37C56DE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FCC10E8E3;
	Wed, 11 Oct 2023 14:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD2A10E8D2;
 Wed, 11 Oct 2023 14:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034716; x=1728570716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NvkhB9YPPTbIkzAmxQZTPm9D9AfHPrS3aL9QG0wiQ2o=;
 b=HjCKe/a9tCbd/zokiDI2wo7gW/L4AU8uDwvDF8AL4TTqzOXCztI1XXJ7
 O+Mu13V+lQUK8R4h6yvHanThYY/kQm+hNtDq8EW+J/M26wyWh4NMWj+vb
 SsjXz8Z5W7qhjH4Q4QcSjsIWSkknin1kQFVkOuJbbsM4zOZlRltmTMjh9
 DC3XgtcfuD1Yv062mDuOJIG+RYhHEBWoB0v4uUwYXQGjvrRNcFbRUBgl+
 I0KPrHvY/mLswTW6/eiGluLuDFPylTpo7hUFjhpoYrGdMLw+0Z4D5f5hc
 OqsSbeJ2zQjlHFqTYbr1ZHhg4NEk2USSwh2WRRZuxcBAT3EQTbGZxx0H4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042058"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042058"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:31:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641586"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641586"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:30:09 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:42 +0200
Message-ID: <20231011141734.590321-20-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 07/11] tests/kms_selftest: Let subtest
 names match suite names
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

There is a rule specified in Kunit Test Style and Nomenclature guidelines
[1] that states modules should be named after the test suite, followed by
_test.  Of course, that rule applies only to modules that provide one test
suite per module.

As long as that rule is obeyed by authors of Kunit test modules, there is
no need to hardcode related IGT subtest names in IGT source code.  We are
already able to derive subtest names from module names, with their _test
or _kunit suffixes stripped.  We may expect those names will match Kunit
suite names provided by the modules.

Drop custom subtest names from IGT Kunit tests that still use them.
However, keep the mechanism that allows us to provide a name that differs
from that derived from module name.  That will be required if we ever need
to support a kunit test module that provides multiple test suites (think
of i915 selftests code converted to kunit and the i915 module potentially
providing three test suites: mock, live and perf).

[1] https://docs.kernel.org/dev-tools/kunit/style.html

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tests/kms_selftest.c | 37 ++++++++++++++++---------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/tests/kms_selftest.c b/tests/kms_selftest.c
index 080ffdf2c0..6618dbe50b 100644
--- a/tests/kms_selftest.c
+++ b/tests/kms_selftest.c
@@ -37,35 +37,30 @@
  *
  * arg[1]:
  *
- * @drm_cmdline:            drm cmdline
- * @drm_damage:             drm damage
- * @drm_dp_mst:             drm dp mst
+ * @drm_cmdline_parser:     drm cmdline parser
+ * @drm_damage_helper:      drm damage helper
+ * @drm_dp_mst_helper:      drm dp mst helper
  * @drm_format_helper:      drm format helper
  * @drm_format:             drm format
- * @drm_plane:              drm plane
- * @framebuffer:            framebuffer
+ * @drm_plane_helper:       drm plane helper
+ * @drm_framebuffer:        drm framebuffer
  */
 
 IGT_TEST_DESCRIPTION("Basic sanity check of KMS selftests.");
 
-struct kms_kunittests {
-	const char *kunit;
-	const char *name;
-};
-
 igt_main
 {
-	static const struct kms_kunittests kunit_subtests[] = {
-		{ "drm_cmdline_parser_test",	"drm_cmdline" },
-		{ "drm_damage_helper_test",	"drm_damage" },
-		{ "drm_dp_mst_helper_test",	"drm_dp_mst" },
-		{ "drm_format_helper_test",	"drm_format_helper" },
-		{ "drm_format_test",		"drm_format" },
-		{ "drm_framebuffer_test",	"framebuffer" },
-		{ "drm_plane_helper_test",	"drm_plane" },
-		{ NULL, NULL}
+	static const char *kunit_subtests[] = {
+		"drm_cmdline_parser_test",
+		"drm_damage_helper_test",
+		"drm_dp_mst_helper_test",
+		"drm_format_helper_test",
+		"drm_format_test",
+		"drm_framebuffer_test",
+		"drm_plane_helper_test",
+		NULL,
 	};
 
-	for (int i = 0; kunit_subtests[i].kunit != NULL; i++)
-		igt_kunit(kunit_subtests[i].kunit, kunit_subtests[i].name, NULL);
+	for (int i = 0; kunit_subtests[i] != NULL; i++)
+		igt_kunit(kunit_subtests[i], NULL, NULL);
 }
-- 
2.42.0

