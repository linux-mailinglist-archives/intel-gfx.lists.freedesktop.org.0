Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65341856016
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 11:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA5810E57F;
	Thu, 15 Feb 2024 10:50:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzextqTT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F25010E5C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 10:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994213; x=1739530213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R4PPcQL9EpjkXxEkgdzSizxrFr9Xw8kBDv/ORTw2PBE=;
 b=fzextqTTyksPAyG07HeMAoRHA6gpwzThrz6ZfS4JDiJUKJdA7EdLki6/
 4hW8uRrd/460A1949BA6R0EVCoa5e/r7P2kL9k5EVcECmb6+Kr9XVq6jg
 eA/Ge8yMKWOqpkscP0FTMbDznP9VLawNtnHIipBhiz1Gd7qzZn/OftAdS
 K+mq7YbM0qMHM5PO48+tRBxJ9V/Lrfaoa7j1OpYzLKmaRv+zqF9MYX4u1
 AUjRTtGSK85bARpbzjSyUaSP/iBlw1BLwlRGrTXdkWhEJVXxRojaaBlJX
 S7Bcxw3ORWFX3QpTn5XD3vD5NKDXocU6cP73iysnt5iofRPIXurb94nob g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2219025"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2219025"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="26653252"
Received: from marquiz-desk-2.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.63])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:11 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Date: Thu, 15 Feb 2024 12:49:34 +0200
Message-Id: <20240215104934.2395239-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240215104934.2395239-1-jouni.hogander@intel.com>
References: <20240215104934.2395239-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 42 +++++++++++++++++++++---
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8385d8172b27..a7faea61952e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1705,14 +1705,39 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
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
+	alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
+		ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines) |
+		ALPM_CTL_EXTENDED_FAST_WAKE_TIME(psr->alpm_parameters.fast_wake_lines);
+
+	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
+		alpm_ctl |= ALPM_CTL_ALPM_ENABLE | ALPM_CTL_ALPM_AUX_LESS_ENABLE;
+
+		intel_de_write(dev_priv, ALPM_CTL2(cpu_transcoder),
+			       ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(
+				       psr->alpm_parameters.switch_to_active_lines));
+
+		intel_de_write(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
+			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
+			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
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
+	}
+
+	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
 }
 
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
@@ -1983,6 +2008,15 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
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

