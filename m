Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D3D58AB68
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 15:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A9611235E;
	Fri,  5 Aug 2022 13:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822F6A55FE;
 Fri,  5 Aug 2022 13:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659705117; x=1691241117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+ePq/UCcBs+ZzCfyl/DINsvIwOtzJeZbZBjxAVzp4QA=;
 b=LJFD0sOTLKFZSfQjAnkvhpwV1CLDgbeDym3nWRQuDMA54z2KfPQTHqQP
 P7NWZN3kZQfZPK3ndMMaBrLkQYAwOMe2DKcoeXz7Z0Nn00UZbJinFs9xq
 hPY5VYgxajad3zQin+7+6/U+SPGZ/nyLBHEzpj3/i+YoaQkXYXgPHch8d
 reaNthCP3GHksS60/ERPNs1HVrKjbzF9kyoV87zssrUygCbaJDEz3GKxG
 72eie8Dw5gYb/6hMPsRDYK/Gug1VVn3orRZ1ZVDjS/S0vo0o5XIxJuA7R
 vRZ3bzXNf3KFY3iAOWeQUK6yrOC/vjbl/hul01HUdzBQ2BB4RHHBdWteI Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="288955859"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="288955859"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 06:11:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="636489320"
Received: from namitaga-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.224.55])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 06:11:55 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  5 Aug 2022 14:10:52 +0100
Message-Id: <20220805131052.441896-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_lmem_swapping: add some
 coverage for big objects
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Everything we are testing here unfortunately fits within one packet (8M)
which means we have zero coverage when we need to split the copy over
multiple packets (including the aux CCS state).

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 tests/i915/gem_lmem_swapping.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 1a4f4ca5..67e95cea 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -63,6 +63,7 @@ struct params {
 #define TEST_ENGINES	(1 << 4)
 #define TEST_MULTI	(1 << 5)
 #define TEST_CCS	(1 << 6)
+#define TEST_BIG	(1 << 7)
 	unsigned int flags;
 	unsigned int seed;
 	bool oom_test;
@@ -477,8 +478,8 @@ static void fill_params(int i915, struct params *params,
 {
 	const int swap_mb = /* For lmem, swap is total of smem + swap. */
 		igt_get_total_ram_mb() + igt_get_total_swap_mb();
-	const unsigned int size = 1 << 20;
 	const int max_swap_pct = 75;
+	unsigned int size;
 	/*
 	 * In random mode, add 85% hard limit to use system memory.
 	 * noticed that 88.8% can trigger OOM on some system.
@@ -487,6 +488,17 @@ static void fill_params(int i915, struct params *params,
 	int spill_mb;
 	uint32_t handle;
 
+	size = 1 << 20;
+	if (flags & TEST_BIG) {
+		/*
+		 * The kernel only copies in small chunks, so make sure we
+		 * have some coverage where multiple packets are needed to copy
+		 * the entire object.
+		 */
+		size = 1u << 26; /* 64M */
+		size += 1u << 16; /* So we also exceed NUM_CCS_BLKS_PER_XFER */
+	}
+
 	if (flags & TEST_RANDOM) {
 		params->size.min = 4096;
 		handle = create_bo(i915, &params->size.min, &region->region,
@@ -733,6 +745,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		unsigned int flags;
 	} *test, tests[] = {
 		{ "basic", 0 },
+		{ "basic-big", TEST_BIG },
 		{ "random", TEST_RANDOM },
 		{ "random-engines", TEST_RANDOM | TEST_ENGINES },
 		{ "heavy-random", TEST_RANDOM | TEST_HEAVY },
@@ -746,6 +759,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		{ "parallel-random-verify", TEST_PARALLEL | TEST_RANDOM | TEST_VERIFY },
 		{ "parallel-multi", TEST_PARALLEL | TEST_RANDOM | TEST_VERIFY | TEST_ENGINES | TEST_MULTI },
 		{ "verify-ccs", TEST_CCS },
+		{ "verify-ccs-big", TEST_CCS | TEST_BIG },
 		{ "verify-random-ccs", TEST_CCS | TEST_RANDOM },
 		{ "heavy-verify-random-ccs", TEST_CCS | TEST_RANDOM | TEST_HEAVY },
 		{ "heavy-verify-multi-ccs", TEST_CCS | TEST_RANDOM | TEST_HEAVY | TEST_ENGINES | TEST_MULTI },
-- 
2.37.1

