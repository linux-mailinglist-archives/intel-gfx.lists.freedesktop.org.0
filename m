Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D24E915B6B4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 02:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14AB6EB14;
	Thu, 13 Feb 2020 01:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5AA6EB1A;
 Thu, 13 Feb 2020 01:29:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 17:29:18 -0800
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="252111812"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Feb 2020 17:29:18 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 17:28:40 -0800
Message-Id: <20200213012840.31472-6-dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213012840.31472-1-dale.b.stimson@intel.com>
References: <20200213012840.31472-1-dale.b.stimson@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 5/5] i915/gem_ctx_isolation.c - If
 initialization fails, exit
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the start of igt_main, failure of the initial tests for successful
initialization transfer control to the end of an igt_fixture block.
From there, execution of the main per-engine loop is attempted.
Instead, the test should be caused to exit.

If initialization fails, exit.

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 tests/i915/gem_ctx_isolation.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 07ffbb84a..b11158dab 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -898,10 +898,13 @@ igt_main
 	int fd = -1;
 	struct eng_mmio_base_table_s *mbp = NULL;
 	uint32_t mmio_base = 0;
+	/* igt_fixture block is skipped if --list-subtests, so start with true. */
+	bool init_successful = true;
 
 	igt_fixture {
 		int gen;
 
+		init_successful = false;
 		fd = drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(fd);
 		igt_require(gem_has_contexts(fd));
@@ -916,8 +919,20 @@ igt_main
 		igt_skip_on(gen > LAST_KNOWN_GEN);
 
 		mbp = gem_engine_mmio_base_info_get(fd);
+		init_successful = true;
 	}
 
+	if (!init_successful) {
+		igt_exit_early();
+	}
+
+	/**
+	 * With --list-subtests the above igt_fixture block is skipped and so
+	 * the device is not open.  Because fd < 0, __for_each_physical_engine
+	 * falls back to a static engine list, which will affect the output
+	 * of --list-subtests.
+	 */
+
 	/* __for_each_physical_engine switches context to all engines. */
 	__for_each_physical_engine(fd, e) {
 		igt_subtest_group {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
