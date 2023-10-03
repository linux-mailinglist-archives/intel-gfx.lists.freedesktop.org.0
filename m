Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7427B6526
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D96F10E2E0;
	Tue,  3 Oct 2023 09:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D242310E2C2;
 Tue,  3 Oct 2023 09:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696324416; x=1727860416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DD8VuKPpOnsT021gZVX18fv0B04T34595iYK1Xzxp2Q=;
 b=DxUiXntkJa708RvF5irQitvc9Ps2F8PbdAlxGmc1BbA3DO2UNSMqcPr2
 DOq0RwqSyLKw+1TsmtZycOuXdZl3OmuuK+IxlbKF27L1EzPLeIzogo+TC
 3lbSbWIx81F8RymSD/hBSF63LbxGm6NGysu+mROEF0no/yVhlwBmQT5x6
 vVJfZ4rctkUTcGApST7abjoer2vnpO/a9V5E+eTOCPeSedx81ugkn08M9
 BmdNIfDExdPl+b31wy2cEYKXMh69BhIseLEqGSiUevM9YkgxTbseouzcx
 sMQDVyiL+fBqLWnZkxhPeDmaCogEA8zggX4GreRdGFtMQksa0yliwE6y9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="1419746"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="1419746"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997935797"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="997935797"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.14.111])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:13:32 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Oct 2023 11:10:51 +0200
Message-ID: <20231003091044.407965-17-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 6/9] tests/kms_selftest: Let subtest names
 match suite names
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

