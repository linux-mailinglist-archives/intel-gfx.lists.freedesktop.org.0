Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E60529CF0DF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 17:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04DAD10E2D3;
	Fri, 15 Nov 2024 16:01:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ptv1rnbi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2CA10E0A3;
 Fri, 15 Nov 2024 16:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686489; x=1763222489;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XsTeGkmG9i6S6OiNlnKzy5a/WQ30dIM4QBUohrPHpGQ=;
 b=Ptv1rnbiofWKMjJOzE1CF+MFsZ96WScwUAP6wKnrU5ayVdq2tbW2OF2w
 zppokHpdaJyixhsex373RpCR/6BUK1uso33/x4RJIWpSNNe91rzHE3oCi
 RcUddFW/4pg+58GPJXzVo1n5cTxCf4JVrQBMJfA4jZ2Lw9vV3rnRp1UJi
 1fz2hOlZC7qlS1IFYRS+h7fj+SE4l03iX14Pmj0tZ90BZY62dbx3PI/xq
 mj5DAoRV/G7yYbx7s4LYEzNEMZo69uoi5n7vdYLA+CQ5C6s5wkviHlZXK
 xvfPH5/Z460zHNVFZlL8LWCAzAV6vKhqmUEsm23cPV8juec8BvQKXkBAu Q==;
X-CSE-ConnectionGUID: 7slcn0KVTDK6c7rUvJQYIQ==
X-CSE-MsgGUID: 10xRveSaRhifPy60zeJzHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31456777"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31456777"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:01:28 -0800
X-CSE-ConnectionGUID: 5aB7TvDVSGyc6sexrUXG+w==
X-CSE-MsgGUID: CMJb3B75S46386j9M9U7Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88760617"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Nov 2024 08:01:26 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Date: Fri, 15 Nov 2024 21:31:11 +0530
Message-Id: <20241115160116.1436521-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps
to eliminate the else block and make the whole code a lot cleaner.
While we are at it group the initialized variable together.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1a4c1fa24820..a49e8915346e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2857,9 +2857,8 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
-	u32 max_latency = 0;
+	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;
 	u32 clear = 0, val = 0;
-	u32 added_wake_time = 0;
 
 	if (DISPLAY_VER(i915) < 20)
 		return;
@@ -2870,9 +2869,6 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
-	} else {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = 0;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-- 
2.34.1

