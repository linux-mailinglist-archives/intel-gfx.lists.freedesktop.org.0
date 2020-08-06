Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D42DF23DB41
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 16:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F10C6E8BF;
	Thu,  6 Aug 2020 14:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D057B6E8BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 14:57:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22051352-1500050 
 for multiple; Thu, 06 Aug 2020 15:57:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Aug 2020 15:57:28 +0100
Message-Id: <20200806145728.16495-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200806143338.15864-1-chris@chris-wilson.co.uk>
References: <20200806143338.15864-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Prevent selecting 0 for our
 random width/align
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When igt_random_offset() is a given a range of [0, PAGE_SIZE], it is
allowed to return 0. However, attempting to use a size of 0 for the
igt_lmem_write_cpu() byte poking, leads to call igt_random_offset() with
a range of [offset, offset + 0] and ask it to find a length of 4 within
it. This triggers the bug on that the requested length should fit within
the range!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
I feel into the same trap of not fixing up the random return of 0.
And then the trap of it returning -1.
---
 drivers/gpu/drm/i915/selftests/intel_memory_region.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 6e80d99048e4..741270fcb6b9 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -522,9 +522,9 @@ static int igt_lmem_write_cpu(void *arg)
 		goto out_unpin;
 	}
 
-	/* We want to throw in a random width/align */
-	bytes[0] = igt_random_offset(&prng, 0, PAGE_SIZE, sizeof(u32),
-				     sizeof(u32));
+	/* A random multiple of u32, picked between [64, PAGE_SIZE - 64] */
+	bytes[0] = igt_random_offset(&prng, 64, PAGE_SIZE - 64, 0, sizeof(u32));
+	GEM_BUG_ON(!IS_ALIGNED(bytes[0], sizeof(u32)));
 
 	i = 0;
 	do {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
