Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB0D473886
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BCD10E9E5;
	Mon, 13 Dec 2021 23:29:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736C110E8E5;
 Mon, 13 Dec 2021 23:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438157; x=1670974157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5yjwV+Hr/cHs2S+GV2lMzS5OjFBkXkY2PR0t9aJArJA=;
 b=REZnl4Z/RSZr/F7VDwxXDtHtWV/z1s3hPVTFw90E60HKCi2DciHbSki7
 aQwxZXPETOrHY7vU7omzMn4SQwJ0ybOAe9Kvb70MZZOS84kZdAWRdnMs/
 Ro5aCHmTwLulXNutJpJwpD1cmWTkX0DeVJGwsOnXjle+Kk68oKW3WqN+c
 Fg7rG3XPPxn8uXFEk/Yc1Mm3I4O/QmQuXukBwL2i8jFgomMfAUgOiaBYM
 73yBPVsmNKAIa/NO4PweEHcHr/ZRnW3Z9cIGkxM8CwlXMK2tzBhGJFsC4
 2EhIUCR1f+qajBHFBdjzGOHVFNpIUIhZcEsbCMmeIQf6nSjt1ur7IpX5z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299635178"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="299635178"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975942"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:13 -0800
Message-Id: <20211213232914.2523139-11-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 10/11] tests/i915/i915_hangman: Run
 background task on all engines
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

As opposed to only on the non-target engines. This means that there is
some other workload present for the scheduler to switch between and so
detet the hang immediately.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 9bcf82dcd..042100355 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -296,12 +296,14 @@ test_engine_hang(const intel_ctx_t *ctx,
 	igt_skip_on(flags & IGT_SPIN_INVALID_CS &&
 		    gem_engine_has_cmdparser(device, &ctx->cfg, e->flags));
 
-	/* Fill all the other engines with background load */
+	/*
+	 * Fill all engines with background load.
+	 * This verifies that independent engines are unaffected and gives
+	 * the target engine something to switch between so it notices the
+	 * hang.
+	 */
 	num_ctx = 0;
 	for_each_ctx_engine(device, ctx, other) {
-		if (other->flags == e->flags)
-			continue;
-
 		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
 		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
 		spin = __igt_spin_new(device,
-- 
2.25.1

