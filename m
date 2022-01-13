Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC4948E131
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE7B10E845;
	Thu, 13 Jan 2022 23:51:28 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E1810E819;
 Thu, 13 Jan 2022 23:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117881; x=1673653881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cs5gQSsP0d/L1sEikswy9RQh+s+74zBLBuqvD98IuGE=;
 b=YCV71N2x9FDdOXvu4bIg7TpuiEoE+g5kuKxPfct6KHvQR5YBhXn2O4tB
 ohfGqXiTuux43ycJ3OPf0H3B5UjEYlebI5M5pQwhHngC9HwJicoEpjoGP
 Gs4k9OqWoaTOEBoPU3zHr+IwdjAOa1rHuV0OnRABHjU9LVeL4HEkt+OrE
 ZpZdh6ez23lA1RA9+udEvPqhbRJUUxhz3xxVQIBoLwaFl5M18MC0jgmyA
 hpgljmVoEIlnkrASybDk3kgey6cR/bCsSx51PSoQ34CL4S5kBiqAwFrrc
 3hRAHXoFalFQdm1DBwY/gQr2uBEre0cZ/s72tNviSyjy/JZeltTzpikgj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268502292"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268502292"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620783019"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:20 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:12 -0800
Message-Id: <20220113235118.1575410-10-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 09/15] tests/i915/i915_hangman: Remove
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
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/i915_hangman.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 73a86ec9e..24087931c 100644
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

