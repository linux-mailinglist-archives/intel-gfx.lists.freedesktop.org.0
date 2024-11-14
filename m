Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D859C81F9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 05:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72F210E79A;
	Thu, 14 Nov 2024 04:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="El0EXgnT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58E810E79A;
 Thu, 14 Nov 2024 04:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731558659; x=1763094659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nWx0i3mCqYpGj7juL3Fo6KgD4dix4Jn5el9XhgGPj9Q=;
 b=El0EXgnT3ZxybdlCib65Ye2jVuLOjuCMgWcsOxP4MB1WFjFVnT/sObIS
 OU0aMAG+mo8R2tQ/JaLWQyf7hyGNuNtIwOl50u0teTJ6vYNuOpe0UXN4h
 dkSw9/NzXnj6xSKv2xruVUrRVPyqEJXWdMDiL1x9aqAYwP34/JxxtYG1a
 S5vtOVNLiLlWCbBS71e132Gc8/c25sXLXAo+G5xEXjj3Xpstnr4wFkR/e
 0tbmokomaIXgEVFfvAY4lDq6gFukqHZPpNFGobTn8s7DyLmjrXP3xO7wR
 OAFcFejtCPnXLRW31Jj95Q24e5zlJhj/PqmuFfkc1300dJGOsRG6ygpyt w==;
X-CSE-ConnectionGUID: VCdxbOWhQ/aR8bAmBrgMKQ==
X-CSE-MsgGUID: sQXpBVGBSou31aDPKxwy/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="31581582"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="31581582"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 20:30:58 -0800
X-CSE-ConnectionGUID: bwV2yYl2TAStUUzcSkrRng==
X-CSE-MsgGUID: MucWUzJyS++05i59pGcBuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="92545752"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 13 Nov 2024 20:30:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Date: Thu, 14 Nov 2024 10:00:41 +0530
Message-Id: <20241114043040.1396947-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241114043040.1396947-1-suraj.kandpal@intel.com>
References: <20241114043040.1396947-1-suraj.kandpal@intel.com>
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
index 620873d1244f..ce11a69b36cc 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -157,9 +157,10 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_waketime = 0;
+	u32 max_linetime = 0;
 	int i;
 	bool fixed_refresh_rate = false;
 
@@ -171,18 +172,29 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state,
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
 		    !new_crtc_state->vrr.enable)
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
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_waketime);
 
 	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
-- 
2.34.1

