Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 067BC47387E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D542610E8F8;
	Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA7410E8E5;
 Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438156; x=1670974156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+lsY2jaF/Bp9yoGpc27Re0Apcw8R8yZv6vT10YgHbfU=;
 b=UjlayVPT/oL6fclA5onw2XjOLFUMeLhewDmVA+1ztnrrtvf194xF1oFe
 yq1PxctlN/Ve5+SsP2EvCb0/l6qo/phirsFnXThBLxWm0U17lVjXd9UBi
 joTtEAj/AGZYnT+pIDMH90gHHuKEIxOODf6bnYqC8D4288cMfDDWj53Fs
 8LLaZOm8HNqrJaT1rkBafXh7231AdK1NkkZl8lkcijwJhXHp8EEKiZppO
 pnD1ApHZfivpINZI/AP+ud+tv7lyTMZY9z6PCjVRfmlir5TpgOpS47R+T
 9wJX2RDaEKkJde5uDjfu2NSYfprBtFG3FVjKrGItuIcmNmw5iCeO59Hr+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385943"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385943"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975915"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:05 -0800
Message-Id: <20211213232914.2523139-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 02/11] lib/hang: Fix igt_require_hang_ring
 to work with all engines
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

The above function was checking for valid rings via the old interface.
The new scheme is to check for engines on contexts as there are now
more engines than could be supported.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 lib/igt_gt.c              | 6 +++---
 lib/igt_gt.h              | 2 +-
 tests/i915/i915_hangman.c | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/lib/igt_gt.c b/lib/igt_gt.c
index 7c7df95ee..50da512f2 100644
--- a/lib/igt_gt.c
+++ b/lib/igt_gt.c
@@ -122,12 +122,12 @@ static void eat_error_state(int dev)
  * to be done under hang injection.
  * Default: false
  */
-void igt_require_hang_ring(int fd, int ring)
+void igt_require_hang_ring(int fd, uint32_t ctx, int ring)
 {
 	if (!igt_check_boolean_env_var("IGT_HANG", true))
 		igt_skip("hang injection disabled by user [IGT_HANG=0]\n");
 
-	gem_require_ring(fd, ring);
+        igt_require(gem_context_has_engine(fd, ctx, ring));
 	gem_context_require_bannable(fd);
 	if (!igt_check_boolean_env_var("IGT_HANG_WITHOUT_RESET", false))
 		igt_require(has_gpu_reset(fd));
@@ -290,7 +290,7 @@ static igt_hang_t __igt_hang_ctx(int fd, uint64_t ahnd, uint32_t ctx, int ring,
 	igt_spin_t *spin;
 	unsigned ban;
 
-	igt_require_hang_ring(fd, ring);
+	igt_require_hang_ring(fd, ctx, ring);
 
 	/* check if non-default ctx submission is allowed */
 	igt_require(ctx == 0 || has_ctx_exec(fd, ring, ctx));
diff --git a/lib/igt_gt.h b/lib/igt_gt.h
index c5059817b..3d10349e4 100644
--- a/lib/igt_gt.h
+++ b/lib/igt_gt.h
@@ -31,7 +31,7 @@
 #include "i915/i915_drm_local.h"
 #include "i915_drm.h"
 
-void igt_require_hang_ring(int fd, int ring);
+void igt_require_hang_ring(int fd, uint32_t ctx, int ring);
 
 typedef struct igt_hang {
 	igt_spin_t *spin;
diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 025bb8713..24d3b2739 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -295,7 +295,7 @@ test_engine_hang(const intel_ctx_t *ctx,
  * case and it takes a lot more time to wrap, so the acthd can potentially keep
  * increasing for a long time
  */
-static void hangcheck_unterminated(void)
+static void hangcheck_unterminated(const intel_ctx_t *ctx)
 {
 	/* timeout needs to be greater than ~5*hangcheck */
 	int64_t timeout_ns = 100ull * NSEC_PER_SEC; /* 100 seconds */
@@ -304,7 +304,7 @@ static void hangcheck_unterminated(void)
 	uint32_t handle;
 
 	igt_require(gem_uses_full_ppgtt(device));
-	igt_require_hang_ring(device, 0);
+	igt_require_hang_ring(device, ctx->id, 0);
 
 	handle = gem_create(device, 4096);
 
@@ -394,7 +394,7 @@ igt_main
 
 	igt_describe("Check that executing unintialised memory causes a hang");
 	igt_subtest("hangcheck-unterminated")
-		hangcheck_unterminated();
+		hangcheck_unterminated(ctx);
 
 	igt_fixture {
 		igt_disallow_hang(device, hang);
-- 
2.25.1

