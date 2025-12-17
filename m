Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 639A9CC86FB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B6210ECFF;
	Wed, 17 Dec 2025 15:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJ3gPA0O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C087010E8CC;
 Wed, 17 Dec 2025 15:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985333; x=1797521333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jJKupESaJAWmGXdT3hGst/XPGoxTXTXtLw6A4BPEU4Y=;
 b=lJ3gPA0OiA1GaSgt/ebLscq8nn5jOiL2u1zcgFDw3wk0qMgNK2rdGjaS
 OCQ37845y7D7MM6wvCyMfd2B75ST+GoeYsSA46Po19Onu9KibfWpsVagK
 dK4NvXssvaD/8DglxhcY4dzSeFoe5RlM604l48/OBneozrnJAaalqtJh9
 LRQfQkyCBuV+KCEyoZBWsdPue4qOWeMLT8U8y61vF2SKU5y/kdw+XAFvb
 Ymve1icT8zy8zMeMB5LXV87nr5FVVMnhVK1gNzuuzeMfOHGjaPfsBw2BY
 srUgBHhSgBYOYP0NFegE//wZB9S5/YiUI+1k633vNNtq+zlH2Rz0JR39i Q==;
X-CSE-ConnectionGUID: kWqGzfXYRWGk09L7UQtOhw==
X-CSE-MsgGUID: 6cBqj92tQ/OLuN939K4PnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781459"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781459"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:53 -0800
X-CSE-ConnectionGUID: 02VIRtEHST67om5JCAnDTg==
X-CSE-MsgGUID: 7Jmh10WLTR+hp48g9aF30Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097316"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:51 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI clock
 rates during programming
Date: Wed, 17 Dec 2025 17:19:50 +0200
Message-Id: <20251217151955.1690202-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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

Since the clock rate is derived from the PLL divider values it can have
a +-1kHz difference wrt. the reference rates in the comparison

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 18 ++++++++----------
 2 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0f28d02b7a69..ea807191cb4f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3013,6 +3013,12 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 }
 
+static bool is_mplla_clock_rate(int clock)
+{
+	return intel_cx0pll_clock_matches(clock, 1000000) ||
+	       intel_cx0pll_clock_matches(clock, 2000000);
+}
+
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_cx0pll_state *pll_state,
 					 int port_clock,
@@ -3038,7 +3044,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	/* TODO: HDMI FRL */
 	/* DP2.0 10G and 20G rates enable MPLLA*/
-	if (port_clock == 1000000 || port_clock == 2000000)
+	if (is_mplla_clock_rate(port_clock))
 		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
 	else
 		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 055e68810d0d..63a88006e336 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -70,16 +70,14 @@
 
 bool intel_hdmi_is_frl(u32 clock)
 {
-	switch (clock) {
-	case 300000: /* 3 Gbps */
-	case 600000: /* 6 Gbps */
-	case 800000: /* 8 Gbps */
-	case 1000000: /* 10 Gbps */
-	case 1200000: /* 12 Gbps */
-		return true;
-	default:
-		return false;
-	}
+	u32 rates[] = { 300000, 600000, 800000, 1000000, 1200000 };
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(rates); i++)
+		if (intel_cx0pll_clock_matches(clock, rates[i]))
+			return true;
+
+	return false;
 }
 
 static void
-- 
2.34.1

