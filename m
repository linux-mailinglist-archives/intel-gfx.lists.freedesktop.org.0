Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44066473884
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4458B10E9D1;
	Mon, 13 Dec 2021 23:29:25 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A060710E8E7;
 Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438156; x=1670974156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5lkVOKJXZekPEBEUQ+PBh+PNfSIWfCF0NRl15e903Rg=;
 b=PYF7gH5LgY5jrTLkW0Ko7FCSD9FVnathjBv/+tUC2yO7JO/AWW6VFoFf
 5/QTfYubRkWuMfTd1kL3/hGoQM1R1dDL5kjAA2OxtXpNJiDuFFJiiwYJW
 Uu05mgs33vOu4/Ob/ctuHni+E5ovQNK8JEXVqNoomhqkq+DGNqBsNRBDI
 466Eaf1Sfh5U8a49fZG5ievhqTnKZKTiicew13zhJoLWCD3Adr8sHYYeL
 MAgYs3o1Az0nqrzYLPxPDEYp3QQ/A/91/RpPmJHE1OSWd6vpXGMeoeIzm
 NPGSqeEYIPQZurkVfrdAeiGviQzV57EcZPzkugi2GIFitKn18Z3PuID6v A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385948"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385948"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975924"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:08 -0800
Message-Id: <20211213232914.2523139-6-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 05/11] tests/i915/i915_hangman: Add uevent
 test & fix detector
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
index f8a48337c..2dd4e1e9f 100644
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
@@ -409,6 +442,16 @@ igt_main
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

