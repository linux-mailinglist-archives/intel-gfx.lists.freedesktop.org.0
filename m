Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731649CF0E3
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 17:01:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B35F10E898;
	Fri, 15 Nov 2024 16:01:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqkJekwD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF95210E898;
 Fri, 15 Nov 2024 16:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686494; x=1763222494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dcxyCqhmmB/xtS+6E8n19rUe+6IBt26o+GVJkNp51cI=;
 b=GqkJekwDevPKbmgYGonUZCAta8Wqi4dw6Ra0YQ0LG8pox/ut67U+gCgB
 GgfE93rSxdFtHlzmDUNEbffnU09sgLfNgMuZYuxw6uz4+TOkp+wXJwjmd
 4YHZgZugotNSGhZiExbE7aAsw0gdzZThiDyumrXcMeXMYlfrVj79UUGjg
 VpGVU+KgOH4ybAjYGg5fQKxRoqTT9Q7FZQbql7UmuhFYh7wJC7zr/cMPr
 vhJcc32lsKht5d4CTmLEP5wxY2ZOt8kfR8LS5b2q/z7oqlVLaaehHn2QP
 q2mUD2CXPE/fTMcv2U/4NphPSyEgIA2xzSaHJXu0oTEhUBqDxjjpYtDtD A==;
X-CSE-ConnectionGUID: XKBtze2GQmqf39wn1JWOjA==
X-CSE-MsgGUID: 6kgt5kFfRHux6fuGpLggag==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31456791"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31456791"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:01:34 -0800
X-CSE-ConnectionGUID: E+Y6o2LFRkexG+meLicDNw==
X-CSE-MsgGUID: UIjY540hQjKrT7MohApooQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88760656"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Nov 2024 08:01:32 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/6] drm/i915/wm: Use intel_display structure in DPKGC code
Date: Fri, 15 Nov 2024 21:31:14 +0530
Message-Id: <20241115160116.1436521-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241115160116.1436521-1-suraj.kandpal@intel.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
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

Use intel_display for DPKGC code wherever we can. While we are
at it also use intel_de_rmw instead of intel_uncore_rmw as we
really don't need the internal uncore_rmw_function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9ce3b5580df4..2deb964daed3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2858,10 +2858,11 @@ static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915,
 			  bool fixed_refresh_rate)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;
 	u32 clear, val;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(display) < 20)
 		return;
 
 	if (fixed_refresh_rate) {
@@ -2869,14 +2870,14 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915,
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = DSB_EXE_TIME +
-			i915->display.sagv.block_time_us;
+			display->sagv.block_time_us;
 	}
 
 	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
 	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
-	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
+	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
 }
 
 static int
-- 
2.34.1

