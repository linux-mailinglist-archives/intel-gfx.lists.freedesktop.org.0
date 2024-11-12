Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43289C4DF1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 05:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4DC10E55B;
	Tue, 12 Nov 2024 04:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aDEkKJXP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0088410E55B;
 Tue, 12 Nov 2024 04:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731387295; x=1762923295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6A5Q0d03tXyw7k3vdS/Bv8QAWyI6mriczuNxaPsHPMk=;
 b=aDEkKJXPtMpiYv4w7GWiQzC8gSxMqS8lG0SdraLCOWZZCq9Q74fF4xXo
 3ZPKRcKgIT88px8Wod0qmpIDi2MFux6t39+fkYvriIwjwNCSakFrmV5YE
 NCjw1YwXcnrLeFoTgqc/Ul41geKakNy9Yw9nUxvfQ1DNbB0VnjJNTAKNT
 8+8nGhU2Gh97PiZGWVkkzaNDB1vZDeGlnnyWJV1LIVpiyq2q2QIcxUkas
 JpJ+ygMaepiZ7UqBgJgEB4sag48jgFxvwvTf7j+Rcx5Ge++v4g/eEQNCm
 NooHsVBMOkQeHiFWW4qnS/dB8x4r/C9Eckk9emF1pLEmqyVo/6U+g2x5+ g==;
X-CSE-ConnectionGUID: 0wZ9PtpRSoqhi6esOgemrA==
X-CSE-MsgGUID: UiH1S6QKT9+u5cLEAlfc5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42585895"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="42585895"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 20:54:55 -0800
X-CSE-ConnectionGUID: 9Y0frNBsSeCofCgdsSX7aA==
X-CSE-MsgGUID: J2r1VEV6Rda5ftdsL5ym/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87673165"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 11 Nov 2024 20:54:53 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/5] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Date: Tue, 12 Nov 2024 10:24:34 +0530
Message-Id: <20241112045435.1189586-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112045435.1189586-1-suraj.kandpal@intel.com>
References: <20241112045435.1189586-1-suraj.kandpal@intel.com>
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

WA: 22020299601
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 28 +++++++++++++++-----
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4c92ada1c851..71ca89fc2888 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate)
+skl_program_dpkgc_latency(struct drm_i915_private *i915,
+			  bool fixed_refresh_rate,
+			  u32 max_linetime)
 {
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2858,15 +2860,23 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate
 		return;
 
 	if (fixed_refresh_rate) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		latency = skl_watermark_max_latency(i915, 1);
+
+		/* Wa_22020299601 */
+		if (latency) {
+			if (DISPLAY_VER(i915) == 20 || DISPLAY_VER(i915) == 30)
+				latency = max_linetime *
+					DIV_ROUND_UP(latency, max_linetime);
+		} else {
+			latency = LNL_PKG_C_LATENCY_MASK;
+		}
+
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
@@ -2879,6 +2889,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
 	bool fixed_refresh_rate = false;
+	u32 max_linetime = 0;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2908,9 +2919,12 @@ skl_compute_wm(struct intel_atomic_state *state)
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
 		    !new_crtc_state->vrr.enable)
 			fixed_refresh_rate = true;
+
+		max_linetime = max(new_crtc_state->linetime, max_linetime);
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), fixed_refresh_rate);
+	skl_program_dpkgc_latency(to_i915(state->base.dev), fixed_refresh_rate,
+				  max_linetime);
 
 	skl_print_wm_changes(state);
 
-- 
2.34.1

