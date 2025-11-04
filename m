Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976F5C321BE
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79FE10E63F;
	Tue,  4 Nov 2025 16:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JTU0fGqK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6B010E292;
 Tue,  4 Nov 2025 16:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762274571; x=1793810571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r6r5S2W+OXWWTUb0/X4uIvdPbttEuqlVW9g8442UvC4=;
 b=JTU0fGqKLUq85i60gxiOS9Mf/MsnUrRtlLiAYjWYa3nacCjdxcL1Mfjw
 1lboiXfWelIiv+V2GoMbTt7OTS21KG//UFKoM55tkrVph1nAVfD1Tvqrl
 bd78tLIsNNND0szd/WkrGVvARW92fCratFOTVj6CucvKZkJHVd4avceit
 dEqhcR1roIa9HnaMcp/NURfdaecCIDAYrIAYjicNyFyDlr2x676iQcQy3
 AdqmPYRNPLRVLk1dawl9A2TiyO1GGtAn5Ps+0dIK5qISwQJtho1FYqXEs
 D18Dn2hmlVsqf00EtVm9/wGjE2Q1QHQ1Hplp6nj14INDT9d0TfV7OUGLA A==;
X-CSE-ConnectionGUID: ckTKmYmnR4iCEKSxpr5UNQ==
X-CSE-MsgGUID: OByCMRuMT8qfyTSnbHn2VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="87004333"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="87004333"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:42:50 -0800
X-CSE-ConnectionGUID: UBHVL5AoT6yB1vbVbdN1NQ==
X-CSE-MsgGUID: KnRVu4ipSOOyRt+VzfqLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="187355747"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.192])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:42:48 -0800
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
Subject: [PATCH i-g-t] tests/gem_lmem_swapping: Suppress output from killed
 oom helpers
Date: Tue,  4 Nov 2025 17:42:19 +0100
Message-ID: <20251104164225.473297-2-janusz.krzysztofik@linux.intel.com>
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

Dynamic sub-subtests of smem-oom subtest spawn smem memory hog helper
processes which are expected to be killed by OOM killer.  When that
happens, a default IGT signal helper inherited from its parent process is
now executed inside the helper process.  That leads to a dynamic sub-
subtest CRASH result message sent to stdout, followed by a parent subtest
SUCCESS result message.  Meanwhile, processing of the dynamic sub-subtest
that spawned that helper still continues, and then another set of result
messages is submitted on its completion.  As a consequence, ambiguous
results from that dynamic sub-subtests and its parent subtest are detected
and reported by igt_runner, even if an error code returned by the helper
is ignored.

Shut those redundant messages up by installing a custom signal handler
that just exists the helper process when killed by the OOM killer, without
reporting any IGT results or executing any IGT exit handlers.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index 8e0dac42d8..5e11092c04 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -668,6 +668,11 @@ static void smem_oom_exit_handler(int sig)
 	(*lmem_done)++;
 }
 
+static void smem_oom_helper_sig_handler(int sig)
+{
+	_exit(0);
+}
+
 static void test_smem_oom(int i915,
 			  const intel_ctx_t *ctx,
 			  struct drm_i915_memory_region_info *region)
@@ -706,6 +711,8 @@ static void test_smem_oom(int i915,
 	while (!READ_ONCE(*lmem_done)) {
 		igt_fork_helper(&smem_proc) {
 			igt_fork(child, 1) {
+				signal(SIGBUS, smem_oom_helper_sig_handler);
+
 				for (int pass = 0; pass < num_alloc; pass++) {
 					if (READ_ONCE(*lmem_done))
 						break;
@@ -715,6 +722,8 @@ static void test_smem_oom(int i915,
 			igt_fork(child, 1) {
 				int fd = drm_reopen_driver(i915);
 
+				signal(SIGBUS, smem_oom_helper_sig_handler);
+
 				for (int pass = 0; pass < num_alloc; pass++) {
 					if (READ_ONCE(*lmem_done))
 						break;
-- 
2.51.1

