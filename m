Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A9B9CD5AC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 04:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4738D10E2C4;
	Fri, 15 Nov 2024 03:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bw5bZ2xa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D398E10E2C4;
 Fri, 15 Nov 2024 03:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731639726; x=1763175726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JYhpIv5+VoQpaf0KDbgbFIGSXr9J65z9qyXHqoNe10A=;
 b=Bw5bZ2xa9O7wBRiYr9qlcyffZdOAjOCSNM3F9mt1hCUw91TtI8Dye39O
 AG82fJsd0xVzwoKUmpZACRDfPiJ2ynLIsCNbwKD9PGl4zvNycmNvFhpqb
 YoyeAD5GQ1kPKgVfn8FaQAOwtX5uvnGMmq3+0LDSHo9cM7TivOuQLih5E
 uCfxVbnIMMzC7pX/Eij9pxE2s1OdOEMxWQVBTAKKEiAFP13PduYmbyj0f
 JFWycdqLe7xpGt29/C8qFRfIRSXSuENcqjYtitmwU6Ja6OioF2B5+cKJB
 upL1N3bUsUKc6eL/Jv63HJbxPGNW7Pc1buNsDn+Wjc88ctCV8n5419S1Q g==;
X-CSE-ConnectionGUID: r7iehxWPQMuTOq2XceMjfw==
X-CSE-MsgGUID: OR/6hPEkRZGAml5ZDCjCQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31536633"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="31536633"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 19:02:06 -0800
X-CSE-ConnectionGUID: PNMmPykhQPW3noqqp53acA==
X-CSE-MsgGUID: npy6SzZOTMGHDxgMMDCt1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="88813033"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa007.jf.intel.com with ESMTP; 14 Nov 2024 19:02:04 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Date: Fri, 15 Nov 2024 08:31:53 +0530
Message-Id: <20241115030153.1418606-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241115030153.1418606-1-suraj.kandpal@intel.com>
References: <20241115030153.1418606-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_wm.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index d893403ff611..c8ba7cc342a4 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -157,8 +157,9 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 latency = LNL_PKG_C_LATENCY_MASK;
 	u32 added_waketime = 0;
+	u32 max_linetime = 0;
 	bool fixed_refresh_rate = false;
 	u32 clear, val;
 	int i;
@@ -171,18 +172,29 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state,
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

