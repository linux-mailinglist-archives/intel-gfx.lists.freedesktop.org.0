Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7000B48DE76
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:00:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4785410E570;
	Thu, 13 Jan 2022 19:59:52 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6267710E3E0;
 Thu, 13 Jan 2022 19:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103989; x=1673639989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EGUqvwufRLocPQ6vvRULh0hIPrGzzPCgxxW3imVHCDQ=;
 b=g8HSQ8X9Lnik3NtQhe8jUkZsIkKw4YEjVmG/fMo8fftbBXhTmz8PmeIx
 FWghI9DAW14zhG2dLYRabcOdlQnlsh6qnDJs5yA6qPwElLlmSEYXnd65O
 1rkcs+x50sz3E0SVaLFpukfWtIozYhDctxuVpl/USHFCc3TsnX53DIVa/
 qL6CLVonrxwShESKv0zwNdmYkyaOVxYRIeavvrdagHbwGblttvjNlopgT
 jCNYuEDlD+8VOkKzrKljgweeGAElN/pt6G/b4vwFnqW/k9yoKKBjZD2D8
 6CbS9toLyCxblMl6ky68UqENyyZU8Smxksecya0eFJPbs6C32/eTkPPJa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="241663861"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241663861"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477458"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:47 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:33 -0800
Message-Id: <20220113195947.1536897-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 01/15] tests/i915/i915_hangman: Add
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

