Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D67EA48E123
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2727810E809;
	Thu, 13 Jan 2022 23:51:21 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F8710E80B;
 Thu, 13 Jan 2022 23:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117879; x=1673653879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EGUqvwufRLocPQ6vvRULh0hIPrGzzPCgxxW3imVHCDQ=;
 b=bbluj53H6dI9HVzjABISoQ9RKU3VFAT6HabVFotR9Ju9Mi3Kh+jp55aJ
 tBh0wqb9lajbMIG9CPOA7q/xfQKZYRq2EEHB0P6GAQ+qYEjaKIjlHCRmZ
 gNfcROKRHfoLE729NvKfvcnOvyx+QhOAKvyWl5QhgPF+fOBk4dbkfcZcr
 Fe2VC9I9OdgKUbxRJDvQPprW9rM4rxVaajbZEiH6eqahg/RGuBkjyxj46
 3BBBgXt4aA4l717Dr50z/6Af2WvsN2/lNLLPgui8Qp3O+0tXGtMyav2g7
 qB90tKNvYcfYAE3E23F5rl+JBjJcTYTyy3KaRsu6LDhqCowvxgxv81mzM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244096534"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244096534"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620782979"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:18 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:04 -0800
Message-Id: <20220113235118.1575410-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 01/15] tests/i915/i915_hangman: Add
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

v2: Added missing linefeed (spotted by Petri)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Petri Latvala <petri.latvala@intel.com>
---
 tests/i915/i915_hangman.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 4c18c22db..b9c4d9983 100644
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
+		igt_assert_f(0, "unterminated batch did not trigger a hang!\n");
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

