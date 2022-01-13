Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C28E248E125
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9816F10E820;
	Thu, 13 Jan 2022 23:51:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C7DA10E809;
 Thu, 13 Jan 2022 23:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117880; x=1673653880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G9R7shW2zOAQmMJG+3XJqH2JXS+FN7zd0eIZMDSECBI=;
 b=lNTOFJn6AVWxNdKRFHJKCqSjtQL6jiJjvMudLKQkseMWSt/hcCAeERKo
 BxDE3sb7F3dpGRsBAQEsLHGIpE5B3UsuooGNgnBIpt+BnnqPj4NhLz0bw
 Be1qAWF5aNopcqsj7nEEdG/5+Ifhkbxi7EPh9rkGU1gK0jjY/anLU82Rt
 EqNjTa7mfBQJjop7/Q3x49iJGVhqOgI0ITNVF6TB4VgvsdQQZbkN4hCli
 VkWa39U5ZQo/23TkhdjEtWX2HZukh/1zKiQaJG7oS5dr9Ui9/hCA5e6iP
 UX5MG3BVRscy05RTC4DMjCwGiU6hqul2RRnTrXS/NVMd8tYq4sJliffzr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244096536"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244096536"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620782983"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:18 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:05 -0800
Message-Id: <20220113235118.1575410-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 02/15] lib/hang: Fix
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

