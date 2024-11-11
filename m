Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA789C3E74
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A645C10E4A0;
	Mon, 11 Nov 2024 12:33:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VdO5KgwQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5B810E49F;
 Mon, 11 Nov 2024 12:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731328397; x=1762864397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EvXXfbyONgtVlbnex88X2x65RMEVdiknRUUJQ1bVzu4=;
 b=VdO5KgwQ6zzcLVTUfo5RrRJ+01sZYUZUWqN2Mvv9hwMNe3CpWOd8wMVN
 uhHV9V0d/+yBPPh2ZmwENUbUH62I7cLyfDS0/85JG7sqOIP5RyTSjl30s
 NSdY9sFEzj/iLGj4byE7nEBQOko8BkQHw8UO508fgpmhPp9E5ioBRzA5I
 3e+XP5ip778y+sZwnQp83o0sQsky3cOpBxMDWJ2XOwhHvcfzN0WdwYMug
 d0HG5FEyH1rOuxRSG4QuGYoNTLtDHCEMfAumoNtyAYxT03dFRP73IAf9Z
 MgAyDOsYlnHoZr/Ev3/A+PT2I4UEDvXCYQHvuL0E5GQdZhUkRXJFh2g8y Q==;
X-CSE-ConnectionGUID: pmx5BDaxT6OKJDCIQL/Xbg==
X-CSE-MsgGUID: Ql+U/zyJSyGhzvsgSc1LCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35068052"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="35068052"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:33:17 -0800
X-CSE-ConnectionGUID: X0ExlaM1Qu2Nb12J7e1OyQ==
X-CSE-MsgGUID: +nq+W8LSRzyxtogL8cKo4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="117823246"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 11 Nov 2024 04:33:16 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i915/watermark: Use intel_display for dpkgc code
Date: Mon, 11 Nov 2024 18:02:59 +0530
Message-Id: <20241111123259.1072534-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241111123259.1072534-1-suraj.kandpal@intel.com>
References: <20241111123259.1072534-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index e061015a89b0..357eb8630ab3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2852,18 +2852,19 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915,
 			  bool enable_dpkgc,
 			  u32 max_linetime)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	u32 adjusted_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(display) < 20)
 		return;
 
 	if (enable_dpkgc) {
 		adjusted_latency = skl_watermark_max_latency(i915, 1);
 
 		/* Wa_22020299601 */
-		if ((DISPLAY_VER(i915) == 20 || DISPLAY_VER(i915) == 30) &&
+		if ((DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30) &&
 		    adjusted_latency != 0)
 			adjusted_latency = max_linetime *
 				DIV_ROUND_UP(adjusted_latency, max_linetime);
@@ -2871,14 +2872,14 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915,
 			adjusted_latency = LNL_PKG_C_LATENCY_MASK;
 
 		added_wake_time = DSB_EXE_TIME +
-			i915->display.sagv.block_time_us;
+			display->sagv.block_time_us;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
 	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, adjusted_latency);
 	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
-	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
+	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
 }
 
 static int
-- 
2.34.1

