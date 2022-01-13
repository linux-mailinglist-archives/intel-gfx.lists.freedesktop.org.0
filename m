Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C87E48E126
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A50B10E819;
	Thu, 13 Jan 2022 23:51:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959BA10E809;
 Thu, 13 Jan 2022 23:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117880; x=1673653880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WpdRSm6WO7UAcj3wjIBmOspKWUySCEbT7oQjZSma7oQ=;
 b=Rtp4UlrQiv2PPKjUfyvUybi2hLeMptRQgiZs6wJPniFv/GNni/9vdq1X
 hYuc2NfyWeKmmNaw8bmNKe48xchsnzVRDG44BlkfhRyrVE7vzt2wZ/DTQ
 XN0dCl3ig3hSvzkvbfll3i3sUbkvTiHZN2habwFsP13uKt9TSFD/CyogC
 QTu2EKtsNaB2F+ohQlZ2jSpzJMToHcnNU6tRY7ImLVfQIvpMAkwHLj4HY
 EmhLKRP7rO4FCxZavdj4AUYYHdOe1LdVIDvJtlVizuD/YdV1DvLPwFbYt
 lX15R2lc2L4tBrP/1cJGPAdkswsUzTAm09nFnvGIrpC+OyxuonOCOvem3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244096542"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244096542"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620782997"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:19 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:08 -0800
Message-Id: <20220113235118.1575410-6-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 05/15] tests/i915/i915_hangman: Add
 uevent test & fix detector
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Some of the IGT framework relies on receving a uevent when a hang
occurs. So add a test that this actually works.

While testing this, noticed that hangs could sometimes be missed
because the uevent was (presumably) still in flight by the time the
handler was de-registered. So add an extra delay during cleanup to
give the uevent chance to arrive.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 lib/igt_aux.c             |  7 +++++++
 tests/i915/i915_hangman.c | 43 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/lib/igt_aux.c b/lib/igt_aux.c
index c247a1aa4..03cc38c93 100644
--- a/lib/igt_aux.c
+++ b/lib/igt_aux.c
@@ -523,6 +523,13 @@ void igt_fork_hang_detector(int fd)
 
 void igt_stop_hang_detector(void)
 {
+	/*
+	 * Give the uevent time to arrive. No sleep at all misses about 20% of
+	 * hangs (at least, in the i915_hangman/detector test). A sleep of 1ms
+	 * seems to miss about 2%, 10ms loses <1%, so 100ms should be safe.
+	 */
+	usleep(100 * 1000);
+
 	igt_stop_helper(&hang_detector);
 }
 
diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 7b8390a6c..354769f39 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -31,6 +31,7 @@
 #include <sys/stat.h>
 #include <sys/types.h>
 #include <fcntl.h>
+#include <signal.h>
 
 #include "i915/gem.h"
 #include "i915/gem_create.h"
@@ -289,6 +290,38 @@ test_engine_hang(const intel_ctx_t *ctx,
 	put_ahnd(ahnd);
 }
 
+static int hang_count;
+
+static void sig_io(int sig)
+{
+	hang_count++;
+}
+
+static void test_hang_detector(const intel_ctx_t *ctx,
+			       const struct intel_execution_engine2 *e)
+{
+	igt_hang_t hang;
+	uint64_t ahnd = get_reloc_ahnd(device, ctx->id);
+
+	hang_count = 0;
+
+	igt_fork_hang_detector(device);
+
+	/* Steal the signal handler */
+	signal(SIGIO, sig_io);
+
+	/* Make a hang... */
+	hang = igt_hang_ctx_with_ahnd(device, ahnd, ctx->id, e->flags, 0);
+
+	igt_post_hang_ring(device, hang);
+	put_ahnd(ahnd);
+
+	igt_stop_hang_detector();
+
+	/* Did it work? */
+	igt_assert(hang_count == 1);
+}
+
 /* This test covers the case where we end up in an uninitialised area of the
  * ppgtt and keep executing through it. This is particularly relevant if 48b
  * ppgtt is enabled because the ppgtt is massively bigger compared to the 32b
@@ -408,6 +441,16 @@ igt_main
 	igt_subtest("hangcheck-unterminated")
 		hangcheck_unterminated(ctx);
 
+	igt_describe("Check that hang detector works");
+	igt_subtest_with_dynamic("detector") {
+		const struct intel_execution_engine2 *e;
+
+		for_each_ctx_engine(device, ctx, e) {
+			igt_dynamic_f("%s", e->name)
+				test_hang_detector(ctx, e);
+		}
+	}
+
 	do_tests("GT", "gt", ctx);
 
 	igt_fixture {
-- 
2.25.1

