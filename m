Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2CA93BC12
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 07:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE77110E729;
	Thu, 25 Jul 2024 05:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0GNlzag";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2CB10E723
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 05:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721885811; x=1753421811;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P49kyD/SCutTvKuaKIeN9+psil29LoIhcRhOdrpc97o=;
 b=M0GNlzagzej/nAuENUAWyanyBDVwOctn68X44vdw3EtHFfHHlPpcuH7l
 fem9cXy25BgftKIC6fObyLUO9d1AXemF0d45OHmU02/JWe90cvKbI7v+a
 fsg++jx0vh7HcJR/e5ilSb4aU2f251bhB8Q1WLQfaZWhzgFshLEfqjVel
 g1TbM1PkE+gf+c95SXVgRIBepoocuu3HzAtBnfjg5LQMtmUQUq0ltwmfx
 oc5ZzII5IKLT1S95Fr/joyX5keXA1iFFC/fSxfhehBetF5vfOll0rVXyZ
 BREVzfIAjEOihC0ObQFeLRxHDjdy8U2F5LODjITAbpYWPiugZ/Xc+uO8X Q==;
X-CSE-ConnectionGUID: 4LOMg+ugTfSpAvXrB9YqAQ==
X-CSE-MsgGUID: WDOi8e9gQ4e8fSmYyuSAtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19451140"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="19451140"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 22:36:51 -0700
X-CSE-ConnectionGUID: QbIOacBGRX+BB/fHvjDhng==
X-CSE-MsgGUID: 4Ar/4i+PSzWy6EQJPmpLWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="52679889"
Received: from bommu-optiplex-5060.iind.intel.com ([10.145.169.63])
 by fmviesa008.fm.intel.com with ESMTP; 24 Jul 2024 22:36:49 -0700
From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
Subject: [PATCH i-g-t] tests/core_setmaster: Change break to continue in
 tweak_perm function
Date: Thu, 25 Jul 2024 11:07:56 +0530
Message-Id: <20240725053756.1420109-1-krishnaiah.bommu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Existing userspace assumes there's no gaps card’s, but I see cards
are not continues, after running “gta@core_hotunplug I am not seeing card0,
hence test is failing.

Test result before this changes:
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools#
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools# cat /sys/class/drm/
card0/      renderD128/ version
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools# ./core_setmaster --r master-drop-set-user
IGT-Version: 1.28-NO-GIT (x86_64) (Linux: 6.10.0-rc7-xe x86_64)
Using IGT_SRANDOM=1721882790 for randomisation
Starting subtest: master-drop-set-user
Opened device: /dev/dri/card0
Subtest master-drop-set-user: SUCCESS (0.066s)
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools#
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools# ./core_hotunplug --r hotrebind-lateclose
IGT-Version: 1.28-NO-GIT (x86_64) (Linux: 6.10.0-rc7-xe x86_64)
Using IGT_SRANDOM=1721882819 for randomisation
Opened device: /dev/dri/card0
Starting subtest: hotrebind-lateclose
Opened device: /dev/dri/renderD128
Unloaded audio driver snd_hda_intel
Realoading snd_hda_intel
Opened device: /dev/dri/card1
Opened device: /dev/dri/renderD129
Subtest hotrebind-lateclose: SUCCESS (2.721s)
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools#
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools#
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools#
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools# cat /sys/class/drm/
card1/      renderD129/ version
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools# ./core_setmaster --r master-drop-set-user
IGT-Version: 1.28-NO-GIT (x86_64) (Linux: 6.10.0-rc7-xe x86_64)
Using IGT_SRANDOM=1721882840 for randomisation
Starting subtest: master-drop-set-user
(core_setmaster:4366) CRITICAL: Test assertion failure function check_drop_set, file ../tests/core_setmaster.c:85:
(core_setmaster:4366) CRITICAL: Failed assertion: master != -1
(core_setmaster:4366) CRITICAL: Last errno: 2, No such file or directory
(core_setmaster:4366) CRITICAL: error: -1 == -1
Stack trace:
  #0 [__igt_fail_assert+0x10a]
  #1 [check_drop_set+0x70]
  #2 [__igt_unique____real_main145+0x355]
  #3 [main+0x2d]
  #4 [__libc_init_first+0x90]
  #5 [__libc_start_main+0x80]
  #6 [_start+0x2e]
child 0 failed with exit status 98
Subtest master-drop-set-user failed.
No log.
Subtest master-drop-set-user: FAIL (0.019s)
root@DUT1523LNL:/usr/local/libexec/igt-gpu-tools#

Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Emil Velikov <emil.l.velikov@gmail.com>
Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
---
 tests/core_setmaster.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/core_setmaster.c b/tests/core_setmaster.c
index 9c2083f66..c02eaf671 100644
--- a/tests/core_setmaster.c
+++ b/tests/core_setmaster.c
@@ -116,9 +116,9 @@ static unsigned tweak_perm(uint8_t *saved_perm, unsigned max_perm, bool save)
 	for (i = 0; i < max_perm; i++) {
 		snprintf(path, sizeof(path), "/dev/dri/card%u", i);
 
-		/* Existing userspace assumes there's no gaps, do the same. */
+		/* Existing userspace assumes there is a gaps, hence continues. */
 		if (stat(path, &st) != 0)
-			break;
+			continue;
 
 		if (save) {
 			/* Save and toggle */
-- 
2.25.1

