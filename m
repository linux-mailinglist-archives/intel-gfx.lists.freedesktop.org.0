Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A149048DC62
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:00:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02E910E55A;
	Thu, 13 Jan 2022 16:59:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 762BB10E441;
 Thu, 13 Jan 2022 16:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093186; x=1673629186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kVsxXr2j/J5QHCWcjuFqdwAOtI/a7oR1jwTpEUBgYfM=;
 b=WUWm6tnTAUHa1LZZTmiaxovSFrnd5kHomADX+Qd+CYWWXRMGdMVqzC0C
 c1PBClimP1gOfdyQpvKgHzU1pPsYU27guvYoGzVwSil+7Y+3TeCTPXNt/
 KvViZXP5RURwjE1FAXq/vlJWRgyviRHQBvHeSbDxDtDrKxQhUSTMxoh09
 pEzcOKRIxOop1DR9m/oR+ve3wpHcb42JOLSqIz8uOYVg8c4IwJAD6Snq1
 AMn57sB4CcibdaNYN3boDKaRFwveWSkIDhxTHefY1D0Srj+WTMM2CFdvf
 fdktxzdbP1FX94iYGlQn0K7QmnGHRnlv8WBBlIwgl5khwkUonzV0CQVFX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307396634"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307396634"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999174"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:44 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:39 -0800
Message-Id: <20220113165944.1414015-11-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
References: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 10/15] tests/i915/i915_hangman: Run
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
index 6601db5f6..9f7f8062c 100644
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

