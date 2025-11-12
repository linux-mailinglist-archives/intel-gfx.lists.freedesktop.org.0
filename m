Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07590C51C3D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 11:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2960C10E08F;
	Wed, 12 Nov 2025 10:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYWM1tQJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B87C10E08E;
 Wed, 12 Nov 2025 10:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762944571; x=1794480571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NnLmfFNFv2bcLErGy415ko5XFOCngOWfnUjkYxN9DuI=;
 b=KYWM1tQJjsEO5SRLUyqBNKToQSE36x+rK+6TReCUOeqexdt9wPMIJqYi
 BHGti1z6BThK+swB4FuED7yU3bgCsCQCSQQ4bDXzKNSVZbA7BymNCK9+Y
 7kaQ3cFnHEL9XOcfmhLrN0gheaFOZXmQ5CDKgn03J6T8k/91+etAhsB7/
 HqUx1mJks+uPZYGf0RKVpKyU34aOP8dF9m1zBBPhGFImqlc4BSJpYQq0q
 4Vs0BZKkiOWVM3aMQRMnhWi8nWzbMPCOB+deBS3Q21P4BBcP+MA9NSrcF
 A0hkTA22FvOa0OV3+QVxrH+CjCGIXDUn8y3sy2AgHBUED4UzWOFRp2Dln A==;
X-CSE-ConnectionGUID: +90GfjR5SXeQLnmhvkz61A==
X-CSE-MsgGUID: +tnN1yxLRfyRteW7Hge8LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="65040632"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="65040632"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 02:49:31 -0800
X-CSE-ConnectionGUID: HvvPzRdISs+5c++9HY+aEA==
X-CSE-MsgGUID: yZZsuZHTQGufYRLswcaMew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="188444002"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.63])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 02:49:28 -0800
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
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] tests/gem_lmem_swapping: Run smem-oom helper loop in
 background
Date: Wed, 12 Nov 2025 11:48:55 +0100
Message-ID: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
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
handler of a formerly forked LMEM process signals completion.  However,
since the subtest arranges OOM conditions, the LMEM process may get killed
and never signal its completion.  When that happens, the subtest may keep
respawning SMEM helpers indefinitely and complete only when killed, e.g.,
by igt_runner on per-test timeout expiration.

Instead of waiting form completion of the loop of the SMEM helpers, run
the loop in background and wait for completion of the LMEM process.  Also,
take care of signaling the SMEM helper processes about LMEM process
completion in case it has got killed and hasn't had a chance to do that
itself.

This patch addresses timeout results reported to the below mentioned
upstream issue.  Other failures (incomplete / dmesg-warn / crash) may
need additional patches, but let's fix those timeouts first to get a more
clear picture.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index 8e0dac42d8..45bd94adbb 100644
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
-	munmap(lmem_done, sizeof(*lmem_done));
+
 	/* Reap exit status of the lmem process */
-	igt_waitchildren();
+	lmem_err = __igt_waitchildren();
+
+	/* Make sure SMEM helpers stop even when the LMEM process gets killed */
+	if (lmem_err)
+		(*lmem_done)++;
+	munmap(lmem_done, sizeof(*lmem_done));
+
+	igt_wait_helper(&smem_proc);
+
+	igt_assert_eq(lmem_err, 0);
 }
 
 #define dynamic_lmem_subtest(reg, regs, subtest_name...) \
-- 
2.51.1

