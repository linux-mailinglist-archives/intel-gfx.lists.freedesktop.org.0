Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AGRJLIBs2mQRQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 19:10:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652AA2770B2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 19:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D267110E42A;
	Thu, 12 Mar 2026 18:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QD8teA07";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5DD10E42A;
 Thu, 12 Mar 2026 18:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773339056; x=1804875056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=omg4fEkyYA3+LJcDap+3Olegc0OOlrVunO1uw6uImmM=;
 b=QD8teA073tafdyI9gJqSvvvqA0NmhB+OqvUBKkhj9v3Y4swB5Lwc/rmd
 wYvZU3tdRVPeFLkkOKylWoWfhF277YXYi0VCt6Dc/3ZiZ1awkfH72H4Ap
 MMK2EhMBlf5vFTfdaF8x+ml3hmPQbnRHJoglVcrBUADyfZI+ILICSyqbf
 jO6ed+LHF3BI3+3peVUGSP1I+osXgogK1vP0HcsCR835XHyI4YjyfSPto
 cFfdQE6Dw+2rDx6IbTG6ji2iRLCE3lleSKiRS2Cs6CyBX+PhEzXqwRM28
 zDXZkrWv+8gMbah+dD18O/f6O9Tl6qhL127KIcKJsF002QMyCX4MOtsfd w==;
X-CSE-ConnectionGUID: qIJxkqYHTJyDF6Tsj463Lw==
X-CSE-MsgGUID: BMIIPq4RSxaz8icDCzKqsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="92016973"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="92016973"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 11:10:56 -0700
X-CSE-ConnectionGUID: PXwx1FfsSmGRAvKzSbTEsw==
X-CSE-MsgGUID: do97aK4ZT2KvUf2Hd/CtgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="243936360"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.152])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 11:10:53 -0700
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
Subject: [PATCH i-g-t v2 2/3] tests/intel/gem_lmem_swapping: Be more clear
 about subprocesses role
Date: Thu, 12 Mar 2026 19:07:34 +0100
Message-ID: <20260312181032.20485-7-janusz.krzysztofik@linux.intel.com>
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
X-Rspamd-Queue-Id: 652AA2770B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In the smem-oom subtest, helper processes are now spawn with igt_fork(),
not with igt_fork_helper() as one might expect.  That unfortunate use
of igt_fork() may introduce uncertainty about the role of those
subprocesses, whether their failures should count or not.

Use igt_fork_helper() for clarity.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_lmem_swapping.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
index 3a35318a74..f790dc66e9 100644
--- a/tests/intel/gem_lmem_swapping.c
+++ b/tests/intel/gem_lmem_swapping.c
@@ -737,7 +737,9 @@ static void test_smem_oom(int i915,
 	/* smem memory hog processes, respawn till the lmem process completes */
 	igt_fork_helper(&smem_loop[0]) {
 		while (!READ_ONCE(*lmem_done)) {
-			igt_fork(child, 1) {
+			struct igt_helper_process smem_proc = {};
+
+			igt_fork_helper(&smem_proc) {
 				for (int pass = 0; pass < num_alloc; pass++) {
 					if (READ_ONCE(*lmem_done))
 						break;
@@ -749,12 +751,14 @@ static void test_smem_oom(int i915,
 			 * killed by the oom killer, don't call
 			 * igt_waitchildren because of the noise
 			 */
-			wait(NULL);
+			igt_wait_helper(&smem_proc);
 		}
 	}
 	igt_fork_helper(&smem_loop[1]) {
 		while (!READ_ONCE(*lmem_done)) {
-			igt_fork(child, 1) {
+			struct igt_helper_process smem_proc = {};
+
+			igt_fork_helper(&smem_proc) {
 				int fd = drm_reopen_driver(i915);
 
 				for (int pass = 0; pass < num_alloc; pass++) {
@@ -764,7 +768,7 @@ static void test_smem_oom(int i915,
 				}
 				drm_close_driver(fd);
 			}
-			wait(NULL);
+			igt_wait_helper(&smem_proc);
 		}
 	}
 
-- 
2.53.0

