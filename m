Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966437BDC9E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B0110E27F;
	Mon,  9 Oct 2023 12:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D76910E273;
 Mon,  9 Oct 2023 12:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855423; x=1728391423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NvkhB9YPPTbIkzAmxQZTPm9D9AfHPrS3aL9QG0wiQ2o=;
 b=m4SyQ8EbDbV/hqqWEPRzNBBL1EkuFGCKYrDFMahafNRQ5btLFMC38i6S
 KaynlvDiULAtEx3xEhNF2mXVvRUBsvTzw8epQ/MCkHE5YTHaMa760a2LV
 2+ClQIuye1mGt0p1d0PlLmSvfrsrxE7DK96ZNoMsiDf0DAQdmN2CfnzRR
 8oKRD+gIs57SNSYhDn/tv5H0OxpQMLRWPmKZo/bhTgU11WjVMIEUUyj+u
 VV5IdbRsSleMCVxHTH0NnbGFmCiXddDzLjJtQHbpuFY5YWnbB0Dknfrki
 f0pv+kEI56sjJwP5Co6aWI9kEimqn2JaHm2ODZghtVUK2vf4qwu+Kk9Pg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010581"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010581"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326857"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326857"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:40 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:27:57 +0200
Message-ID: <20231009122750.519112-19-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 06/11] tests/kms_selftest: Let subtest
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

