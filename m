Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD1847387F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6ADF10E907;
	Mon, 13 Dec 2021 23:29:17 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A15310E8E5;
 Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438156; x=1670974156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3LT2LPLd4jRevg7oxngKXMDME52EPwnEGIzksjr2iFw=;
 b=hdeEzKOwatDWp5iJhTmj1bgKdomDtQWGguZ5ZMKkXwd7BY26zV1S+Ryp
 8ATRIA2popNF6qVn/f7dMpfotHpaS2mH8bGpWVlgbraYmdSKZAKGBpGvX
 6JBkpFy1YvRUis18RGMfrwhXyuIiuFEIYY4sOSJb2vkKF9lXaP2NDu5Vh
 9NfSNcO+mA+uOzlWelrXaVyEkuYFs82MJWu85GYjXv5hE2GSBAdXs8lqC
 IZThqEBf3hQ22dPHxmMUOGW4X6xW0DL0+hnfdxegekK+VE4XJ1IxNntK1
 PnE1Lzz9yKuedgS4fJUZ0MjLMyslPZHUORExjC+K1X8lv74DwDdFjJpig Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385947"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385947"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975921"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:07 -0800
Message-Id: <20211213232914.2523139-5-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 04/11] tests/i915/i915_hangman: Explicitly
 test per engine reset vs full GPU reset
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

Although the hangman test was ensuring that *some* reset functionality
was enabled, it did not differentiate what kind. The infrastructure
required to choose between per engine reset or full GT reset was
recently added. So update this test to use it as well.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 77 +++++++++++++++++++++++++--------------
 1 file changed, 50 insertions(+), 27 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index bd787d7b4..f8a48337c 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -323,40 +323,26 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
 	}
 }
 
-igt_main
+static void do_tests(const char *name, const char *prefix,
+		     const intel_ctx_t *ctx)
 {
 	const struct intel_execution_engine2 *e;
-	const intel_ctx_t *ctx;
-	igt_hang_t hang = {};
-
-	igt_fixture {
-		device = drm_open_driver(DRIVER_INTEL);
-		igt_require_gem(device);
-
-		ctx = intel_ctx_create_all_physical(device);
-
-		hang = igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE);
-
-		sysfs = igt_sysfs_open(device);
-		igt_assert(sysfs != -1);
+	char buff[256];
 
-		igt_require(has_error_state(sysfs));
-	}
-
-	igt_describe("Basic error capture");
-	igt_subtest("error-state-basic")
-		test_error_state_basic();
-
-	igt_describe("Per engine error capture");
-	igt_subtest_with_dynamic("error-state-capture") {
+	snprintf(buff, sizeof(buff), "Per engine error capture (%s reset)", name);
+	igt_describe(buff);
+	snprintf(buff, sizeof(buff), "%s-error-state-capture", prefix);
+	igt_subtest_with_dynamic(buff) {
 		for_each_ctx_engine(device, ctx, e) {
 			igt_dynamic_f("%s", e->name)
 				test_error_state_capture(ctx, e);
 		}
 	}
 
-	igt_describe("Per engine hang recovery (spin)");
-	igt_subtest_with_dynamic("engine-hang") {
+	snprintf(buff, sizeof(buff), "Per engine hang recovery (spin, %s reset)", name);
+	igt_describe(buff);
+	snprintf(buff, sizeof(buff), "%s-engine-hang", prefix);
+	igt_subtest_with_dynamic(buff) {
                 int has_gpu_reset = 0;
 		struct drm_i915_getparam gp = {
 			.param = I915_PARAM_HAS_GPU_RESET,
@@ -374,8 +360,10 @@ igt_main
 		}
 	}
 
-	igt_describe("Per engine hang recovery (invalid CS)");
-	igt_subtest_with_dynamic("engine-error") {
+	snprintf(buff, sizeof(buff), "Per engine hang recovery (invalid CS, %s reset)", name);
+	igt_describe(buff);
+	snprintf(buff, sizeof(buff), "%s-engine-error", prefix);
+	igt_subtest_with_dynamic(buff) {
 		int has_gpu_reset = 0;
 		struct drm_i915_getparam gp = {
 			.param = I915_PARAM_HAS_GPU_RESET,
@@ -391,11 +379,46 @@ igt_main
 				test_engine_hang(ctx, e, IGT_SPIN_INVALID_CS);
 		}
 	}
+}
+
+igt_main
+{
+	const intel_ctx_t *ctx;
+	igt_hang_t hang = {};
+
+	igt_fixture {
+		device = drm_open_driver(DRIVER_INTEL);
+		igt_require_gem(device);
+
+		ctx = intel_ctx_create_all_physical(device);
+
+		hang = igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE);
+
+		sysfs = igt_sysfs_open(device);
+		igt_assert(sysfs != -1);
+
+		igt_require(has_error_state(sysfs));
+	}
+
+	igt_describe("Basic error capture");
+	igt_subtest("error-state-basic")
+		test_error_state_basic();
+
 
 	igt_describe("Check that executing unintialised memory causes a hang");
 	igt_subtest("hangcheck-unterminated")
 		hangcheck_unterminated(ctx);
 
+	do_tests("GT", "gt", ctx);
+
+	igt_fixture {
+		igt_disallow_hang(device, hang);
+
+		hang = igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE | HANG_WANT_ENGINE_RESET);
+	}
+
+	do_tests("engine", "engine", ctx);
+
 	igt_fixture {
 		igt_disallow_hang(device, hang);
 		intel_ctx_destroy(device, ctx);
-- 
2.25.1

