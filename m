Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B400886A4E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAAE10F3C1;
	Fri, 22 Mar 2024 10:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lOEiRnSw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC12410E9B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711103428; x=1742639428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oIypIZaCK9C4MgS2elxR9SzKDb54vkvGwnXUbLrKOOg=;
 b=lOEiRnSwxNe3t8ePw8L4QANcqAGayqCC7AqjOA10DZGL1R2+Kwu4jg3T
 ABldQUCdVuM5VNe9FcJ0hPwJ5roUqjAJVtl+/Q+jOgsDuRs33uvabxpMa
 qpQOi1C9IbGj8u7gqaVMzyQY9UA0iE2gDTcCyWhNo/yW6Zbz3eHljy0HT
 zlUeShlMXWYRPCstaK6zueMZyLcQP1OFaWbsRCB7cBN9D13yEHy+R+6dJ
 tyh7KloWyeDfF506fZT3sH2YKxaXt1I8ve9c0FZJgft3grRD6a9GzWnFs
 EuV5I6H4JpUgYrGL44yj7Ldn3Y5B7Gnx/N0kUEsuqPDMdbuRmA4GBjPW4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17292855"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17292855"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19559332"
Received: from opopa-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.37.152])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 4/5] drm/i915/psr: Enable ALPM on source side for eDP Panel
 replay
Date: Fri, 22 Mar 2024 12:29:59 +0200
Message-Id: <20240322103000.103332-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322103000.103332-1-jouni.hogander@intel.com>
References: <20240322103000.103332-1-jouni.hogander@intel.com>
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

Enable ALPM AUX-Less on source side for Panel Replay eDP. Also write all
calculated AUX-Less configuration values accordingly. Enabling it on sink
side is in upcoming patch.

Bspec: 71477

v5:
  - mention enable is only on source side in commit message
v4:
  - add comment explaining why AUX less is enabled on eDP panel replay
    without any extra checks
v3:
  - do not use alpm_ctl as uninitialized variable
v2:
  - do not set AUX-Wake related bits for AUX-Less case
  - drop switch to active latency
  - add SLEEP_HOLD_TIME_50_SYMBOLS
  - add PORT_ALPM_CTL_MAX_PHY_SWING_HOLD

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 47 ++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9be8bf3fe651..62d16455243f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1721,14 +1721,43 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
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
+	/*
+	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
+	 * check panel support at this point.
+	 */
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
@@ -1996,6 +2025,16 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
+	/* Panel Replay on eDP is always using ALPM aux less. */
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

