Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399602EA9B7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 12:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592D16E0DE;
	Tue,  5 Jan 2021 11:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B306E0DB
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 11:19:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23505955-1500050 
 for multiple; Tue, 05 Jan 2021 11:19:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 11:19:27 +0000
Message-Id: <20210105111927.3284573-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210105111927.3284573-1-chris@chris-wilson.co.uk>
References: <20210105111927.3284573-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_exec: Protect norecovery
 from being banned
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable banning as we deliberately inject GPU resets to test norecovery
handling.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
---
 tests/i915/gem_ctx_exec.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
index 897761856..c80a98473 100644
--- a/tests/i915/gem_ctx_exec.c
+++ b/tests/i915/gem_ctx_exec.c
@@ -171,14 +171,16 @@ static void norecovery(int i915)
 	for (int pass = 1; pass >= 0; pass--) {
 		struct drm_i915_gem_context_param param = {
 			.ctx_id = gem_context_create(i915),
-			.param = I915_CONTEXT_PARAM_RECOVERABLE,
-			.value = pass,
+			.param = I915_CONTEXT_PARAM_BANNABLE,
 		};
 		int expect = pass == 0 ? -EIO : 0;
 		igt_spin_t *spin;
 
 		gem_context_set_param(i915, &param);
 
+		param.param = I915_CONTEXT_PARAM_RECOVERABLE;
+		param.value = pass;
+		gem_context_set_param(i915, &param);
 		param.value = !pass;
 		gem_context_get_param(i915, &param);
 		igt_assert_eq(param.value, pass);
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
