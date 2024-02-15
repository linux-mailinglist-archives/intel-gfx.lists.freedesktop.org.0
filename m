Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6199885600F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 11:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8AF10E4B7;
	Thu, 15 Feb 2024 10:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QxzxJrWf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A3310E4B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 10:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994208; x=1739530208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z6HlWJ1+AyL3u2w3pPwetMm1gCwSZ0zMVMpAZt3EMTg=;
 b=QxzxJrWfNUiAZl8F3IFwZUZD08JUZFGqsCbeQdDGiNjrrOtoVj3YDzw7
 nZlOdRMeBiV1eyWN5IXOEfk9c9QWGZC8Ek4vPzntOqZVfnbxyuw8ZNnZo
 HhFddL31YWKKmeiNn4QWeBr6gg3UlOltkMtWeMA27seXB7pT+PH2Kd9Zn
 OjFtp65P3J09gpAPx7J0UtsxV6r6IY5VotHf2ApbdDg3H5xXeb6N9X+w1
 U3tjK9bnHHWbPbxyyDR/OvAt0Oa4uxpcoYzzKRF9gM2W/0+0GdN+hPVxE
 D1nRjk2JX9st1s2vhPt57+N8lPI7QRx0/bmVhnirh4KjOa3ZQ+7+aVCGq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2219013"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2219013"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="26653235"
Received: from marquiz-desk-2.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.63])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/6] drm/i915/psr: Calculate aux less wake time
Date: Thu, 15 Feb 2024 12:49:30 +0200
Message-Id: <20240215104934.2395239-3-jouni.hogander@intel.com>
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

Calculate aux less wake time and store it into alpm_params struct

Bspec: 71477

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 53 +++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0d4012097db1..a531c1e5af20 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1721,6 +1721,7 @@ struct intel_psr {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72cadad09db5..b139db67df55 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1126,6 +1126,56 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+/*
+ * AUX-Less Wake Time = CEILING( ((PHY P2 to P0) + tLFPS_Period, Max+
+ * tSilence, Max+ tPHY Establishment + tCDS) / tline)
+ * For the "PHY P2 to P0" latency see the PHY Power Control page
+ * (PHY P2 to P0) : https://gfxspecs.intel.com/Predator/Home/Index/68965
+ * : 12 us
+ * The tLFPS_Period, Max term is 800ns
+ * The tSilence, Max term is 180ns
+ * The tPHY Establishment (a.k.a. t1) term is 50us
+ * The tCDS term is 1 or 2 times t2
+ * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
+ * Number ML_PHY_LOCK = ( 7 + CEILING( 6.5us / tML_PHY_LOCK ) + 1)
+ * Rounding up the 6.5us padding to the next ML_PHY_LOCK boundary and
+ * adding the "+ 1" term ensures all ML_PHY_LOCK sequences that start
+ * within the CDS period complete within the CDS period regardless of
+ * entry into the period
+ * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
+ * TPS4 Length = 252 Symbols
+ */
+static int _lnl_compute_aux_less_wake_time(int port_clock)
+{
+	int tml_phy_lock = 1000 * 252 * (10 / port_clock);
+	int num_ml_phy_lock = 7 + DIV_ROUND_UP(6500, tml_phy_lock) + 1;
+
+	return DIV_ROUND_UP(12 * 1000 + 800 + 180 + 50 * 1000 +
+			    num_ml_phy_lock * tml_phy_lock, 1000);
+}
+
+static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
+					     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int aux_less_wake_time, aux_less_wake_lines;
+
+	aux_less_wake_time =
+		_lnl_compute_aux_less_wake_time(crtc_state->port_clock / 1000);
+	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+						       aux_less_wake_time);
+
+	if (aux_less_wake_lines > 32)
+		return false;
+
+	if (i915->display.params.psr_safest_params)
+		aux_less_wake_lines = 32;
+
+	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
+
+	return true;
+}
+
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 				     struct intel_crtc_state *crtc_state)
 {
@@ -1142,6 +1192,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	if (check_entry_lines > 15)
 		return false;
 
+	if (!_lnl_compute_aux_less_alpm_params(intel_dp, crtc_state))
+		return false;
+
 	if (i915->display.params.psr_safest_params)
 		check_entry_lines = 15;
 
-- 
2.34.1

