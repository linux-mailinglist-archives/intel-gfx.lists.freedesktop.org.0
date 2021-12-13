Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAD6473882
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA4810E9A4;
	Mon, 13 Dec 2021 23:29:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0B010E8E7;
 Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438156; x=1670974156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y+V1ruqqyVjX3tXVYzc8a0q43Puzc7nprMmUSUmUJ7s=;
 b=gzOoE0EvyWla/6K5QnzFRPu9j0CtRQnFVyq5MxBMVCkspid65/sKTwdR
 p0Qudzo5LliR+hYXGLTvraceGSXUjGVcwXeCb0IheYgw6ieHjDcfCjer+
 zvHnpUETv3xUzNPi+aU+EHTQ3HdkV4ag1NKpYe0UzYG+VWWxOoXjJqLHJ
 NEEObs5zbNkyyLqsTM9aF2yvbZ4GXtifMgevAHiodmZqyGcdrTa7zGmSf
 XSxVVIbMD7gQrcxZF1zCQZJuVWQ6vJnHlJ4tB8SUsC3UQpnVu+n/OWTNk
 fWhP8MdxmF2U3KU6XzZgzMeO7d+7+a5Mr/b96wyOLKaQiBXigczMJ+744 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385945"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385945"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975918"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:06 -0800
Message-Id: <20211213232914.2523139-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 03/11] tests/i915/i915_hangman: Update
 capture test to use engine structure
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

The capture test was still using old style ring_id and ring_name
(derived from the engine structure at the higher level). Update it to
just take the engine structure directly.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 24d3b2739..bd787d7b4 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -207,8 +207,8 @@ static void check_error_state(const char *expected_ring_name,
 	igt_assert(found);
 }
 
-static void test_error_state_capture(const intel_ctx_t *ctx, unsigned ring_id,
-				     const char *ring_name)
+static void test_error_state_capture(const intel_ctx_t *ctx,
+				     const struct intel_execution_engine2 *e)
 {
 	uint32_t *batch;
 	igt_hang_t hang;
@@ -217,7 +217,7 @@ static void test_error_state_capture(const intel_ctx_t *ctx, unsigned ring_id,
 
 	clear_error_state();
 
-	hang = igt_hang_ctx_with_ahnd(device, ahnd, ctx->id, ring_id,
+	hang = igt_hang_ctx_with_ahnd(device, ahnd, ctx->id, e->flags,
 				      HANG_ALLOW_CAPTURE);
 	offset = hang.spin->obj[IGT_SPIN_BATCH].offset;
 
@@ -226,7 +226,7 @@ static void test_error_state_capture(const intel_ctx_t *ctx, unsigned ring_id,
 
 	igt_post_hang_ring(device, hang);
 
-	check_error_state(ring_name, offset, batch);
+	check_error_state(e->name, offset, batch);
 	munmap(batch, 4096);
 	put_ahnd(ahnd);
 }
@@ -351,7 +351,7 @@ igt_main
 	igt_subtest_with_dynamic("error-state-capture") {
 		for_each_ctx_engine(device, ctx, e) {
 			igt_dynamic_f("%s", e->name)
-				test_error_state_capture(ctx, e->flags, e->name);
+				test_error_state_capture(ctx, e);
 		}
 	}
 
-- 
2.25.1

