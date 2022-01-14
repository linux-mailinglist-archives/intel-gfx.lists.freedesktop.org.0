Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E4148EFC7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 19:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B4D10E206;
	Fri, 14 Jan 2022 18:17:39 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BEF110E206;
 Fri, 14 Jan 2022 18:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642184235; x=1673720235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6smWQJGvexpulqbAYXaLPR4Fr+AEtDam+zkR4d/lHc=;
 b=e5/+skZYwaVtAGGJ9TrvpQKHwTwq/3hi2z1XgQDQWLn5Pvh7KQrs+Kj+
 AlTdvW9+uDCr6Wu4qz8ZsggoQjLo9PrvJJMg35d+HQtEVSM6QF7zbvdn2
 Z108j4OMppxHrzWAYsYatIzaK4AsqTeRX3sjFzPuQHytv34kHCKzflyHz
 ta/J4aH65Yq2yj4ctNjFjNDfdS8TX8et9QISJW1dXljd2wSDtl6X6m6Yx
 8vAnA/BO3prPX788p+oElUhCeYBTOzXfwkNDTubd8/RpvVKL8ANZicesY
 fCh4ykFS6FsP5vc7MZqDo6ZQKZcu0MN9vF71gpM/x6rikoNtSeY1B0dC6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="224988563"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224988563"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 10:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="491602016"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2022 10:17:13 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri, 14 Jan 2022 10:17:08 -0800
Message-Id: <20220114181713.1798514-11-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
References: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 10/15] tests/i915/i915_hangman: Run
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

