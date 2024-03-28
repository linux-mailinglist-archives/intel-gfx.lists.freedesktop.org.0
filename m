Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAC68734B2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 11:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4AF113040;
	Wed,  6 Mar 2024 10:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RnTTivm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0CD113040
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 10:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709721936; x=1741257936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=diV40nr5oRpjQOCH+3dOQKtM+/LWmH6G95hV6ZYUGOg=;
 b=RnTTivm6T16Bzox9o2Mdq3vUFR4D7HKAZUJcNGmVNxdwWoMuk0dFAEWp
 GVI7qe/FK4xGCJ0Ev/wSJ07ONMr3CNbEI6VLq1j+nA4CPkEnkonZ3xE+D
 iqqx6f4a5sYiY3V+tbMT4lohwurCgkl+1P0Z9za4J6L/uongapiNX8PIs
 3pNbXee43WL33wgkbmi5gG7p4qgfDheiWYEGbJtq+nqLF6ca5P7dREKXs
 M9z5Hs1oQ6y8N+qI59dlO0h0KaXcqy3UNwn2ri5dG7jmiBzK0sU0G/n4W
 SEQlHYjRS8nyn5EtkLvfvhRBqFKAL1b2W6OWnApmHiJqEbfwRWgFpnwpp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="26794743"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="26794743"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14206992"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:34 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Date: Wed,  6 Mar 2024 12:45:12 +0200
Message-Id: <20240306104513.2129442-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306104513.2129442-1-jouni.hogander@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Enable ALPM AUX-Less for Panel Replay eDP. Also write all calculated
AUX-Less configuration values accordingly.

Bspec: 71477

v3:
  - do not use alpm_ctl as uninitialized variable
v2:
  - do not set AUX-Wake related bits for AUX-Less case
  - drop switch to active latency
  - add SLEEP_HOLD_TIME_50_SYMBOLS
  - add PORT_ALPM_CTL_MAX_PHY_SWING_HOLD

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 42 +++++++++++++++++++++---
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 738ea623a395..4cd2bad5241f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1697,14 +1697,39 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
+	u32 alpm_ctl;
 
 	if (DISPLAY_VER(dev_priv) < 20)
 		return;
 
-	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder),
-		       ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
-		       ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines) |
-		       ALPM_CTL_EXTENDED_FAST_WAKE_TIME(psr->alpm_parameters.fast_wake_lines));
+	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
+		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
+			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
+			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
+
+		intel_de_write(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
+			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
+			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
+			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
+			       PORT_ALPM_CTL_SILENCE_PERIOD(
+				       psr->alpm_parameters.silence_period_sym_clocks));
+
+		intel_de_write(dev_priv, PORT_ALPM_LFPS_CTL(cpu_transcoder),
+			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
+				       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
+				       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
+				       psr->alpm_parameters.lfps_half_cycle_num_of_syms));
+	} else {
+		alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
+			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(psr->alpm_parameters.fast_wake_lines);
+	}
+
+	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines);
+
+	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
 }
 
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
@@ -1975,6 +2000,15 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
 
+	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
+		intel_de_rmw(dev_priv, ALPM_CTL(cpu_transcoder),
+			     ALPM_CTL_ALPM_ENABLE |
+			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+		intel_de_rmw(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
+			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+	}
+
 	/* Disable PSR on Sink */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
 
-- 
2.34.1

