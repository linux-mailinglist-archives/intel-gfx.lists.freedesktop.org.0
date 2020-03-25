Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9884193294
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 22:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F996E1D6;
	Wed, 25 Mar 2020 21:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 432 seconds by postgrey-1.36 at gabe;
 Wed, 25 Mar 2020 19:31:57 UTC
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAAE56E115
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 19:31:57 +0000 (UTC)
Received: from sdf.org (IDENT:lkml@faeroes.freeshell.org [205.166.94.9])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02PJOUJ1006565
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Wed, 25 Mar 2020 19:24:30 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02PJOTZG013079;
 Wed, 25 Mar 2020 19:24:29 GMT
Date: Wed, 25 Mar 2020 19:24:29 +0000
From: George Spelvin <lkml@SDF.ORG>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200325192429.GA8865@SDF.ORG>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 25 Mar 2020 21:23:46 +0000
Subject: [Intel-gfx] [PATCH] drivers/gpu/drm/i915/selftests/i915_buddy.c:
 Fix bug
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
Cc: lkml@sdf.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

igt_mm_config() calls ilog2() on the (pseudo)random 21-bit number
s>>12.  Once in 2 million seeds, this is zero and ilog2 summons
the nasal demons.

There was an attempt to handle this case with a max(), but that's
too late; ms could already be something bizarre.

Given that the low 12 bits of s and ms are always zero, it's a lot
simpler just to divide them by 4096, then everything fits into 32
bits, and we can easily generate a random number 1 <= s <= 0x1fffff.

Signed-off-by: George Spelvin <lkml@sdf.org>
Fixes: 14d1b9a6247c
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/selftests/i915_buddy.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_buddy.c b/drivers/gpu/drm/i915/selftests/i915_buddy.c
index 1b856bae67b53..b5d29dda45ddb 100644
--- a/drivers/gpu/drm/i915/selftests/i915_buddy.c
+++ b/drivers/gpu/drm/i915/selftests/i915_buddy.c
@@ -8,8 +8,6 @@
 #include "../i915_selftest.h"
 #include "i915_random.h"
 
-#define SZ_8G (1ULL << 33)
-
 static void __igt_dump_block(struct i915_buddy_mm *mm,
 			     struct i915_buddy_block *block,
 			     bool buddy)
@@ -281,18 +279,22 @@ static int igt_check_mm(struct i915_buddy_mm *mm)
 static void igt_mm_config(u64 *size, u64 *chunk_size)
 {
 	I915_RND_STATE(prng);
-	u64 s, ms;
+	u32 s, ms;
 
 	/* Nothing fancy, just try to get an interesting bit pattern */
 
 	prandom_seed_state(&prng, i915_selftest.random_seed);
 
-	s = i915_prandom_u64_state(&prng) & (SZ_8G - 1);
-	ms = BIT_ULL(12 + (prandom_u32_state(&prng) % ilog2(s >> 12)));
-	s = max(s & -ms, ms);
+	/* Let size be a random number of pages up to 8 GB (2M pages) */
+	s = 1 + i915_prandom_u32_max_state((1 << (33-12)) - 1, &prng);
+	/* Let the chunk size be a random power of 2 less than size */
+	ms = (u32)1 << i915_prandom_u32_max_state(ilog2(s), &prng);
+	/* Round size down to the chunk size */
+	s &= -ms;
 
-	*chunk_size = ms;
-	*size = s;
+	/* Convert from pages to bytes */
+	*chunk_size = (u64)ms << 12;
+	*size = (u64)s << 12;
 }
 
 static int igt_buddy_alloc_smoke(void *arg)
-- 
2.26.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
