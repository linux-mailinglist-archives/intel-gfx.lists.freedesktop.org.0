Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aG7gEbEBs2mQRQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 19:10:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CED2770AB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 19:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3623710E429;
	Thu, 12 Mar 2026 18:10:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SehTZxFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAF410E361;
 Thu, 12 Mar 2026 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773339053; x=1804875053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bbzyyHIdwDjoDVFX7mQXGFLu5F9UU/UHvUHC61hpUlc=;
 b=SehTZxFqRcOMJK9f9dC7OKQjyfiOwVwMwt/uw56KazWBx6YRmH5jOOlj
 4Efx6/8/FD74AneR1p+e88WwbJ2tBKFN3dECRDpGKRWWmyrAXno1Rg5gj
 8ZHIYS8wAIjbaB5SKKvvaIjwvU9fmXD1SXSypNrkPj/nlAx5lYrZ8L7cJ
 4Kj7jiRDvpF5JRvqtVoMbthY5XwZUfbsKyLBAX0SrUIroztfx8OPsUBdn
 YGxZJMJS43SK5C2uwinCZMHTkcx1HMoT/bDVhg8RRwHzZsSxkJ43t5MKv
 rs+ZN7DPtBX9Qj9ERmdc0S6FZ5yHje9mVMEgBXlpF44j2RXF109eWgW1H Q==;
X-CSE-ConnectionGUID: gu3ksDs8QEWHP3S687Irnw==
X-CSE-MsgGUID: Gmbdr5TfSim4poyvRj5HOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="92016967"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="92016967"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 11:10:53 -0700
X-CSE-ConnectionGUID: +rdmOxPCRpy87aXE6+Ijnw==
X-CSE-MsgGUID: mFT/5sh+RV6AzzHIM+2Ymg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="243936355"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.152])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 11:10:50 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 1/3] tests/gem_lmem_swapping: Improve concurrency of
 smem-oom helpers.
Date: Thu, 12 Mar 2026 19:07:33 +0100
Message-ID: <20260312181032.20485-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
References: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: E6CED2770AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The smem-oom subtests re-spawns two different memory leak helpers.  Any of
those two may either complete or be killed before the other and not
respawned until the other is also completed or killed.  That imbalance may
actually affect the shape of OOM conditions, most probably intended to be
a compound result of those two memory exhaustion activities of different
nature.

Respawn each helper from its own loop.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index 77e18f1a3c..3a35318a74 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -707,7 +707,7 @@ static void test_smem_oom(int i915,
 		igt_get_total_swap_mb();
 	const unsigned int alloc = 256 * 1024 * 1024;
 	const unsigned int num_alloc = 1 + smem_size / (alloc >> 20);
-	struct igt_helper_process smem_proc = {};
+	struct igt_helper_process smem_loop[2] = {};
 	unsigned int n;
 	int lmem_err;
 
@@ -734,8 +734,8 @@ static void test_smem_oom(int i915,
 		drm_close_driver(fd);
 	}
 
-	/* smem memory hog process, respawn till the lmem process completes */
-	igt_fork_helper(&smem_proc) {
+	/* smem memory hog processes, respawn till the lmem process completes */
+	igt_fork_helper(&smem_loop[0]) {
 		while (!READ_ONCE(*lmem_done)) {
 			igt_fork(child, 1) {
 				for (int pass = 0; pass < num_alloc; pass++) {
@@ -744,6 +744,16 @@ static void test_smem_oom(int i915,
 					leak(alloc);
 				}
 			}
+			/*
+			 * Wait for grand-child process to finish or be
+			 * killed by the oom killer, don't call
+			 * igt_waitchildren because of the noise
+			 */
+			wait(NULL);
+		}
+	}
+	igt_fork_helper(&smem_loop[1]) {
+		while (!READ_ONCE(*lmem_done)) {
 			igt_fork(child, 1) {
 				int fd = drm_reopen_driver(i915);
 
@@ -754,13 +764,7 @@ static void test_smem_oom(int i915,
 				}
 				drm_close_driver(fd);
 			}
-			/*
-			 * Wait for grand-child processes to finish or be
-			 * killed by the oom killer, don't call
-			 * igt_waitchildren because of the noise
-			 */
-			for (n = 0; n < 2; n++)
-				wait(NULL);
+			wait(NULL);
 		}
 	}
 
@@ -772,7 +776,8 @@ static void test_smem_oom(int i915,
 		(*lmem_done)++;
 	munmap(lmem_done, sizeof(*lmem_done));
 
-	igt_wait_helper(&smem_proc);
+	for (n = 0; n < 2; n++)
+		igt_wait_helper(&smem_loop[n]);
 
 	igt_assert_eq(lmem_err, 0);
 }
-- 
2.53.0

