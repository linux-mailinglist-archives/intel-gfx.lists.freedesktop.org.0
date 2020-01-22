Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AF6145F23
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 00:29:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7A16F931;
	Wed, 22 Jan 2020 23:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994886F933;
 Wed, 22 Jan 2020 23:29:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:29:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="220478095"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 22 Jan 2020 15:29:22 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 15:26:56 -0800
Message-Id: <76818a8047c4b9da76d0619c7b8f58c89449b4ed.1579731227.git.dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1579731227.git.dale.b.stimson@intel.com>
References: <cover.1579731227.git.dale.b.stimson@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] tests/i915/gem_ctx_isolation: use the
 gem_engine_topology library, part 1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ramalingam C <ramalingam.c@intel.com>

Call function gem_class_can_store_dword instead of legacy function
gem_can_store_dword.  This requires that e->class be available in the
calling function.

Instead of passing "engine" (== "e->flags") to functions, pass "e".
This makes e->class available where it is needed.

This commit is being kept separate from "part 2" in order to assure
proper attribution to the author.  The code associated with this
commit was written by Ramalingam C <ramalingam.c@intel.com>.
Since then, slight modifications have been done due to upstream
changes.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>.
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 tests/i915/gem_ctx_isolation.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 6aa27133c..25113b054 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -575,7 +575,6 @@ static void nonpriv(int fd,
 		0x0505c0c0,
 		0xdeadbeef
 	};
-	unsigned int engine = e->flags;
 	unsigned int num_values = ARRAY_SIZE(values);
 
 	/* Sigh -- hsw: we need cmdparser access to our own registers! */
@@ -593,7 +592,7 @@ static void nonpriv(int fd,
 
 		tmpl_regs(fd, ctx, e, tmpl, values[v]);
 
-		spin = igt_spin_new(fd, .ctx = ctx, .engine = engine);
+		spin = igt_spin_new(fd, .ctx = ctx, .engine = e->flags);
 
 		igt_debug("%s[%d]: Setting all registers to 0x%08x\n",
 			  __func__, v, values[v]);
@@ -606,12 +605,12 @@ static void nonpriv(int fd,
 			/* Explicit sync to keep the switch between write/read */
 			syncpt = igt_spin_new(fd,
 					      .ctx = ctx,
-					      .engine = engine,
+					      .engine = e->flags,
 					      .flags = IGT_SPIN_FENCE_OUT);
 
 			dirt = igt_spin_new(fd,
 					    .ctx = sw,
-					    .engine = engine,
+					    .engine = e->flags,
 					    .fence = syncpt->out_fence,
 					    .flags = (IGT_SPIN_FENCE_IN |
 						      IGT_SPIN_FENCE_OUT));
@@ -619,7 +618,7 @@ static void nonpriv(int fd,
 
 			syncpt = igt_spin_new(fd,
 					      .ctx = ctx,
-					      .engine = engine,
+					      .engine = e->flags,
 					      .fence = dirt->out_fence,
 					      .flags = IGT_SPIN_FENCE_IN);
 			igt_spin_free(fd, dirt);
@@ -660,7 +659,6 @@ static void isolation(int fd,
 		0xaaaaaaaa,
 		0xdeadbeef
 	};
-	unsigned int engine = e->flags;
 	unsigned int num_values =
 		flags & (DIRTY1 | DIRTY2) ? ARRAY_SIZE(values) : 1;
 
@@ -673,7 +671,7 @@ static void isolation(int fd,
 		ctx[0] = gem_context_create(fd);
 		regs[0] = read_regs(fd, ctx[0], e, flags);
 
-		spin = igt_spin_new(fd, .ctx = ctx[0], .engine = engine);
+		spin = igt_spin_new(fd, .ctx = ctx[0], .engine = e->flags);
 
 		if (flags & DIRTY1) {
 			igt_debug("%s[%d]: Setting all registers of ctx 0 to 0x%08x\n",
@@ -726,11 +724,11 @@ static void isolation(int fd,
 #define S4 (4 << 8)
 #define SLEEP_MASK (0xf << 8)
 
-static void inject_reset_context(int fd, unsigned int engine)
+static void inject_reset_context(int fd, const struct intel_execution_engine2 *e)
 {
 	struct igt_spin_factory opts = {
 		.ctx = gem_context_create(fd),
-		.engine = engine,
+		.engine = e->flags,
 		.flags = IGT_SPIN_FAST,
 	};
 	igt_spin_t *spin;
@@ -741,7 +739,7 @@ static void inject_reset_context(int fd, unsigned int engine)
 	 * HW for screwing up if the context was already broken.
 	 */
 
-	if (gem_can_store_dword(fd, engine))
+	if (gem_class_can_store_dword(fd, e->class))
 		opts.flags |= IGT_SPIN_POLL_RUN;
 
 	spin = __igt_spin_factory(fd, &opts);
@@ -771,7 +769,6 @@ static void preservation(int fd,
 		0xdeadbeef
 	};
 	const unsigned int num_values = ARRAY_SIZE(values);
-	unsigned int engine = e->flags;
 	uint32_t ctx[num_values +1 ];
 	uint32_t regs[num_values + 1][2];
 	igt_spin_t *spin;
@@ -779,7 +776,7 @@ static void preservation(int fd,
 	gem_quiescent_gpu(fd);
 
 	ctx[num_values] = gem_context_create(fd);
-	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = engine);
+	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
 	regs[num_values][0] = read_regs(fd, ctx[num_values], e, flags);
 	for (int v = 0; v < num_values; v++) {
 		ctx[v] = gem_context_create(fd);
@@ -792,7 +789,7 @@ static void preservation(int fd,
 	igt_spin_free(fd, spin);
 
 	if (flags & RESET)
-		inject_reset_context(fd, engine);
+		inject_reset_context(fd, e);
 
 	switch (flags & SLEEP_MASK) {
 	case NOSLEEP:
@@ -819,7 +816,7 @@ static void preservation(int fd,
 		break;
 	}
 
-	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = engine);
+	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
 	for (int v = 0; v < num_values; v++)
 		regs[v][1] = read_regs(fd, ctx[v], e, flags);
 	regs[num_values][1] = read_regs(fd, ctx[num_values], e, flags);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
