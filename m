Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 082E58B293E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 21:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DF011A85E;
	Thu, 25 Apr 2024 19:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VmXZTdwv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B3D11A85E;
 Thu, 25 Apr 2024 19:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714075125; x=1745611125;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7h9dLQkm9AjCA6Swx0eMgfYl6KwtlI17j2cchz9J+lI=;
 b=VmXZTdwvFHkv6p87Dmkh7HSNz+0wx61ubqf18cRZEGX7wAIEQ38naMOr
 3VaXJ3JyzZV9wKBN2VpnSzpd6SMAmve8WNbEgrmJpIYpxf1S5gJDECifE
 KkmQj+VzeVoA3IZHjQ8es0EpzcGW3r9HLEuRh/UfXslr/mcdLHAFCzjZg
 aZ0tPXSWcEEqvK8XnO8Q7I3kTy7TLXWf71RUs15BxyPtouZ0Zv/TXwevI
 U4cSC2mkL8fOsmlSuJOYwCwrRdIk/c5s0UbGuXisEJ6ZyHqwne8hqoHSF
 1TO5ivEcgTiFl43Hc3Avf6LMREX/vzI/bFmZmf1dtgUqlq+akRd+VQEsB g==;
X-CSE-ConnectionGUID: C2NrNAYaTCyARzoYQ4kAkg==
X-CSE-MsgGUID: Bdaao/ReTb2FlzfJNjkh+A==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9953271"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; 
   d="scan'208";a="9953271"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 12:58:41 -0700
X-CSE-ConnectionGUID: QNzIYkLtQH2+oY8aTTpgwA==
X-CSE-MsgGUID: gc+YeLQ9Qnq6BfGvEbn5Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="29832539"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 25 Apr 2024 12:58:37 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH i-g-t] tests/intel/xe_gt_freq: Check for RPe freq updates
Date: Thu, 25 Apr 2024 12:56:57 -0700
Message-Id: <20240425195657.3638599-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
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

Pcode can dynamically update RPe frequency. Use the latest value
in tests that check it.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_gt_freq.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
index c12f6c52c..5c6373016 100644
--- a/tests/intel/xe_gt_freq.c
+++ b/tests/intel/xe_gt_freq.c
@@ -186,6 +186,9 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
 		igt_assert(get_freq(fd, gt_id, "act") == rpn);
 	}
 
+	/* Refresh value of rpe, pcode could have adjusted it */
+	rpe = get_freq(fd, gt_id, "rpe");
+
 	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
 	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
@@ -268,6 +271,10 @@ static void test_freq_low_max(int fd, int gt_id)
 	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
 	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
+
+	/* Refresh value of rpe, pcode could have adjusted it */
+	rpe = get_freq(fd, gt_id, "rpe");
+
 	igt_assert(get_freq(fd, gt_id, "cur") == rpe);
 
 	if (!xe_is_gt_in_c6(fd, gt_id))
-- 
2.38.1

