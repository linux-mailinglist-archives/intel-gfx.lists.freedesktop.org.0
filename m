Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA8AF9434
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 15:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA5910EA3F;
	Fri,  4 Jul 2025 13:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jrlLLhBQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2DD10EA3F;
 Fri,  4 Jul 2025 13:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751635919; x=1783171919;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YQt0L8xMsLPSLGxXfwRgnPEsywy0Lj3ZjdQ+30egioA=;
 b=jrlLLhBQV3TXeaJubZ1dh1XpCUkD2hFShAOYzWjdadOlBiNB27S/Nl1c
 MzGFNzImpVIXEy1qyGZ6UBzAc7q3DKtkuXzvQwG0qNBGg5Mn9nMxuwVWo
 57dXXKdNbPReZX04XJHHL1XNDCJMS0uRh2ofsL+Gg8qn9zzRpMDtJgxHA
 /1Wgqm+O0PZjUaNZ8KV2QuLDlk1hg6e41uSFmb0MijfGR4BkjFLVrO0oG
 C3mI2r5OqZNB5tug+DqIioIInfTLSOgDDOSYgnTAap1HE1np+FA4iV8AA
 nwK2MpGGp8Tu5kIH7U0pXePxv+rLzY5ucISHtxhFxVTJTPfVfRuwbF8fq g==;
X-CSE-ConnectionGUID: +9GDf9+FRlihIHO+vuPM9g==
X-CSE-MsgGUID: IKy1ZXvrSkOq7y217ttNQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="53192560"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="53192560"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 06:31:59 -0700
X-CSE-ConnectionGUID: ijqTy9vqRVaYkk8T74EEXw==
X-CSE-MsgGUID: ktu6QrmkT0eu2ggq2BiGPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="160317496"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.73])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 06:31:56 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Petri Latvala <adrinael@adrinael.net>, Arkadiusz Hiler <arek@hiler.eu>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] runner: Relax timeout reduction on soft lockup
Date: Fri,  4 Jul 2025 15:30:35 +0200
Message-ID: <20250704133139.676541-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.50.0
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

In case of soft lockups, it might be helpful from root cause analysis
perspective to see if the test was still able to complete despite
triggering the soft lockup warning, or if that soft lockup seems not
recoverable without killing the test. For that to be possible, igt_runner
should not kill the test too promptly if a soft lockup related kernel
taint is detected.

On kernel taints, igt_runner now decreases per test and inactivity
timeouts by a factor of 10.  Let it check if the taint is caused by a
soft lockup and decrease the timeouts only by the factor of 2 in those
cases.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 runner/executor.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/runner/executor.c b/runner/executor.c
index 13180a0a46..de9d29d28d 100644
--- a/runner/executor.c
+++ b/runner/executor.c
@@ -871,10 +871,14 @@ static const char *need_to_timeout(struct settings *settings,
 	if (settings->abort_mask & ABORT_TAINT &&
 	    is_tainted(taints)) {
 		/* list of timeouts that may postpone immediate kill on taint */
-		if (settings->per_test_timeout || settings->inactivity_timeout)
-			decrease = 10;
-		else
+		if (settings->per_test_timeout || settings->inactivity_timeout) {
+			if (is_tainted(taints) == (1 << 9) && taints & (1 << 14))
+				decrease = 2;	/* only warn + soft lockup */
+			else
+				decrease = 10;
+		} else {
 			return "Killing the test because the kernel is tainted.\n";
+		}
 	}
 
 	if (settings->per_test_timeout != 0 &&
@@ -1526,8 +1530,9 @@ static int monitor_output(pid_t child,
 			sigfd = -1; /* we are dying, no signal handling for now */
 		}
 
+		igt_kernel_tainted(&taints);
 		timeout_reason = need_to_timeout(settings, killed,
-						 igt_kernel_tainted(&taints),
+						 taints,
 						 igt_time_elapsed(&time_last_activity, &time_now),
 						 igt_time_elapsed(&time_last_subtest, &time_now),
 						 igt_time_elapsed(&time_killed, &time_now),
-- 
2.50.0

