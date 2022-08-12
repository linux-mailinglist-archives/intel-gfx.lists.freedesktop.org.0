Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C79590E82
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 11:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DB6AB4FF;
	Fri, 12 Aug 2022 09:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812E298CD9;
 Fri, 12 Aug 2022 09:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660298047; x=1691834047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=olE+kcSLMFIzY0K6/Tm3ZPC6nm8PiVyXuhkfNx+snNY=;
 b=XTXH/LpEkcjBe5R41TnqDdLgqiD7RrLWkX1dt9+4aYCXhsoXwskbPWwe
 0AtJXpdOTfdA/mDxPj6aD/+YIXZZl7JUG3ysNAAA+PPKJso1nd1/om8F+
 M9efx7dKKSz9h2UTcHJj+Nt//SlrUBeVHHDj4ss8ZwzyufGKg3E/+f6MN
 lCVy5ytjqjQZpPiqkrtxiZJ506ooSi1oAHfz0HklnsxpGGAR+I1+Wgz0R
 8psGDhm954o4Q6oDCt+BJtPWicbZBhXdG6rK9acpBoJlmoO9Duob3QH+c
 nu9hpy0TZGtVWv5Of2+ClZOnVhpUMt8Lapb3Kt8wzJNlbmZ2B7+at+7KV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292359349"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292359349"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 02:54:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="634588848"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.22.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 02:54:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 12 Aug 2022 11:53:45 +0200
Message-Id: <20220812095346.45379-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
References: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When i = 0, condition out[i] == i will be true even if a batch supposed
to store i in out[i] fails.  Don't use i = 0 in batches that store values
in out[i].

v2: still check for out[0] == 0 (Chris)

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
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

