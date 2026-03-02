Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NlcEjeOpWmoDgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 14:18:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03431D9A3A
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 14:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA3510E4DB;
	Mon,  2 Mar 2026 13:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VkJrxAI/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3306B10E4DB;
 Mon,  2 Mar 2026 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772457523; x=1803993523;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6691Uwbnq6mFo8xT4AENshPMtcltfgExfzPKaGTFitw=;
 b=VkJrxAI/ie/b0G3oPoGn6MKzXUQjcDCZRTsvQPY5TbUzwHWOBzl24/zy
 YbEMlaGlINibV5DRZ7EcaMtVncnDUDm5azyExcL7tV01bjPIOnsV3ZvYm
 x3XCLZ6LdCeaMo+m8gwh9AA6pPOIEq6bTeWcps+PbJ8lFHBKNRluARdPH
 CRIa0prPzmIZj7rzab66G8iA6RDBvvszOY1yOjRCgBMMSNa56+lXWTsMg
 FRHtyzfe9qC+Qh9jT/cND5T5JTAGgt1ltE+aDXkJXhpoqDXFKQZIL0GQz
 gHneTFzdlvmw1+LJg7rteHoT4Vgjw3dzdnsLgbg0k2oRq5XQCBZJi3xlu Q==;
X-CSE-ConnectionGUID: NRidGnq4TISOhggpUIG4mg==
X-CSE-MsgGUID: xPOxNOEgSbuuCFDwjT+14g==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84929664"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="84929664"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 05:18:43 -0800
X-CSE-ConnectionGUID: t6lOompaRh+yRpeM3hgapA==
X-CSE-MsgGUID: BlGGcrh0SFGvAfn2TzxlUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="222285073"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.252])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 05:18:40 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] tests/intel/gem_lmem_swapping: Expect gem leak helper
 crashes
Date: Mon,  2 Mar 2026 14:12:45 +0100
Message-ID: <20260302131817.3744919-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: A03431D9A3A
X-Rspamd-Action: no action

When trying to exhaust system memory in order to exercise LMEM eviction
under OOM conditions, a gem_leak helper process may itself become a victim
of memory shortage.  If our i915 TTM VM fault handler fails to allocate a
page and responds with a SIGBUS signal when the helper process is trying
to store data in a mmaped i915 GEM object with memset then the process
crashes.  Unfortunately, such crash is not only reported on stdout, strerr
and dmesg as premature, additional result from the subtest while it is
still in progress, but also renders the final result as failed.

Starting subtest: smem-oom
Starting dynamic subtest: lmem0
Received signal SIGBUS.
Stack trace:
 #0 [fatal_sig_handler+0x17b]
 #1 [__sigaction+0x50]
 #2 [__igt_unique____real_main808+0xdbc]
 #3 [main+0x3f]
 #4 [__libc_init_first+0x8a]
 #5 [__libc_start_main+0x8b]
 #6 [_start+0x25]
Dynamic subtest lmem0: CRASH (20.804s)
Subtest smem-oom: SUCCESS (20.807s)
Received signal SIGABRT.
Stack trace:
 #0 [fatal_sig_handler+0x17b]
 #1 [__sigaction+0x50]
 #2 [pthread_kill+0x11c]
 #3 [gsignal+0x1e]
 #4 [abort+0xdf]
 #5 [<unknown>+0xdf]
 #6 [__assert_fail+0x47]
 #7 [__igt_waitchildren+0x1c0]
 #8 [igt_waitchildren_timeout+0x9d]
 #9 [intel_allocator_multiprocess_stop+0xbb]
 #10 [__igt_unique____real_main808+0x551]
 #11 [main+0x3f]
 #12 [__libc_init_first+0x8a]
 #13 [__libc_start_main+0x8b]
 #14 [_start+0x25]
(gem_lmem_swapping:2347) CRITICAL: Test assertion failure function test_smem_oom, file ../tests/intel/gem_lmem_swapping.c:777:
(gem_lmem_swapping:2347) CRITICAL: Failed assertion: lmem_err == 0
(gem_lmem_swapping:2347) CRITICAL: Last errno: 3, No such process
(gem_lmem_swapping:2347) CRITICAL: error: 137 != 0
Dynamic subtest lmem0 failed.
...
runner: Dynamic subtest lmem0 result when not inside a subtest. This is a test bug.
Subtest smem-oom: FAIL (22.672s)

Since page allocation failures are unavoidable under OOM conditions, and
the SIGBUS signal response from our TTM fault handler is correct in such
cases, catch those signals and let the helper process continue.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
That's an improved and better documented new version of my former
https://patchwork.freedesktop.org/patch/685572/

 tests/intel/gem_lmem_swapping.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index 77e18f1a3c..514423f470 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -11,6 +11,8 @@
 #include "igt_kmod.h"
 #include "runnercomms.h"
 #include <unistd.h>
+#include <setjmp.h>
+#include <signal.h>
 #include <stdlib.h>
 #include <stdint.h>
 #include <stdio.h>
@@ -651,13 +653,21 @@ static void leak(uint64_t alloc)
 	}
 }
 
+static sigjmp_buf sigbus_jmp;
+
+static void sigbus_handler(int sig, siginfo_t *si, void *ctx)
+{
+	siglongjmp(sigbus_jmp, 1);
+}
+
 static void gem_leak(int fd, uint64_t alloc)
 {
 	uint32_t handle = gem_create(fd, alloc);
 	void *buf;
 
 	buf = gem_mmap_offset__fixed(fd, handle, 0, PAGE_SIZE, PROT_WRITE);
-	memset(buf, 0, PAGE_SIZE);
+	if (!igt_debug_on_f(sigsetjmp(sigbus_jmp, 1), "PID %d: SIGBUS caught\n", getpid()))
+		memset(buf, 0, PAGE_SIZE);
 	munmap(buf, PAGE_SIZE);
 
 	gem_madvise(fd, handle, I915_MADV_DONTNEED);
@@ -745,8 +755,14 @@ static void test_smem_oom(int i915,
 				}
 			}
 			igt_fork(child, 1) {
+				struct sigaction sa = {
+					.sa_sigaction = sigbus_handler,
+					.sa_flags = SA_SIGINFO | SA_NODEFER,
+				};
 				int fd = drm_reopen_driver(i915);
 
+				sigaction(SIGBUS, &sa, NULL);
+
 				for (int pass = 0; pass < num_alloc; pass++) {
 					if (READ_ONCE(*lmem_done))
 						break;
-- 
2.52.0

