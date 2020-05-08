Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A621CB12D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 15:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB426E209;
	Fri,  8 May 2020 13:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A9B6E18E;
 Fri,  8 May 2020 13:56:53 +0000 (UTC)
IronPort-SDR: p+OjkaiN6jZQd9M4KQ2wp5ETaBmMd43qIb9rxeGcVZGXLLgxhhh8YBj0Jz4xBK/Bo866liDv4u
 8MS7qkqJu3Xg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 06:56:52 -0700
IronPort-SDR: 4ABKa/BeGxOts1AbyjKKYPN78kIlHYnDArSLxkHy/lRWYVZsmxqMa5hpmjhD1OL94U+ekmHTMR
 YFrPLA8Mh+mA==
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="408078665"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 06:56:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 May 2020 15:56:30 +0200
Message-Id: <20200508135631.8099-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
References: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] tests/gem_exec_nop: Kill obsolete
 pass/fail metric
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 870c774b866c ("igt/gem_exec_nop: Add expectancy of independent
execution between engines") extended a "basic" subtest (now
"basic-series") with a pass/fail metric based on comparison of parallel
execution time to be less than an average * 2.  Since then, that limit
has been raised quite a few times:
- by commit 41a26b5152a5 ("igt/gem_exec_nop: Relax parallel assertion
  for short rings") to maximum + minimum,
- by commit 7bd4f918c461 ("igt/gem_exec_nop: Explain the parallel
  execution assertion") to maximum + minimum * 10/9,
- by commit a0eebbddecaa ("igt/gem_exec_nop: Relax assertion for
  parallel execution") to sum * 2.

With the criteria relaxed up to that extent, the purpose of that check
has been limited to a showcase for an old GuC failure.  Since that is
now obsolete, kill that assert.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_exec_nop.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/tests/i915/gem_exec_nop.c b/tests/i915/gem_exec_nop.c
index 357449c5b..c17d672c3 100644
--- a/tests/i915/gem_exec_nop.c
+++ b/tests/i915/gem_exec_nop.c
@@ -682,23 +682,6 @@ static void series(int fd, uint32_t handle, int timeout)
 	time = elapsed(&start, &now) / count;
 	igt_info("All (%d engines): %'lu cycles, average %.3fus per cycle [expected %.3fus]\n",
 		 nengine, count, 1e6*time, 1e6*((max-min)/nengine+min));
-
-	/* The rate limiting step should be how fast the slowest engine can
-	 * execute its queue of requests, as when we wait upon a full ring all
-	 * dispatch is frozen. So in general we cannot go faster than the
-	 * slowest engine (but as all engines are in lockstep, they should all
-	 * be executing in parallel and so the average should be max/nengines),
-	 * but we should equally not go any slower.
-	 *
-	 * However, that depends upon being able to submit fast enough, and
-	 * that in turns depends upon debugging turned off and no bottlenecks
-	 * within the driver. We cannot assert that we hit ideal conditions
-	 * across all engines, so we only look for an outrageous error
-	 * condition.
-	 */
-	igt_assert_f(time < 2*sum,
-		     "Average time (%.3fus) exceeds expectation for parallel execution (min %.3fus, max %.3fus; limit set at %.3fus)\n",
-		     1e6*time, 1e6*min, 1e6*max, 1e6*sum*2);
 }
 
 static void xchg(void *array, unsigned i, unsigned j)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
