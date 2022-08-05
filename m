Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BAF58A7CC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 10:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63B412A9C7;
	Fri,  5 Aug 2022 08:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AFD4A3156;
 Fri,  5 Aug 2022 08:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659686990; x=1691222990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lmSLX9kTZZSaLbBlHKsgQ8PoQePN1u/MvLsd25Ulqpo=;
 b=ZbaGnyZ8rNqRIXEQdN3R0iJXLoSkKh9l1VI7rRBYcKb6OPr5jFOlJqeG
 F3yP1RnxTZPUTX4ZRcpbui6lm6XdMUMkq+cPL8aXfSJ6iF083viwQizR5
 0aKxRTvQXTGBr+981Krhyi7jays8zlgtL0jtrAKhul2epvfynT+mFRILy
 Cjdurg8D59Bqc3YRnt0LqxBjQe/Mx+LJ/oZJcySV3JUBBIIWZQzOS9kFx
 drm9/kdB9MU132MyWXuOQlMmBLGvwnsIVbO5bRXL1CRsIM2BbDi7BNJQe
 u89yvF86d++RErK9abqGI1NIrNvAORaoZAF3uFTNdhAX5JN4wUf3BEJZB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="291371340"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="291371340"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:09:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="662897989"
Received: from szawadzk-mobl.ger.corp.intel.com (HELO jkrzyszt-mobl1.intranet)
 ([10.213.19.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:09:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  5 Aug 2022 10:09:28 +0200
Message-Id: <20220805080928.169952-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220805080928.169952-1-janusz.krzysztofik@linux.intel.com>
References: <20220805080928.169952-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] tests/gem_exec_fence: Restore
 pre-hang checks in *await-hang scenarios
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit c8f6aaf32d83 "tests/gem_exec_fence: Check stored values only for
valid workloads" resolved an issue, observed in *await-hang scenarios,
where a fence exposed by an invalid spin batch was signaled asynchronously
to pending checks for depended test batches still waiting for that fence.
Those checks have been disabled, weakening those scenarios.

This change takes an alternative approach: it makes the invalid spin batch
dependent on another fence so the test has full control over the moment
when that batch starts, triggers a GPU hang and its fence is signaled.
With that in place, the test is able to check synchronously if execution
of dependent test batches is still blocked on the not yet signaled fence
of the not yet completed spin batch, as it does in counterpart non-hanging
scenarios.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_exec_fence.c | 45 ++++++++++++++++++++++++++-----------
 1 file changed, 32 insertions(+), 13 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 11d99781b0..27af9718d9 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -309,10 +309,10 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 {
 	const struct intel_execution_engine2 *e2;
 	uint32_t scratch = gem_create(fd, 4096);
-	igt_spin_t *spin;
+	igt_spin_t *spin, *invalid_spin;
 	uint32_t *out;
 	uint64_t scratch_offset, ahnd = get_reloc_ahnd(fd, ctx->id);
-	int i;
+	int out_fence, i;
 
 	scratch_offset = get_offset(ahnd, scratch, 4096, 0);
 
@@ -325,10 +325,25 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 			    .ctx = ctx,
 			    .engine = e->flags,
 			    .flags = IGT_SPIN_FENCE_OUT |
-				     IGT_SPIN_POLL_RUN |
-				     spin_hang(flags));
+				     IGT_SPIN_POLL_RUN);
 	igt_assert(spin->out_fence != -1);
 
+	if (flags & HANG) {
+		invalid_spin = igt_spin_new(fd,
+					    .ahnd = ahnd,
+					    .ctx = ctx,
+					    .engine = e->flags,
+					    .fence = spin->out_fence,
+					    .flags = IGT_SPIN_FENCE_IN |
+						     IGT_SPIN_FENCE_OUT |
+						     IGT_SPIN_POLL_RUN |
+						     spin_hang(flags));
+		igt_assert(invalid_spin->out_fence != -1);
+		out_fence = invalid_spin->out_fence;
+	} else {
+		out_fence = spin->out_fence;
+	}
+
 	i = 0;
 	for_each_ctx_engine(fd, ctx, e2) {
 		if (!gem_class_can_store_dword(fd, e2->class))
@@ -337,12 +352,12 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 		i++;
 
 		if (flags & NONBLOCK) {
-			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
+			igt_store_word(fd, ahnd, ctx, e2, out_fence,
 				       scratch, scratch_offset, i, i);
 		} else {
 			igt_fork(child, 1) {
 				ahnd = get_reloc_ahnd(fd, ctx->id);
-				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
+				igt_store_word(fd, ahnd, ctx, e2, out_fence,
 					       scratch, scratch_offset, i, i);
 				put_ahnd(ahnd);
 			}
@@ -353,19 +368,21 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 	/* Long, but not too long to anger preemption disable checks */
 	usleep(50 * 1000); /* 50 ms, typical preempt reset is 150+ms */
 
-	if ((flags & HANG) == 0) {
-		/* Check for invalidly completing the task early */
+	/* Check for invalidly completing the task early */
+	if (flags & HANG) {
 		igt_assert(fence_busy(spin->out_fence));
-		for (int n = 1; n <= i; n++)
-			igt_assert_eq_u32(out[n], 0);
-
-		igt_spin_end(spin);
+		igt_fail_on(igt_spin_has_started(invalid_spin));
 	}
+	igt_assert(fence_busy(out_fence));
+	for (int n = 1; n <= i; n++)
+		igt_assert_eq_u32(out[n], 0);
+
+	igt_spin_end(spin);
 
 	igt_waitchildren();
 
 	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
-	igt_assert(!fence_busy(spin->out_fence));
+	igt_assert(!fence_busy(out_fence));
 	if ((flags & HANG) == 0) {
 		do
 			igt_assert_eq_u32(out[i], i);
@@ -373,6 +390,8 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 	}
 	munmap(out, 4096);
 
+	if (flags & HANG)
+		igt_spin_free(fd, invalid_spin);
 	igt_spin_free(fd, spin);
 	gem_close(fd, scratch);
 	put_offset(ahnd, scratch);
-- 
2.25.1

