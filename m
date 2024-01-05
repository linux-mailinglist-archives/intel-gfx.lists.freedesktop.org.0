Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B22C825505
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8888010E642;
	Fri,  5 Jan 2024 14:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4F410E63E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704464122; x=1736000122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bN8GC/Dxm5XvSYwjr0ft3tdqjVDbK0UMLCLU4fSyifw=;
 b=nNvochNhsJyztzroiKz1uy80PP9lyiwgi/qGvzTrP5wnqpj9i7fD7Dj9
 LO7/OvQtIAXYd2J21GCwaka6FBGQ4oKkUdXBMy1I1rppvxSQTm5jBWVa0
 LcCCIKm3lFdiO5/rixNeuEAa3N5WNqFgdVpzo229KPvg+Y+uXy6+ofojo
 VfpjBKTceddXR3FMO1X6zmlCV4+4bFZYnfX8b/kDRQayybz84sAoR2YH8
 XIMH/cVwlHdCXJ8B4xCYnE+MqF7JWMR0spCmizG7rXqhv2jqrVaoAalwl
 buf/UzZQNB1rDlGevlJGWjskVerS44L2YepXJeKig7GlmFeskqedC+P+6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4880529"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4880529"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="22504289"
Received: from oreshotx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.52.142])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:21 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/4] drm/i915/alpm: Calculate ALPM Entry check
Date: Fri,  5 Jan 2024 16:15:03 +0200
Message-Id: <20240105141504.2808991-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240105141504.2808991-1-jouni.hogander@intel.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
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

ALPM Entry Check represents the number of lines needed to put the main link
to sleep and keep it in the sleep state before it can be taken out of the
SLEEP state (eDP requires the main link to be in the SLEEP state for a
minimum of 5us).

Bspec: 71477

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 28 +++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 889a8b34b7ac..7eddef859ff4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1680,6 +1680,9 @@ struct intel_pps {
 struct alpm_parameters {
 	u8 io_wake_lines;
 	u8 fast_wake_lines;
+
+	/* LNL and beyond */
+	u8 check_entry_lines;
 };
 
 struct intel_psr {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1709ebb31215..7fbd18f21c3b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1099,6 +1099,28 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
+				     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct alpm_parameters *alpm_params = &intel_dp->psr.alpm_params;
+	int check_entry_lines;
+
+	/* ALPM Entry Check = 2 + CEILING( 5us /tline ) */
+	check_entry_lines = 2 +
+		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 5);
+
+	if (check_entry_lines > 15)
+		return false;
+
+	if (i915->display.params.psr_safest_params)
+		check_entry_lines = 15;
+
+	alpm_params->check_entry_lines = check_entry_lines;
+
+	return true;
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
@@ -1114,6 +1136,8 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 		 * it is not enough -> use 45 us.
 		 */
 		fast_wake_time = 45;
+
+		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
 	} else {
 		io_wake_time = 50;
@@ -1130,6 +1154,10 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	    fast_wake_lines > max_wake_lines)
 		return false;
 
+	if (DISPLAY_VER(i915) >= 20 && !_lnl_compute_alpm_params(intel_dp,
+								 crtc_state))
+		return false;
+
 	if (i915->display.params.psr_safest_params)
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
-- 
2.34.1

