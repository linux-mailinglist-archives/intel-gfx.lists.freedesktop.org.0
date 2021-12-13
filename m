Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C5E473883
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8990110E9B6;
	Mon, 13 Dec 2021 23:29:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0EB10E8FD;
 Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438157; x=1670974157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EaAek3DMnNCQWZG2lSlWHql9YXIbiGi3MI6BNgY5LQg=;
 b=J194QuMqwwqjrbQpWtjydhCys8U1PYYXnyNeMkXz8HfzAGtuUMTZyQ5k
 LLaEZNnyhsgCyRikK8p6E8306dGGYPHgnGMzbiWruPwRs4sBE2LB74plt
 0/ceFNDYMqHFultmKnEhmyyP+sQ7Lk1LIXleA7lmryjg0n8HpwOhZaWeq
 aBBXcuo1w0pzBUWp79i6NtCnXjtxfQg6ojcXIAw9tw59buDDvFbvZxBLW
 7g2q8Jqbf4irCPZ3HNFHy8c1DYqU5mEjhlS1djnivvE/ArmpbVcRw8Evq
 g7qL2BWRli8pcZiFWegzOFcjSrCubifT+WzYvkF3LLYPWU8vOhYJrE2Yp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299635179"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="299635179"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975945"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:15 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:14 -0800
Message-Id: <20211213232914.2523139-12-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 11/11] tests/i915/gem_exec_fence:
 Configure correct context
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

The update to use intel_ctx_t missed a line that configures the
context to allow hanging. Fix that.

Fixes: 09c36188b23f83ef9a7b5414e2a10100adc4291f

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/gem_exec_fence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index c4091a454..328a2f06e 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -3139,7 +3139,7 @@ igt_main
 			igt_hang_t hang;
 
 			igt_fixture {
-				hang = igt_allow_hang(i915, 0, 0);
+				hang = igt_allow_hang(i915, ctx->id, 0);
 				intel_allocator_multiprocess_start();
 			}
 
-- 
2.25.1

