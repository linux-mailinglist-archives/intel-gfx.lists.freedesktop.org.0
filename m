Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16A585F79B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 12:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40D6C10E149;
	Thu, 22 Feb 2024 11:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XeKhlUVk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1D510E909
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 11:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708603073; x=1740139073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kYBSDyjhd1jxzrJjzwqNT8cFYssNpTpYoD2YoQwOKyQ=;
 b=XeKhlUVkmc5MZBdviGbrMmuuPTZzZn0Bw1Envnz6Ojy09fWl/zvjKhE7
 pCzXMVfKtAhfJCq/m3ps1FyFSkq15inB9ijP1R8QLlQdVpwJwXQckznUq
 Uk8Sf8ZqwzYEFLauXLd3DkX9NoCokS/nBNKjPEsUIjrPl3EH1L62gNTd5
 ewABSxmjln2eoO9MxjUeElKOIpJ0+LpSfpez4SYOdmO3+qVo7L3azCRfq
 P9OtFXenXRcD7wdeHGDY3HfHYemFLCyebdjb+imMKczWm48XzwRd265gj
 eyIGj8iURFcpsARgLdw+ukWA3kOsUUH8q4F5wMrIshTiBWlaISalixCHU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2972954"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2972954"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5840039"
Received: from alaakso-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.43.250])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:53 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/5] drm/i915/psr: Calculate IO wake and fast wake lines
 for DISPLAY_VER < 12
Date: Thu, 22 Feb 2024 13:57:26 +0200
Message-Id: <20240222115728.3371478-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222115728.3371478-1-jouni.hogander@intel.com>
References: <20240222115728.3371478-1-jouni.hogander@intel.com>
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

Bspec mentions 50 us for IO wake time and 32 us for fast wake time. 32 us
is most probably wrong as it doesn't meet the specification as fast wake
time is calculated in Bspec like this:

10..16 us (precharge) + 8 us (preamble) + 4 us (phy_wake) + 20 us
(tfw_exit_latency)

Instead of using these constants calculate IO wake and fast wake for
DISPLAY_VER < 12 as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 31 ++++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 415209019c7b..d2de2099ad48 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1150,9 +1150,25 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	return true;
 }
 
-static int get_io_buffer_wake_time(void)
+/*
+ * From Bspec:
+ *
+ * For DISPLAY_VER >= 12
+ * 10 us
+ *
+ * For DISPLAY_VER < 12
+ * This is not directly mentioned in Bspec. There are 50 us io wake time and 32
+ * us fast wake time. Clearly preharge pulses are not (improperly) included in
+ * 32 us fast wake time. 50 us - 32 us = 18 us.
+ */
+static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 {
-	return 10;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (DISPLAY_VER(i915) < 12)
+		return 18;
+	else
+		return 10;
 }
 
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
@@ -1162,8 +1178,8 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
 	u8 max_wake_lines;
 
-	if (DISPLAY_VER(i915) >= 12) {
-		int io_buffer_wake_time = get_io_buffer_wake_time();
+	if (DISPLAY_VER(i915) >= 9) {
+		int io_buffer_wake_time = get_io_buffer_wake_time(crtc_state);
 		int tfw_exit_latency = 20; /* eDP spec */
 		int phy_wake = 4;	   /* eDP spec */
 		int preamble = 8;	   /* eDP spec */
@@ -1173,14 +1189,13 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 			phy_wake + tfw_exit_latency;
 		fast_wake_time = precharge + preamble + phy_wake +
 			tfw_exit_latency;
+	}
 
+	if (DISPLAY_VER(i915) >= 12)
 		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
-	} else {
-		io_wake_time = 50;
-		fast_wake_time = 32;
+	else
 		max_wake_lines = 8;
-	}
 
 	io_wake_lines = intel_usecs_to_scanlines(
 		&crtc_state->hw.adjusted_mode, io_wake_time);
-- 
2.34.1

