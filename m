Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E083473880
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E6910E9A1;
	Mon, 13 Dec 2021 23:29:17 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE08F10E8E7;
 Mon, 13 Dec 2021 23:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438155; x=1670974155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kjH9XwZAvQ4zRPA6+e1jdilSuXrIVyKhx4/cTtuAeso=;
 b=fLjaBkle8FOH91id+5rn6gXxUFktokWpIu78GTtX2whG+T5X+XJiG50Z
 AHUX1KkF3pyA+Frz8umfKkbyYKq+f8pLvXpXdiYPSaQOy7sZMYGdAOhRo
 0KfdI2al103ZPyU62bfFtCu05eerW4NiB/CaxGQcPNBQNtnJnzpiI6gug
 qQRXaoZtZYmm79JAbtV7ZCY+UsPnHXCn0asUtkBL4Q+XVjgRz3APiBEQE
 jM/L+95U6sB+TRSjfQ5TAWmB5a76dKHxno0BjEvm78wen7lHxDdLdmw81
 KJZcF4CWkVtUuv0W318m/GCfR6JOE31hRN9TolEcINhwwuIFrihjlkFzM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385941"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385941"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975912"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:04 -0800
Message-Id: <20211213232914.2523139-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 01/11] tests/i915/i915_hangman: Add
 descriptions
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

Added descriptions of the various sub-tests and the test as a whole.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 4c18c22db..025bb8713 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -46,6 +46,8 @@
 static int device = -1;
 static int sysfs = -1;
 
+IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
+
 static bool has_error_state(int dir)
 {
 	bool result;
@@ -315,9 +317,9 @@ static void hangcheck_unterminated(void)
 
 	gem_execbuf(device, &execbuf);
 	if (gem_wait(device, handle, &timeout_ns) != 0) {
-		/* need to manually trigger an hang to clean before failing */
+		/* need to manually trigger a hang to clean before failing */
 		igt_force_gpu_reset(device);
-		igt_assert_f(0, "unterminated batch did not trigger an hang!");
+		igt_assert_f(0, "unterminated batch did not trigger a hang!");
 	}
 }
 
@@ -341,9 +343,11 @@ igt_main
 		igt_require(has_error_state(sysfs));
 	}
 
+	igt_describe("Basic error capture");
 	igt_subtest("error-state-basic")
 		test_error_state_basic();
 
+	igt_describe("Per engine error capture");
 	igt_subtest_with_dynamic("error-state-capture") {
 		for_each_ctx_engine(device, ctx, e) {
 			igt_dynamic_f("%s", e->name)
@@ -351,6 +355,7 @@ igt_main
 		}
 	}
 
+	igt_describe("Per engine hang recovery (spin)");
 	igt_subtest_with_dynamic("engine-hang") {
                 int has_gpu_reset = 0;
 		struct drm_i915_getparam gp = {
@@ -369,6 +374,7 @@ igt_main
 		}
 	}
 
+	igt_describe("Per engine hang recovery (invalid CS)");
 	igt_subtest_with_dynamic("engine-error") {
 		int has_gpu_reset = 0;
 		struct drm_i915_getparam gp = {
@@ -386,6 +392,7 @@ igt_main
 		}
 	}
 
+	igt_describe("Check that executing unintialised memory causes a hang");
 	igt_subtest("hangcheck-unterminated")
 		hangcheck_unterminated();
 
-- 
2.25.1

