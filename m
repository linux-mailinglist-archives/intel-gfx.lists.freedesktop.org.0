Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B38048DE72
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 20:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0D810E2B3;
	Thu, 13 Jan 2022 19:59:51 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C08110E46F;
 Thu, 13 Jan 2022 19:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103989; x=1673639989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G9R7shW2zOAQmMJG+3XJqH2JXS+FN7zd0eIZMDSECBI=;
 b=WoDfYy/BiEnTtoGxOGZadg4ZtiNZNVu3gTuK6gDIV0rY6iMNzHm2y22E
 Yr4NvF5A6IahAZGRUos6H6q/9d90iVAwLmER9YnVN1K3tfDuD1FsgroVO
 sH0iTJNmdZrWhpKdj60IuuFr0+f7twCwE9jNGrFU7xlvM/ffdk03PeiFM
 WKGdJyWgeZRpgeImAJZ2AqGopx1WtwsVbcmPsA0zk03WkhvTA5XEK2Ghs
 GhDqT7znnbL7J9TV4u/GNuqf+FewSUahYX/O0q9aGV6IR0oD9C9lEA8Js
 CWvKcub8s5YNm9+spdjaVFlJtVwT+L2JKyNLDEYXxKwuBzjcDqYzp9ciW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="241663863"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241663863"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477461"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:47 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:34 -0800
Message-Id: <20220113195947.1536897-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 02/15] lib/hang: Fix
 igt_require_hang_ring to work with all engines
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
index b9c4d9983..f64b8819d 100644
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

