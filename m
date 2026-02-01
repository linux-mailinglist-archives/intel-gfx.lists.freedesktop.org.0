Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KutMAJJsf2l5qQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Feb 2026 16:09:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF98C6406
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Feb 2026 16:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E68B510E031;
	Sun,  1 Feb 2026 15:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zrfp3vIC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B91710E031
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Feb 2026 15:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769958540; x=1801494540;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BSD9QCjz7oTDwmKvpAyHCFzz3CtGBDrjEaG7uhAKRhA=;
 b=Zrfp3vIC6uvRUljjm4o8D0zcnu8YnsdT2A1SlJeTPSV0lO8oHiGymccJ
 48mmJWpikzMjwLldCOxqdlYl1hlS4ONuShcCdEMvv1h9aQyNcF1BVwAYQ
 /0MIW2A14sAzXLDhJLjfEiZgXvS/Os+iRENv2tdW4FzucWO8YEv79bpG8
 aifY1iW3FGUFV498bkSp45A/MKs4eruWSPL8GWKA3ciDLiX53MrikTwj2
 z4s6e8oUJWuX4XaS7bGUz9X8OkPZGsKkwdbBxrMnEHUVAcMcDsp7P+WI0
 eoxdiVYp77jJsJJrxfh4fDx1fZ5bMeh3UrW1fREpThOqAaFUjuXo2ZXDf w==;
X-CSE-ConnectionGUID: UBti6PhsTHyVStOs24e9fA==
X-CSE-MsgGUID: KlImSUW/TDuEMQm8F+Ojdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11688"; a="73739260"
X-IronPort-AV: E=Sophos;i="6.21,267,1763452800"; d="scan'208";a="73739260"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 07:04:58 -0800
X-CSE-ConnectionGUID: EVW0Ca8TTXC4aUPTgw9+Dw==
X-CSE-MsgGUID: GsacML/qRAG4j7XSS0LXKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,267,1763452800"; d="scan'208";a="214205977"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa005.jf.intel.com with ESMTP; 01 Feb 2026 07:04:58 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Thasleem@freedesktop.org, Mohammed <mohammed.thasleem@intel.com>,
	=?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RESEND i-g-t v1] tests/kms_flip: test suspend on one pair of pipes
Date: Sun,  1 Feb 2026 16:03:33 +0100
Message-ID: <20260201150333.2650279-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3BF98C6406
X-Rspamd-Action: no action

Currently, every pair of ({pipe1, pipe2}, {output1, output2}) is being
tested in 2x-* subtests. Since suspend shouldn't be tested per pipe, it
causes unnecessary overhead: with 4 pipes & 4 displays it runs in total
36 tests. Given that each suspend's dynamic subtest can take up to tens
of seconds, total duration of the test easily exceeds timeout.

When testing suspend, for each pair of outputs test only first and last
pipe unless it is said to run on all pipes.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 tests/kms_flip.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index a74e69c6f..dd110aecf 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -1841,8 +1841,8 @@ static void run_test(int duration, int flags)
 	/* Count output configurations to scale test runtime. */
 	for (i = 0; i < resources->count_connectors; i++) {
 		for (n = 0; n < resources->count_crtcs; n++) {
-			/* Limit the execution to 2 CRTCs (first & last) for hang tests */
-			if ((flags & TEST_HANG) && !all_pipes &&
+			/* Limit the execution to 2 CRTCs (first & last) for hang and suspend tests */
+			if (((flags & TEST_HANG) || (flags & TEST_SUSPEND)) && !all_pipes &&
 			    n != 0 && n != (resources->count_crtcs - 1))
 				continue;
 
@@ -1873,8 +1873,8 @@ static void run_test(int duration, int flags)
 		for (n = 0; n < resources->count_crtcs; n++) {
 			int crtc_idx;
 
-			/* Limit the execution to 2 CRTCs (first & last) for hang tests */
-			if ((flags & TEST_HANG) && !all_pipes &&
+			/* Limit the execution to 2 CRTCs (first & last) for hang and suspend tests */
+			if (((flags & TEST_HANG) || (flags & TEST_SUSPEND)) && !all_pipes &&
 			    n != 0 && n != (resources->count_crtcs - 1))
 				continue;
 
@@ -1920,6 +1920,12 @@ static void run_pair(int duration, int flags)
 		for (n = 0; n < resources->count_crtcs; n++) {
 			for (j = i + 1; j < resources->count_connectors; j++) {
 				for (m = n + 1; m < resources->count_crtcs; m++) {
+					/* Limit the execution to 2 CRTCs (first & last) for hang and suspend tests */
+					if (((flags & TEST_HANG) || (flags & TEST_SUSPEND)) && !all_pipes &&
+					    ((n != 0 && n != resources->count_crtcs) ||
+					    m != resources->count_crtcs - 1))
+						continue;
+
 					memset(&o, 0, sizeof(o));
 					o.count = 2;
 					o._connector[0] = resources->connectors[i];
@@ -1965,8 +1971,8 @@ static void run_pair(int duration, int flags)
 					crtc_idxs[0] = n;
 					crtc_idxs[1] = m;
 
-					/* Limit the execution to 2 CRTCs (first & last) for hang tests */
-					if ((flags & TEST_HANG) && !all_pipes &&
+					/* Limit the execution to 2 CRTCs (first & last) for hang and suspend tests */
+					if (((flags & TEST_HANG) || (flags & TEST_SUSPEND)) && !all_pipes &&
 					    ((n != 0 && n != resources->count_crtcs) ||
 					    m != resources->count_crtcs - 1))
 						continue;
-- 
2.45.2

