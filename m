Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D39248DE7C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E5810E5A0;
	Thu, 13 Jan 2022 20:00:00 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD56B10E46F;
 Thu, 13 Jan 2022 19:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103990; x=1673639990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4dQ6rKrgf5WE/amZRBPV3NsqT7B4SiAmsPnQi1p588Q=;
 b=dQV37SVe+Nd3McZc4HofwdNrrvSx0ZrttCTasobAqWnhVY2ccjw7Rstl
 krELStPfQeeWOoDiJn+xmvGL+PDWRUbSe6sJMjSZk96ZPviqUFzbA7+SL
 0/dLW8qHv54dDDTRFYTLmszNNF5FU+dQ/hgaf/0pis1PFJ2ZN0Q4N0Q42
 LlfZsbZgnpUTXQ0py4aUabwJbhatwEmLsHiTBvtwOU1tefnqzdHD52X6Y
 AmmTXWQ6GMrXkhgv8/GKGPWksOuZvt+0uvbFZ7KalL336EVls2ErC9/9F
 a2Xh5VomQ98F8sWBQHot23XMqWCEh7KlqANtYDR7EQAd/2pZLMZKZF+9/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244055997"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244055997"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477482"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:48 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:41 -0800
Message-Id: <20220113195947.1536897-10-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 09/15] tests/i915/i915_hangman: Remove
 reliance on context persistance
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

The hang test was relying on context persitence for no particular
reason. That is, it would set a bunch of background spinners running
then immediately destroy the active contexts but expect the spinners
to keep spinning. With the current implementation of context
persistence in i915, that means that super high priority pings are
sent to each engine at the start of the test. Depending upon the
timing and platform, one of those unexpected pings could cause test
failures.

There is no need to require context persitence in this test. So change
to managing the contexts cleanly and only destroying them when they
are no longer in use.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 918418760..6601db5f6 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -289,27 +289,29 @@ test_engine_hang(const intel_ctx_t *ctx,
 		 const struct intel_execution_engine2 *e, unsigned int flags)
 {
 	const struct intel_execution_engine2 *other;
-	const intel_ctx_t *tmp_ctx;
+	const intel_ctx_t *local_ctx[GEM_MAX_ENGINES];
 	igt_spin_t *spin, *next;
 	IGT_LIST_HEAD(list);
 	uint64_t ahnd = get_reloc_ahnd(device, ctx->id), ahndN;
+	int num_ctx;
 
 	igt_skip_on(flags & IGT_SPIN_INVALID_CS &&
 		    gem_engine_has_cmdparser(device, &ctx->cfg, e->flags));
 
 	/* Fill all the other engines with background load */
+	num_ctx = 0;
 	for_each_ctx_engine(device, ctx, other) {
 		if (other->flags == e->flags)
 			continue;
 
-		tmp_ctx = intel_ctx_create(device, &ctx->cfg);
-		ahndN = get_reloc_ahnd(device, tmp_ctx->id);
+		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
+		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
 		spin = __igt_spin_new(device,
 				      .ahnd = ahndN,
-				      .ctx = tmp_ctx,
+				      .ctx = local_ctx[num_ctx],
 				      .engine = other->flags,
 				      .flags = IGT_SPIN_FENCE_OUT);
-		intel_ctx_destroy(device, tmp_ctx);
+		num_ctx++;
 
 		igt_list_move(&spin->link, &list);
 	}
@@ -339,7 +341,10 @@ test_engine_hang(const intel_ctx_t *ctx,
 		igt_spin_free(device, spin);
 		put_ahnd(ahndN);
 	}
+
 	put_ahnd(ahnd);
+	while (num_ctx)
+		intel_ctx_destroy(device, local_ctx[--num_ctx]);
 
 	check_alive();
 }
-- 
2.25.1

