Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8479985BB80
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 13:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3515510E392;
	Tue, 20 Feb 2024 12:11:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fh3LNEWw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E480510E229
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708431086; x=1739967086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=04ElnKqmNzw+9kQ7NvBY1ElfV6+28vJd/irZ3d+7n00=;
 b=Fh3LNEWwLgUA02z4kFbjvgBwpgog83NT504e1PRmYmUAuYlJwZjsSULC
 jb/fa5IWdTtGklsDT3M3SOfe9LmrveAXytBLLTCFr1yhaU8+9LqDHvxYZ
 Igh8V9k45gnv8Elwq2Km0IBnqVBxi3cbD8De0PKHROnudnjJZz7hrz0Me
 IVh8BG3IQYYGTQWe0Mf6q4ZIF60FgwlEmzU0QDjqu6NOLfkohfXpv3JQv
 dXrpNMnngWWWl2xmWeFXJwSywQ7U0evMhUQujWXgNP2htcWB4do3TJxVk
 Pp9h2R6H05irSOUXcWpnHr8QR75Hrd/y/XVvGKNqJVYiLEGecDtyfmKKU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="24987095"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="24987095"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="9378170"
Received: from sbeleaga-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.43.237])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Date: Tue, 20 Feb 2024 14:10:44 +0200
Message-Id: <20240220121045.2156004-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220121045.2156004-1-jouni.hogander@intel.com>
References: <20240220121045.2156004-1-jouni.hogander@intel.com>
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

v2:
  - do not set AUX-Wake related bits for AUX-Less case
  - drop switch to active latency
  - add SLEEP_HOLD_TIME_50_SYMBOLS
  - add PORT_ALPM_CTL_MAX_PHY_SWING_HOLD

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

remove _SWITCH_TO_ACTIVE_LATENCY
add SLEEP_HOLD_TIME_50_SYMBOLS
add PORT_ALPM_CTL_MAX_PHY_SWING_HOLD

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 42 +++++++++++++++++++++---
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a269e3c10db9..bf410c4890f4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1696,14 +1696,39 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
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
+		alpm_ctl |= ALPM_CTL_ALPM_ENABLE |
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
@@ -1974,6 +1999,15 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
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

