Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8B0A259E0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E61210E4C2;
	Mon,  3 Feb 2025 12:50:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KOjZkCjw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8022E10E4BF;
 Mon,  3 Feb 2025 12:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587021; x=1770123021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GPu4Zt3LgXY4xe+a9BlsaA8zLAmHNZDSyztqTMuLYvA=;
 b=KOjZkCjwEx6UQGcGkQfobKU3PIsF2smVeJTduU4PiUC8KrVKYu2r0fBE
 h/ftmewwtA6jyDhGSvPpU90Qqhk6oY72jP5f3aLB+7h3ZIWhASIWWm2FR
 4zzx6sdVfvPpAqOxRMsFGhv39c/QpEQculVGooOoco+mrqUoMThOHtEkI
 eCl7FKDfTGXAiVgpfKhC3WucHgoZytFvyepub9GUQkRzUjvNbpicfBR7v
 q3yZklWhbpnzoHeIZZcBX8dUJauRpVMbyyRHAirqARKW6Vidz7RUN5d63
 Cfz6yDuSnTMyPfhRMfntFIuTQi+l95cdNK7mt1fxEG87Zf+ahiQdv+WaU A==;
X-CSE-ConnectionGUID: mrbJ51JbSxuiIN1E71BhMg==
X-CSE-MsgGUID: N5fD1aT1SYq98p7HK1o5Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548081"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548081"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:21 -0800
X-CSE-ConnectionGUID: mvwV6IEwThiQlBmOBrfwZA==
X-CSE-MsgGUID: t5GHE3w/RWuDBRwIw9JDGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528996"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:19 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/28] drm/i915/vrr: Introduce VRR mode Fixed RR
Date: Mon,  3 Feb 2025 18:08:27 +0530
Message-ID: <20250203123840.3855874-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

VRR timing generator can be used even with fixed refresh rate.
With this the legacy timing generator can be phased out and VRR timing
generator can be used for all cases, whether panels support VRR or not.

Add an enum value to represent the VRR timing generator in
fixed refresh rate mode and update the helper vrrtg_mode_str
for printing it.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c    |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h  |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c            | 13 ++++++++++---
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 9f4c88f05f4c..08559c6a5095 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -176,6 +176,7 @@ static const char * const vrrtg_mode_str[] = {
 	[INTEL_VRRTG_MODE_NONE] = "none",
 	[INTEL_VRRTG_MODE_VRR] = "vrr",
 	[INTEL_VRRTG_MODE_CMRR] = "cmrr",
+	[INTEL_VRRTG_MODE_FIXED_RR] = "fixed_rr",
 };
 
 static const char *intel_vrrtg_mode_name(enum intel_vrrtg_mode mode)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 338cfd99e5d3..edf021db0d31 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -939,6 +939,7 @@ enum intel_vrrtg_mode {
 	INTEL_VRRTG_MODE_NONE,
 	INTEL_VRRTG_MODE_VRR,
 	INTEL_VRRTG_MODE_CMRR,
+	INTEL_VRRTG_MODE_FIXED_RR,
 };
 
 struct intel_crtc_state {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2b4376e985f6..1b522af70696 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -583,15 +583,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
-		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
 		crtc_state->vrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 					     TRANS_CMRR_N_HI(display, cpu_transcoder));
 		crtc_state->vrr.cmrr_m =
 			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
 					     TRANS_CMRR_M_HI(display, cpu_transcoder));
-	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
-		crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
 	}
 
 	if (DISPLAY_VER(display) >= 13)
@@ -621,6 +618,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
+	if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
+		if (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE)
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
+		else if (crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
+			 crtc_state->vrr.vmin == crtc_state->vrr.flipline)
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_FIXED_RR;
+		else
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
+	}
+
 	if (intel_vrr_is_enabled(crtc_state))
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.45.2

