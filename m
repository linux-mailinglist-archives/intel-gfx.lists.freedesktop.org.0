Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1581058A7CD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 10:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 895529B10C;
	Fri,  5 Aug 2022 08:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876609A0EA;
 Fri,  5 Aug 2022 08:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659686988; x=1691222988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EvfCjK8prE6FIj2YbvMsuu9e5eRU7nFLzhtvyJ5a3pE=;
 b=PaRz2FtxDL0+SlP7GIJmCYFcUIt6bSHjQtqlc5hj9eiSiCDcsSlQF/Bb
 JHOrk4Ov+H/eaNwm7ue6Xfq3u0sSske/rwyxEHqnqBYb8zskqOdXxQ92Y
 YgZOAhmkl85zAd5vY8vlQ7FUWQED2O5YDKMCxxrCZQ+wJ6iYw/zbt8lQJ
 pxeZp0m/EpwiISuu6X2m7nKzxqpRQ/z8eaHYv9wUFMHt4WlddRQiH6Z8l
 NHiqG/sAYSRnDWtGsWzmNuEcfB+ga0Aas9RxLprcYHMIlQYgAUJJdQpDF
 op15cqavuwugUKVIDs70mqVYZShwIuOcJofY6RIbKi5dXia7BbINsLfnj w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="291371338"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="291371338"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:09:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="662897985"
Received: from szawadzk-mobl.ger.corp.intel.com (HELO jkrzyszt-mobl1.intranet)
 ([10.213.19.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:09:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  5 Aug 2022 10:09:27 +0200
Message-Id: <20220805080928.169952-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220805080928.169952-1-janusz.krzysztofik@linux.intel.com>
References: <20220805080928.169952-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] tests/gem_exec_fence: Exclude 0 from
 use in store batches
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

When i == 0, condition out[i] == i will be true even if a batch supposed
to store i in out[i] fails.  Don't use 0.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_exec_fence.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 048870053a..11d99781b0 100644
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
+		for (int n = 1; n <= i; n++)
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
+		while (--i);
+	}
 	munmap(out, 4096);
 
 	igt_spin_free(fd, spin);
-- 
2.25.1

