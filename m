Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F7AA6D848
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 11:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A621A10E142;
	Mon, 24 Mar 2025 10:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sj7HM4kC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF0B10E142;
 Mon, 24 Mar 2025 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742812261; x=1774348261;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F/gtrHv0hhh35NKkPr+JNlANTzr3iGo/QJvAVc9VDeQ=;
 b=Sj7HM4kCoND5R/al92u3/fsb/QwZerOzGzdslyx8SO8oO5ozbbn4UsRy
 dVMVfTKW5Fg2w7sIieA6ryeTx6mAQnni4XcYnxGrfkH9td5sNs1s/hGcq
 gicrBp2LxLcZcq9wpW+WX8xQGL7XHAK/tNR1aAE0EflGmSTZWUycqryQP
 3SXsedWgEE5LYZFPS3utSFFKsvDIIGhQ1vmRPPBSWZjJDYftLI2DGyL00
 gOxwocpDYvQFi08sZNzhIOqUR+RcBC4tuaL9CF2/JgTxD7nKSM4Ml0DAt
 PeE5+8k7P+vBbDkTKyUUvP/HRxnWvNOuxqLcA922yMuXtl50W00cXXVil Q==;
X-CSE-ConnectionGUID: Kl+T20qyTwSwd/aaT2UGtA==
X-CSE-MsgGUID: IIsKkRD4RM+tt/C2VENDsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="43938892"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="43938892"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 03:30:56 -0700
X-CSE-ConnectionGUID: ZriTKwddQgK9N97t+dKtsw==
X-CSE-MsgGUID: N+tqTA0IQG2qu/MCtvrQjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124460793"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 24 Mar 2025 03:30:53 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/display: Read panel replay source status through
 PSR2 status register
Date: Mon, 24 Mar 2025 15:38:23 +0530
Message-Id: <20250324100823.3111564-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

PTL onwards get panel replay status from PSR2 status register
instead of SRD status.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 50a22cd8d84a..708fbcfa9089 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3635,8 +3635,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
-					  intel_dp->psr.panel_replay_enabled)) {
+	if ((intel_dp_is_edp(intel_dp) || DISPLAY_VER(display) >= 30) &&
+	    (intel_dp->psr.sel_update_enabled || intel_dp->psr.panel_replay_enabled)) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.29.0

