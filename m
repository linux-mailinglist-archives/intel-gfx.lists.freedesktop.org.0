Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBAEC63D1D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 12:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A1510E3A1;
	Mon, 17 Nov 2025 11:31:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MB4Si0hU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791C910E3A1;
 Mon, 17 Nov 2025 11:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763379069; x=1794915069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5dJYCYL1eKWFKknCLQIN8BTc0M9yj9jzT5WIpJyzSU4=;
 b=MB4Si0hUBtACsbF6sIwuDfSTYf3j/CDscSQL0TS9dMVwukOjdQyGDJQo
 ylFfcAkFrT0OdUcny3KznBTVMnY6pZGmVQKiZ3m6g0O2Y4HSPn6WHEWDW
 yQjsZu6PPHlcRt7CvXz69OrMjDr/+Sf07xUwbP+YzTTe4t1vUmf7G5eGG
 artrKKrcKx7HgZ8nlh62hNwfWXKX7tedeFVCaUCV17v4nA9tMWSDAP5BT
 JfLqlq8KaeQgpSPoMTsbgeDBwoa/L3yT4H8Ydhc0goVOD12elLZpBjNrd
 o0/mq1tM/x6gJlcq9yqCOvh6YZ+AAypZrLIj5X9K+wQIoYLEZhbWOYLuE w==;
X-CSE-ConnectionGUID: Db6UCUUCSvCTG5nzEyzR1A==
X-CSE-MsgGUID: 27jObJyWRYuPETIQ8rh+8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65257322"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65257322"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 03:31:08 -0800
X-CSE-ConnectionGUID: RUVLBCeYSF2DnbIS5/Ffdw==
X-CSE-MsgGUID: n8/OYCnQTn+ucCaXScXTvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="194532752"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.53])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 03:31:05 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Petri Latvala <adrinael@adrinael.net>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2] tests/intel/gem_lmem_swapping: Run smem-oom helper
 loop in background
Date: Mon, 17 Nov 2025 12:29:42 +0100
Message-ID: <20251117113032.1143849-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.1
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

The smem-oom subtest forks SMEM helper processes from a loop run in the
main process.  That loop is supposed to be terminated only when exit
handler of a formerly forked LMEM eviction process signals its completion.
However, since the subtest arranges OOM conditions, the LMEM process may
get killed and its completion never signaled.  When that happens, the
subtest may keep re-spawning SMEM helpers indefinitely and complete only
when killed, e.g., by igt_runner on per-test timeout expiration.

Instead of waiting for completion of the loop of the SMEM helpers, run
the loop in background and wait for completion of the LMEM eviction
process.  Also, take care of signaling the SMEM helper processes about
LMEM eviction process completion in case it has got killed and hasn't had
a chance to do that itself.

This patch addresses timeout results reported to the below mentioned
upstream issue.  Other failures (incomplete / dmesg-warn / crash) may
need additional patches, but let's fix those timeouts first to get a more
clear picture.

v2: Add a comment on why igt_waitchildren() has been replaced with its
    non-failing variant (Krzysztof),
  - in commit description, use "LMEM eviction process" wording in place of
    just "LMEM process" (Krzysztof),
  - insert "intel" component into the commit message tag (Kamil).

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index 8e0dac42d8..6f494b5342 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -678,6 +678,7 @@ static void test_smem_oom(int i915,
 	const unsigned int num_alloc = 1 + smem_size / (alloc >> 20);
 	struct igt_helper_process smem_proc = {};
 	unsigned int n;
+	int lmem_err;
 
 	lmem_done = mmap(0, sizeof(*lmem_done), PROT_WRITE,
 			 MAP_SHARED | MAP_ANON, -1, 0);
@@ -703,8 +704,8 @@ static void test_smem_oom(int i915,
 	}
 
 	/* smem memory hog process, respawn till the lmem process completes */
-	while (!READ_ONCE(*lmem_done)) {
-		igt_fork_helper(&smem_proc) {
+	igt_fork_helper(&smem_proc) {
+		while (!READ_ONCE(*lmem_done)) {
 			igt_fork(child, 1) {
 				for (int pass = 0; pass < num_alloc; pass++) {
 					if (READ_ONCE(*lmem_done))
@@ -730,11 +731,19 @@ static void test_smem_oom(int i915,
 			for (n = 0; n < 2; n++)
 				wait(NULL);
 		}
-		igt_wait_helper(&smem_proc);
 	}
+
+	/* Reap exit status of the lmem process but don't fail before cleanup */
+	lmem_err = __igt_waitchildren();
+
+	/* Make sure SMEM helpers stop even when the LMEM process gets killed */
+	if (lmem_err)
+		(*lmem_done)++;
 	munmap(lmem_done, sizeof(*lmem_done));
-	/* Reap exit status of the lmem process */
-	igt_waitchildren();
+
+	igt_wait_helper(&smem_proc);
+
+	igt_assert_eq(lmem_err, 0);
 }
 
 #define dynamic_lmem_subtest(reg, regs, subtest_name...) \
-- 
2.51.1

