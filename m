Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996B46B2DE8
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 20:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D6310E282;
	Thu,  9 Mar 2023 19:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06ACE10E291;
 Thu,  9 Mar 2023 19:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678391241; x=1709927241;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QNRyohcUWfAApJ52W2P5MEQDC5KvZN/WM8PfKBjAF2c=;
 b=HcL2UHzk+wXbT9KOafHwS+P8/N6ClnJKI+0EVR6djSYdVvMIyQsK//JY
 voxEw91HBNEZzQl7lXidJfFhNCNBFwEs59ErYylgkkTIr67SAAzwcgwlu
 EIMirDwPY+5iRRea4lxXgUCTomUobmUv6Rnm4UfqInP47W1P59MbTSdU7
 VRj+x0P/jsCAnFe68wcpEURFzaLyHSZtVCz4B1C5wUqt5N7hf/9lnWmKg
 1EDBtm85eno2KLiXYnm8cYfFUdP72oeEa4i54zNJ07MwCzDwAR/KlI1Pl
 XjeEW9kNa9Axje8VGuhLCg2UsKRT+0BIvL/qAAeSuvf5Ty6JAO0Y4rmBN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338916669"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="338916669"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 11:47:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="787726472"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="787726472"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga002.fm.intel.com with ESMTP; 09 Mar 2023 11:47:14 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu,  9 Mar 2023 11:48:41 -0800
Message-Id: <20230309194841.241213-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] gem_ctx_freq: Remove reference to
 non-existent sysfs entry
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

The entry for gt_idle_freq_mhz does not exist.

Fixes: d1ea62b3f759 (igt: Add gem_ctx_freq to exercise requesting freq via sysfs)

Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/gem_ctx_freq.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/tests/i915/gem_ctx_freq.c b/tests/i915/gem_ctx_freq.c
index a29fe68b..18e736c7 100644
--- a/tests/i915/gem_ctx_freq.c
+++ b/tests/i915/gem_ctx_freq.c
@@ -174,10 +174,8 @@ static void restore_sysfs_freq(int sig)
 {
 	char buf[256];
 
-	if (igt_sysfs_read(sysfs, "gt_RPn_freq_mhz", buf, sizeof(buf)) > 0) {
-		igt_sysfs_set(sysfs, "gt_idle_freq_mhz", buf);
+	if (igt_sysfs_read(sysfs, "gt_RPn_freq_mhz", buf, sizeof(buf)) > 0)
 		igt_sysfs_set(sysfs, "gt_min_freq_mhz", buf);
-	}
 
 	if (igt_sysfs_read(sysfs, "gt_RP0_freq_mhz", buf, sizeof(buf)) > 0) {
 		igt_sysfs_set(sysfs, "gt_max_freq_mhz", buf);
-- 
2.38.1

