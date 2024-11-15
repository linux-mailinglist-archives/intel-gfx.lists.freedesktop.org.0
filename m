Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C579CD721
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 07:36:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4088510E39E;
	Fri, 15 Nov 2024 06:36:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="byi9sgIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BCF10E39E;
 Fri, 15 Nov 2024 06:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731652576; x=1763188576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jUqTmEJVDDG6jsvAiR/8YspM0xar4MB3+M4Sq6CxuYA=;
 b=byi9sgIEBAkHzyIsqOhgLOYeXELRvsHvP5J6LGIvZd0fkT2wEYNmV7+z
 jASYlQLdekvMRexb2PpZVwCRv/WQW/ygxfK4gtGmhswvKqHstSvRCWr8h
 Q2ITPy/IDWVtWgoJjrJI8cfbgN75QrOHxc50Yy9E19SnEu6gAiYYhccmC
 rk9zuit23/yyUmg7gygZBwP1inw9uA4EQ45MCDh3+tu1tx4XIBpJ4Jaqn
 o+dOp+7C2oExIXwJ1hrDjbcqMd6jmSAxbDJzEPoqrHsXPx+kV37lzWZ7y
 fILMw2AFYFtE8Irnr5QkuI7LY35vLHklR3U4wQq30BpgCGkImvDGzNgDz g==;
X-CSE-ConnectionGUID: ajUldSHbR3eHsC6N9k9LJw==
X-CSE-MsgGUID: BsPe9DvQTJOsAOcBgk7Zlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="34513080"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="34513080"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 22:36:04 -0800
X-CSE-ConnectionGUID: kck8jeD6Qf+gUAPgBSNmgw==
X-CSE-MsgGUID: kKgnVxSqTD+jbAobckIUkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="88855968"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 14 Nov 2024 22:36:02 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Modify latency programmed into
 PKG_C_LATENCY
Date: Fri, 15 Nov 2024 12:04:42 +0530
Message-Id: <20241115063440.1422706-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241115063440.1422706-1-suraj.kandpal@intel.com>
References: <20241115063440.1422706-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_wm.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 4a2caf9cb03e..2038e03b7d2c 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -157,7 +157,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_waketime = 0;
+	u32 latency = LNL_PKG_C_LATENCY_MASK, added_waketime = 0, max_linetime = 0;
 	bool fixed_refresh_rate = false;
 	u32 clear, val;
 	int i;
@@ -170,18 +170,29 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
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
+
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
 		added_waketime = DSB_EXE_TIME +
 			display->sagv.block_time_us;
 	}
 
 	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_waketime);
 
 	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
-- 
2.34.1

