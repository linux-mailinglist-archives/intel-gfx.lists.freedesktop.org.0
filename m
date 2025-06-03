Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC844ACCDAE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835BD10E676;
	Tue,  3 Jun 2025 19:37:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cw1Xyop1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8F510E677;
 Tue,  3 Jun 2025 19:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979450; x=1780515450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ibVFpXE7fj1Mm92n1YoV0Zs1BC3RkgxFHnpI8JTlf4I=;
 b=cw1Xyop12MHN/YIfiyn3s1QX3YDD+xrrSSUNYAhwq6DJ6fWKaxlowo6Z
 sE77KWXfW/GFc5yebsEE/mg6LTIqVBVQsYxLU0eohdEKjKzrRp6OO5YRL
 N5yaGwlnXMS4XrSqdm/gPWJyH1ai+ME0NEE+qn+nyJxznR2drkUvfMJ4r
 fzeTUcSq0shpbcR8mm1v6CgyIWnYGxQXmNsSxGvrHK44xHa/BKGygVEUl
 1XMg4HcME6Qb1kmOzl0v38M52Dior38yhTjkbBs7eRxgEA41Qm3nu8MOA
 cr7LbiES0m8JD4+fD+WiOEyU5cvLc9VVB7GUJbwH23iMOmjEvG+yJ8AYv A==;
X-CSE-ConnectionGUID: jUXOttrjSTKSxGlZOIaPpg==
X-CSE-MsgGUID: DCKGreDcQGCA7eitsBq3nQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50276054"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50276054"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:29 -0700
X-CSE-ConnectionGUID: 1JuBDuo7SGWiDk6Lqfo/8Q==
X-CSE-MsgGUID: w7revRtqRnexo8PPervTHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844823"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:27 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 16/17] drm/i915/display: Add function to configure
 PIPEDMC_EVT_CTL
Date: Wed,  4 Jun 2025 01:05:21 +0530
Message-ID: <20250603193522.2567092-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Configure PIPEDMC_EVT_CTL_3 register with required event flags.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c |  8 ++++++--
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 13652dd1ed2a..7c55334814e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -618,6 +618,26 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
 }
 
+void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
+					     enum pipe pipe, bool enable)
+{
+	u32 val;
+
+	if (enable)
+		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
+			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
+			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				       PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER);
+	else
+		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				     DMC_EVENT_FALSE) |
+		      REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				     DMC_EVT_CTL_TYPE_EDGE_0_1);
+
+	intel_de_write(display, PIPEDMC_EVT_CTL_3(pipe), val);
+}
+
 /**
  * intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank() - start of PKG
  * C-state exit
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 12912e80bbc6..e7a46e00caf1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -22,6 +22,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
+					     enum pipe pipe, bool enable);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9cc6898399e4..068fa7e792ed 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -687,8 +687,10 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 
-	if (crtc_state->vrr.dc_balance.enable)
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
 		intel_pipedmc_dcb_enable(NULL, crtc);
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -702,8 +704,10 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	if (old_crtc_state->vrr.dc_balance.enable)
+	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
+		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, false);
+	}
 
 	ctl = trans_vrr_ctl(old_crtc_state);
 	if (intel_vrr_always_use_vrr_tg(display))
-- 
2.48.1

