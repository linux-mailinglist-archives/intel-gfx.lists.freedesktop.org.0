Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A9758AC65
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 16:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9B8B6286;
	Fri,  5 Aug 2022 14:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43117113192;
 Fri,  5 Aug 2022 14:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659709662; x=1691245662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UYVG7uLThY/i3PHADlziR/34/RkBnbbTZF8Z8km17co=;
 b=Yfm1e53NBZYOTdNQsSRF40lJmz/dZqNNp9qKBGNLPeI4/y/ov6+64NT2
 XGx+5mYqw0222LSKdt6iJt2DVsytZ8SVL0rZ411nMCDnsodIzyl4cHGQy
 s1Iv1/Y98ZJyu5dhM9AgVTogvUgrrdICG5el6Fks2zQcdZd4gcbY7D0fl
 XQK/yaJxLXq6rJylUzAt+PL93HvE69yDRu9sdbCqC6Je/FlETKahn5JH1
 DQovhIi1q33PEDWwOjC2ej/mOB/o05zVHZiJ3KrECPS0jT7vPnniRWvJq
 lOU4BQC2dSGr0Ubc3g1FiLsyMhnJryU8HzrPPU15AP6k5/gJnXxYSN3eW g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="277131197"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="277131197"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 07:27:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="600375538"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.intranet) ([10.213.19.138])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 07:27:40 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  5 Aug 2022 16:27:15 +0200
Message-Id: <20220805142716.185077-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220805142716.185077-1-janusz.krzysztofik@linux.intel.com>
References: <20220805142716.185077-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 2/3] tests/gem_exec_fence: Exclude 0
 from use in store batches
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

When i = 0, condition out[i] == i will be true even if a batch supposed
to store i in out[i] fails.  Don't use i = 0 in batches that store values
in out[i].

v2: still check for out[0] == 0 (Chris)

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_exec_fence.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 048870053a..78d83460f7 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -334,6 +334,8 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 		if (!gem_class_can_store_dword(fd, e2->class))
 			continue;
 
+		i++;
+
 		if (flags & NONBLOCK) {
 			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
 				       scratch, scratch_offset, i, i);
@@ -345,8 +347,6 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 				put_ahnd(ahnd);
 			}
 		}
-
-		i++;
 	}
 
 	igt_spin_busywait_until_started(spin);
@@ -356,7 +356,7 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 	if ((flags & HANG) == 0) {
 		/* Check for invalidly completing the task early */
 		igt_assert(fence_busy(spin->out_fence));
-		for (int n = 0; n < i; n++)
+		for (int n = 0; n <= i; n++)
 			igt_assert_eq_u32(out[n], 0);
 
 		igt_spin_end(spin);
@@ -366,8 +366,11 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 
 	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
 	igt_assert(!fence_busy(spin->out_fence));
-	while ((flags & HANG) == 0 && i--)
-		igt_assert_eq_u32(out[i], i);
+	if ((flags & HANG) == 0) {
+		do
+			igt_assert_eq_u32(out[i], i);
+		while (i--);
+	}
 	munmap(out, 4096);
 
 	igt_spin_free(fd, spin);
-- 
2.25.1

