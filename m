Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CA148E12D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F9310E84F;
	Thu, 13 Jan 2022 23:51:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EB810E80F;
 Thu, 13 Jan 2022 23:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117881; x=1673653881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6smWQJGvexpulqbAYXaLPR4Fr+AEtDam+zkR4d/lHc=;
 b=M8Q/8uwiKUq/8lRWQriGkA6PpyGPjLOCWcpJz0q5tVEk2fROd9W0tmjM
 Qo1Fo+NCqMcn/IQfBCXPH5cRe9DG7mDzEspgqj5NDCB14+3K+/6GVvB82
 k6fYduLO0qGbgTwLuFvoXBvm9LQN/B1+H/RqVg1N89r8deb8nFce8vJSr
 16noafqg3Mx12EUX/guEA538cJWGBBfWo0tHsb4pj9qnnNBKECoRSD5P3
 7LXJ9uN2sLk5MPoTT2BJnGHRdiTSsXqq61RcU/g4Y7UGHmbIEUY1M1Kgd
 ot9yTsOqMoQC+NKAR4uL2A6HcqKxImXhT9kmsZvMTdumm6IKmVrzqekE6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268502297"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268502297"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620783028"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:20 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:13 -0800
Message-Id: <20220113235118.1575410-11-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 10/15] tests/i915/i915_hangman: Run
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
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/i915_hangman.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 24087931c..a1aeeba6d 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -298,12 +298,14 @@ test_engine_hang(const intel_ctx_t *ctx,
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

