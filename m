Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7F6CD8710
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 09:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23ECE10E1C0;
	Tue, 23 Dec 2025 08:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cQP4bqbW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA7610E19E;
 Tue, 23 Dec 2025 08:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766477790; x=1798013790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3/gTHv6yE0PKfjpTPbM13BlaHn+ESkKfwhLeSKmRQzQ=;
 b=cQP4bqbWfdghapRa+FHCkq+osiVkgvUYhCUSxvkLyCvakVuvMW2BLICA
 2FZKYfp+NRLVolbxnbibb7OQd6B+WIg4I8dRxcVPYkK3/3GeekiHusMJ8
 lTsgMB6vjMf6fRQRKNi0DgYXwp8brocYLhJ7WSjHQhUdVFCQO9PTqxKq7
 Emkw7GBxDlpdqVELJszyHdbz6SuUXXf6m32SxbmId0fGJPrt94NBWgEVH
 +aOz/MJ3kmVuSN41NGGxFbs821KZlzSOsXqwSWI1465hZH0bej2uNVkU6
 xHgBtkKg7fx0MEMQDNKnowYTP7nPm8PCIkr5/v70kAjmDLh5a/4UjetuV w==;
X-CSE-ConnectionGUID: mnW/upGnSWeJwtJhkXhN5w==
X-CSE-MsgGUID: 24U6WOyeR12b23vWDATB/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68081706"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68081706"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 00:16:30 -0800
X-CSE-ConnectionGUID: bK4uF+fARm69Spgu/241vQ==
X-CSE-MsgGUID: s0pLaLnUSx6fSfCTMdVL/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204224381"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 23 Dec 2025 00:16:29 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Common wrapper for casf and pfit
Date: Tue, 23 Dec 2025 13:43:00 +0530
Message-Id: <20251223081300.1196417-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251223081300.1196417-1-nemesa.garg@intel.com>
References: <20251223081300.1196417-1-nemesa.garg@intel.com>
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

Make a common wrapper for pipe_scaling and sharpness
which will be invoked from hsw_crtc_enable and
pipe_fastset. Then accoridng to the condition
pfit_enable or casf_enable or casf_update_strength
can be invoked. This is done so that all pipe
related functions can be under one umberalla.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 ++++------------
 drivers/gpu/drm/i915/display/skl_scaler.c    | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  3 ++
 3 files changed, 37 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 568730ffe359..ddab4a1417ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -991,15 +991,6 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
-static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
-				const struct intel_crtc_state *old_crtc_state)
-{
-	if (!new_crtc_state->hw.active)
-		return false;
-
-	return is_enabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
-}
-
 static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
 				 const struct intel_crtc_state *new_crtc_state)
 {
@@ -1679,7 +1670,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			glk_pipe_scaler_clock_gating_wa(pipe_crtc, true);
 
 		if (DISPLAY_VER(display) >= 9)
-			skl_pfit_enable(pipe_crtc_state);
+			skl_scaler_enable(state, crtc);
 		else
 			ilk_pfit_enable(pipe_crtc_state);
 
@@ -6635,7 +6626,8 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 	}
 }
 
-static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
+static void intel_pipe_fastset(struct intel_atomic_state *state,
+		const struct intel_crtc_state *old_crtc_state,
 			       const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_display *display = to_intel_display(new_crtc_state);
@@ -6653,8 +6645,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 
 	/* on skylake this is done by detaching scalers */
 	if (DISPLAY_VER(display) >= 9) {
-		if (new_crtc_state->pch_pfit.enabled)
-			skl_pfit_enable(new_crtc_state);
+			skl_scaler_enable(state, crtc);
 	} else if (HAS_PCH_SPLIT(display)) {
 		if (new_crtc_state->pch_pfit.enabled)
 			ilk_pfit_enable(new_crtc_state);
@@ -6706,7 +6697,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			bdw_set_pipe_misc(NULL, new_crtc_state);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
-			intel_pipe_fastset(old_crtc_state, new_crtc_state);
+			intel_pipe_fastset(state, old_crtc_state, new_crtc_state);
 	}
 
 	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
@@ -6805,11 +6796,6 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
-	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
-		intel_casf_enable(new_crtc_state);
-	else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
-		intel_casf_update_strength(new_crtc_state);
-
 	intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index abd951f7dd71..19a9c4a0da0a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -752,6 +752,19 @@ static void skl_scaler_setup_filter(struct intel_display *display,
 	}
 }
 
+#define is_enabling(feature, old_crtc_state, new_crtc_state) \
+        ((!(old_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)) && \
+         (new_crtc_state)->feature)
+
+static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
+                                const struct intel_crtc_state *old_crtc_state)
+{
+        if (!new_crtc_state->hw.active)
+                return false;
+
+        return is_enabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
+}
+
 #define CASF_SCALER_FILTER_SELECT \
 	(PS_FILTER_PROGRAMMED | \
 	PS_Y_VERT_FILTER_SELECT(0) | \
@@ -859,6 +872,22 @@ void skl_pipe_scaler_setup(const struct intel_crtc_state *crtc_state,
 			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
 }
 
+void skl_scaler_enable(struct intel_atomic_state *state,
+                       struct intel_crtc *crtc)
+{
+        struct intel_crtc_state *new_crtc_state =
+                intel_atomic_get_new_crtc_state(state, crtc);
+        struct intel_crtc_state *old_crtc_state =
+                intel_atomic_get_old_crtc_state(state, crtc);
+
+       if (new_crtc_state->pch_pfit.enabled)
+               skl_pfit_enable(new_crtc_state);
+       else if (intel_casf_enabling(new_crtc_state, old_crtc_state))
+                intel_casf_enable(new_crtc_state);
+       else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
+                intel_casf_update_strength(new_crtc_state);
+}
+
 void
 skl_program_plane_scaler(struct intel_dsb *dsb,
 			 struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 94bde5d1c06a..3d49836334b7 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -40,6 +40,9 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
 
 void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state);
 
+void skl_scaler_enable(struct intel_atomic_state *state,
+                       struct intel_crtc *crtc);
+
 enum drm_mode_status
 skl_scaler_mode_valid(struct intel_display *display,
 		      const struct drm_display_mode *mode,
-- 
2.25.1

