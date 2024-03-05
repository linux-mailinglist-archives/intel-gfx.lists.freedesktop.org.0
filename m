Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C15871E83
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 13:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585A9112A6F;
	Tue,  5 Mar 2024 12:05:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OmQHJ6NK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5027E112A6C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 12:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709640321; x=1741176321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SfWyJUT7Q80JDVmHIxWS/rzWHQfjNVVDcFgdmpxfAow=;
 b=OmQHJ6NKoV/AKHO977odzAeYQ52oW60tw1TfDMbQNuNCJzoBS66EaYgn
 RVA+FL8eNoq8GQdLusv2m27L9CAE0N1AagAh1P8OlB3drszX2K3ljlWbE
 u2pfZOSmxvM5MKOUZttqFCvKAbahLHTQmd6h3EqBRlpWMZEfrf6b/cm5q
 UM8CFlxVWpD8ZhCsFrerbUvpPTg0fnuc2ol1w4EBkoBPdr/Eaehm1AyIF
 kXLHt1q5Y5DvmOnvbyYBCBJQ4JsSqnNrNfoPk1/DxqOB3C5oa/oX6AMK9
 /OePLBh9PpVkDgGeod1hovl8rD1+wwePeRT/gub12CQ1YDOiN9SthjVpm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7132101"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7132101"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9417791"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.194])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:19 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 3/5] drm/i915/psr: Calculate IO wake and fast wake lines
 for DISPLAY_VER < 12
Date: Tue,  5 Mar 2024 14:04:56 +0200
Message-Id: <20240305120458.1275218-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240305120458.1275218-1-jouni.hogander@intel.com>
References: <20240305120458.1275218-1-jouni.hogander@intel.com>
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
index 905208e1c771..afcfa541942c 100644
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

