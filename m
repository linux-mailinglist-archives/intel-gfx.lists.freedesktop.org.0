Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 373B485F79C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 12:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9817710E90E;
	Thu, 22 Feb 2024 11:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eWpByViB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB1310E6BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 11:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708603075; x=1740139075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DlZkFNnpdwB4+JQPsOsSBJvP/yLdGtcsRwlOMle034U=;
 b=eWpByViBfinfoVAKNBcDCw1HxDgQ7gGtTrVrLsJXKtL8rKUpsRNUBrM7
 uvJQOoeWLAdrG6jvHbjj94UTqSTqxdKT964Nwz47LQB0guHvZN0SaYKtY
 SJLHnmmsBpetDzfOEKqKg24lEkNexSsY4MN7EDY4pbBtsc8kAUg9aiE0b
 yIC04egSJkK7YKjCOO2KEG0WegRZhDBVB8B48dpaUnhrX3xQSERwUx9aY
 BTPsnUPWn9bmA2MKLRWZZNAZ9CILXf23iwU3DdUathTI4QbQIry2OSZpF
 VTtpvzIxSIXU30UP/frbq0JObDplGkuiG7fXBOxnUXgj4W6JdD0IVat0N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2972958"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2972958"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5840051"
Received: from alaakso-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.43.250])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/5] drm/i915/psr: Add IO buffer wake times for LunarLake
 and beyond
Date: Thu, 22 Feb 2024 13:57:27 +0200
Message-Id: <20240222115728.3371478-5-jouni.hogander@intel.com>
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

IO buffer wake time used for IO wake calculation is dependent on port clock
on LunarLake and beyond. Take this into account in get_io_buffer_wake_time.

Bspec: 65450

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d2de2099ad48..efd448431b17 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1160,6 +1160,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
  * This is not directly mentioned in Bspec. There are 50 us io wake time and 32
  * us fast wake time. Clearly preharge pulses are not (improperly) included in
  * 32 us fast wake time. 50 us - 32 us = 18 us.
+ *
+ * For DISPLAY_VER >= 20
+ * RBR 15us, HBR1 11us, higher rates 10us
  */
 static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 {
@@ -1167,8 +1170,12 @@ static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(i915) < 12)
 		return 18;
-	else
+	else if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock > 270000)
 		return 10;
+	else if (crtc_state->port_clock > 162000)
+		return 11;
+	else
+		return 15;
 }
 
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
-- 
2.34.1

