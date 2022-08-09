Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CE658D763
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 12:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CEECE871;
	Tue,  9 Aug 2022 10:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C89CE821;
 Tue,  9 Aug 2022 10:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660040811; x=1691576811;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SF41/U6EqkuIMikiru0zJHezPXYI6q2+hwehwg/iKkA=;
 b=YN3wpddPkH/KKIhpPYfzyYwVnv/2vfuOGEpRQUL2noeVeEHP1rE3A4bu
 /2vx3YdyHbVXDXKPPpYUs5byM1SNtZ1xUUsAOqrDBglvTPf0eeC5Xb/LW
 rIAOIXrGcWs9pPbwLM9qcY+1B2IWbV1TcUKNU6oKn/qFTqzs2zuq/SkTv
 id6e4Uba5HQJMF7njsz+gGjt0NiXesrcGG9rT/W1yEWeuZaCwphUXy/yc
 NXVx90W4h7PfkPhi2XHixcXhnOJhj6zLIUNdqR1bA5FkGw/FeTTWBQRmX
 dtwOSGAHeQAQ21731EV/k1pQt4rbIcm4sK2Kr8Gu/X4w747rpKbxNtBuI g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="273852814"
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="273852814"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 03:26:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="672840055"
Received: from fjan-mobl1.amr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.214.161.125])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 03:26:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  9 Aug 2022 11:26:38 +0100
Message-Id: <20220809102638.146913-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/gem_lmem_swapping: add some
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

v2:
 - Add some coverage for 2G objects, just to see if something blows up
   with overflowing int. (Ram)
 - Just make TEST_RANDOM use bigger sizes to ensure we get coverage of
   objects that require splitting the copy into multiple packets.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 tests/i915/gem_lmem_swapping.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 1a4f4ca5..cccdb319 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -63,6 +63,7 @@ struct params {
 #define TEST_ENGINES	(1 << 4)
 #define TEST_MULTI	(1 << 5)
 #define TEST_CCS	(1 << 6)
+#define TEST_MASSIVE	(1 << 7)
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
@@ -487,12 +488,23 @@ static void fill_params(int i915, struct params *params,
 	int spill_mb;
 	uint32_t handle;
 
+	size = 1 << 20;
+	if (flags & TEST_MASSIVE)
+		size = 1u << 31;
+
 	if (flags & TEST_RANDOM) {
 		params->size.min = 4096;
 		handle = create_bo(i915, &params->size.min, &region->region,
 				   do_oom_test);
 		gem_close(i915, handle);
-		params->size.max = 2 * size + params->size.min;
+		/*
+		 * Big enough to ensure we need to split the copy (both the
+		 * actual pages and aux CCS state) into multiple packets. Also
+		 * larger enough to ensure we get a mix of 64K and 2M GTT pages
+		 * (1G GTT pages are still missing from the kernel).
+		 */
+		params->size.max = (1ul << 24) + size + params->size.min;
+		size = params->size.max;
 	} else {
 		params->size.min = size;
 		params->size.max = size;
@@ -733,6 +745,8 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		unsigned int flags;
 	} *test, tests[] = {
 		{ "basic", 0 },
+		{ "massive",  TEST_MASSIVE }, /* check for (int) overflows */
+		{ "massive-random",  TEST_RANDOM | TEST_MASSIVE },
 		{ "random", TEST_RANDOM },
 		{ "random-engines", TEST_RANDOM | TEST_ENGINES },
 		{ "heavy-random", TEST_RANDOM | TEST_HEAVY },
-- 
2.37.1

