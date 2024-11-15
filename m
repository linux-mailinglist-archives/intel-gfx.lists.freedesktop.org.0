Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5769CF0E5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 17:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 511BA10E89C;
	Fri, 15 Nov 2024 16:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="USDPnuAi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E586210E89C;
 Fri, 15 Nov 2024 16:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686498; x=1763222498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HnvNyW83vnR1u742cR3NbEhbF/azV2wphvRD2WiYpn0=;
 b=USDPnuAiLwQvEGYuJIt0m2B/VhKSu3YFrgGbdFvqAWjh8eOA27qMy3bW
 exVbl6m724DLU3MyD4iO5JXyxBwnXV58OMA31aCAli+nyGl0CjakJ+G2P
 EOOMyngPJYQY9xvOx/HwLFWTFbdEI9ySyZiZEm97m79eC0r2HdDFCKFdA
 H/H2/xBo7akIEmCaUcARST3QPiLkmjjc9+YyCFLq5ESDqdeHBEKl5y4md
 VWZgDSgRfvQ5hMA1oY21OhS9d5ZdMnbAuXwQMjCae/CFRnNfUv9l4fFw4
 03sP3DqQ/JEUogm9Filp+cXMZM3MTLl1p2pb9t/u5/7n9Raqr0JW7wvT2 Q==;
X-CSE-ConnectionGUID: nLp4Ko0SRKqNASB3hoAFqA==
X-CSE-MsgGUID: JOR7y0c3QvavvtqHky0qKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31456798"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31456798"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:01:38 -0800
X-CSE-ConnectionGUID: lTh8SKypRm6xPJgEiELbWA==
X-CSE-MsgGUID: //Q4MuYkSY+uWT5lDk+cIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88760685"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Nov 2024 08:01:36 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 6/6] drm/i915/wm: Modify latency programmed into PKG_C_LATENCY
Date: Fri, 15 Nov 2024 21:31:16 +0530
Message-Id: <20241115160116.1436521-6-suraj.kandpal@intel.com>
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

Increase the latency programmed into PKG_C_LATENCY latency to be
a multiple of line time which is written into WM_LINETIME.

--v2
-Fix commit subject line [Sai Teja]
-Use individual DISPLAY_VER checks instead of range [Sai Teja]
-Initialize max_linetime [Sai Teja]

--v3
-take into account the scenario when adjusted_latency is 0 [Vinod]

--v4
-rename adjusted_latency to latency [Mitul]
-fix the condition in which dpkgc is disabled [Vinod]

--v5
-Add check to see if max_linetime is 0 [Vinod]

WA: 22020299601
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 0cc843314358..e9a60d54afef 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2861,7 +2861,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;
+	u32 latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0, max_linetime = 0;
 	u32 clear, val;
 	bool fixed_refresh_rate = false;
 	int i;
@@ -2874,18 +2874,28 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
 			fixed_refresh_rate = true;
+
+		max_linetime = max(new_crtc_state->linetime, max_linetime);
 	}
 
 	if (fixed_refresh_rate) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		latency = skl_watermark_max_latency(i915, 1);
+		/* Wa_22020299601 */
+		if (latency) {
+			if ((DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30) &&
+			    max_linetime)
+				latency = max_linetime *
+					DIV_ROUND_UP(latency, max_linetime);
+		} else {
+			latency = LNL_PKG_C_LATENCY_MASK;
+		}
+
 		added_wake_time = DSB_EXE_TIME +
 			display->sagv.block_time_us;
 	}
 
 	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
-- 
2.34.1

