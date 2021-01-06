Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 838BB2EB6EE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B41789E9E;
	Wed,  6 Jan 2021 00:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA3989E9E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 00:38:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23512905-1500050 
 for multiple; Wed, 06 Jan 2021 00:38:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 00:38:03 +0000
Message-Id: <20210106003803.4084-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Improve handling of iomem
 around stolen
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use memset_io() on the iomem, and silence sparse as we copy from the
iomem to normal system pages.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_reset.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 5ec8d4e9983f..b7befcfbdcde 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -96,10 +96,10 @@ __igt_reset_stolen(struct intel_gt *gt,
 		if (!__drm_mm_interval_first(&gt->i915->mm.stolen,
 					     page << PAGE_SHIFT,
 					     ((page + 1) << PAGE_SHIFT) - 1))
-			memset32(s, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
+			memset_io(s, STACK_MAGIC, PAGE_SIZE);
 
-		in = s;
-		if (i915_memcpy_from_wc(tmp, s, PAGE_SIZE))
+		in = (void __force *)s;
+		if (i915_memcpy_from_wc(tmp, in, PAGE_SIZE))
 			in = tmp;
 		crc[page] = crc32_le(0, in, PAGE_SIZE);
 
@@ -134,8 +134,8 @@ __igt_reset_stolen(struct intel_gt *gt,
 				      ggtt->error_capture.start,
 				      PAGE_SIZE);
 
-		in = s;
-		if (i915_memcpy_from_wc(tmp, s, PAGE_SIZE))
+		in = (void __force *)s;
+		if (i915_memcpy_from_wc(tmp, in, PAGE_SIZE))
 			in = tmp;
 		x = crc32_le(0, in, PAGE_SIZE);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
