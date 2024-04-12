Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D615C8A22FB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 02:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2145510EC81;
	Fri, 12 Apr 2024 00:43:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvDJOal7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF4310E5CD;
 Fri, 12 Apr 2024 00:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712882598; x=1744418598;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1H2+8qJ8RJeh4Td6fj9qsgBhjqo3o0STKbVuyqT4dJM=;
 b=BvDJOal7+a6X7zCh4ONQ88QUHN88bSrYCDYunS4Og/hDEslERmn0QEke
 kSiTSTF6U0yWmgsDGVdnjysvrS4yZy9+MbunU9sg46M1aWaO56xM8Z1sP
 YooyMcluiwkEuV/YnVr8Nofn3U/QlcjE8O9suRcbKbom5xTh9S4Bff8L1
 6tlFD6i5ZrPQiBntTeJHOB9ufi58i0MhCAGvxLeay5tPI1cfeo3fKVSAX
 O4WiMSsQBcUhLeGVq3rF7AhfnM84DKl5H7Af7J6fmi0zweq8nDYt+CaU9
 JJ0VC5k2vxIw/HzYYOJGl47C8H1JDnN52g6YtxpOx6ZHsTJ4Fux30Xlsz w==;
X-CSE-ConnectionGUID: L326h62KQUSqoes3AaDV1w==
X-CSE-MsgGUID: 1maIlsywQjOngCr3QlczGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8492651"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="8492651"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:43:18 -0700
X-CSE-ConnectionGUID: J6AbQ9GTQ8eZtL0MT5gHMQ==
X-CSE-MsgGUID: P76nmuBnRZifpjDp6rcqAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="21040913"
Received: from unknown (HELO intel.com) ([10.247.119.7])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:43:14 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: igt-dev <igt-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH i-g-t] i915/gem_mmap_offset: Partial mmap and munmap
Date: Fri, 12 Apr 2024 02:42:55 +0200
Message-ID: <20240412004255.288046-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@linux.intel.com>

Based on a test case developed by Lionel Landwerlin, this exercises
creation of partial mmaps using both direct methods of a partial mmap()
(where the mmap() only covers a portion of the object) and
munmap() to do the same.

Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 tests/intel/gem_mmap_offset.c | 84 +++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/tests/intel/gem_mmap_offset.c b/tests/intel/gem_mmap_offset.c
index 95d2158ca88f..0ba2f9591f85 100644
--- a/tests/intel/gem_mmap_offset.c
+++ b/tests/intel/gem_mmap_offset.c
@@ -56,6 +56,8 @@
  * SUBTEST: isolation
  * SUBTEST: oob-read
  * SUBTEST: open-flood
+ * SUBTEST: partial-mmap
+ * SUBTEST: partial-unmap
  * SUBTEST: perf
  * SUBTEST: pf-nonblock
  * SUBTEST: ptrace
@@ -874,6 +876,83 @@ static void blt_coherency(int i915)
 	igt_assert_f(compare_ok, "Problem with coherency, flush is too late\n");
 }
 
+static void partial_mmap(int i915)
+{
+	uint32_t handle;
+
+	handle = gem_create(i915, SZ_2M);
+
+	for_each_mmap_offset_type(i915, t) {
+		struct drm_i915_gem_mmap_offset arg = {
+			.handle = handle,
+			.flags = t->type,
+		};
+		uint32_t *ptr;
+
+		if (mmap_offset_ioctl(i915, &arg))
+			continue;
+
+		ptr = mmap(0, SZ_4K, PROT_WRITE, MAP_SHARED, i915, arg.offset);
+		if (ptr == MAP_FAILED)
+			continue;
+
+		memset(ptr, 0xcc, SZ_4K);
+		munmap(ptr, SZ_4K);
+
+		ptr = mmap(0, SZ_4K, PROT_READ, MAP_SHARED, i915, arg.offset + SZ_2M - SZ_4K);
+		igt_assert(ptr != MAP_FAILED);
+
+		for (uint32_t i = 0; i < SZ_4K / sizeof(uint32_t); i++)
+			igt_assert_eq_u32(ptr[i], 0);
+
+		munmap(ptr, SZ_4K);
+	}
+
+	gem_close(i915, handle);
+}
+
+static void partial_unmap(int i915)
+{
+	uint32_t handle;
+
+	handle = gem_create(i915, SZ_2M);
+
+	for_each_mmap_offset_type(i915, t) {
+		uint8_t *ptr_a, *ptr_b;
+
+		/* mmap the same GEM BO twice */
+		ptr_a = __mmap_offset(i915, handle, 0, SZ_2M,
+				PROT_READ | PROT_WRITE,
+				t->type);
+		if (!ptr_a)
+			continue;
+
+		ptr_b = __mmap_offset(i915, handle, 0, SZ_2M,
+				PROT_READ | PROT_WRITE,
+				t->type);
+		if (!ptr_b)
+			continue;
+
+		/* unmap the first mapping but the last 4k */
+		munmap(ptr_a, SZ_2M - SZ_4K);
+
+		/* memset that remaining 4k with 0xcc */
+		memset(ptr_a + SZ_2M - SZ_4K, 0xcc, SZ_4K);
+
+		/* memset the first page of the 2Mb with 0xdd */
+		memset(ptr_b, 0xdd, SZ_4K);
+
+		for (uint32_t i = 0; i < SZ_4K; i++)
+			igt_assert_eq_u32(ptr_a[SZ_2M - SZ_4K + i], 0xcc);
+
+		munmap(ptr_a + SZ_2M - SZ_4K, SZ_4K);
+		memset(ptr_b, 0, SZ_2M);
+		munmap(ptr_b, SZ_2M);
+	}
+
+	gem_close(i915, handle);
+}
+
 static int mmap_gtt_version(int i915)
 {
 	int gtt_version = -1;
@@ -931,6 +1010,11 @@ igt_main
 	igt_subtest_f("open-flood")
 		open_flood(i915, 20);
 
+	igt_subtest_f("partial-mmap")
+		partial_mmap(i915);
+	igt_subtest_f("partial-unmap")
+		partial_unmap(i915);
+
 	igt_subtest_with_dynamic("clear") {
 		for_each_memory_region(r, i915) {
 			igt_dynamic_f("%s", r->name)
-- 
2.43.0

