Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A06B1E3DE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 09:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6995A10E8D1;
	Fri,  8 Aug 2025 07:52:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKHiYA/L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E4310E8D0;
 Fri,  8 Aug 2025 07:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754639567; x=1786175567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Co6J2eHRIuyHvkI0Kv1OOboUzB4TChqCiN94kYIxbcU=;
 b=AKHiYA/Lo8sZHkadS26yfUAB5hwcsHVXyz0GLcLZ5rPPDwWxR0qbW4U2
 V04yMgBf1LlYyoIJKX/Fbfhy3E3YaFAF2gzwxzAnJq4tBx0dGJx6wyzME
 p4Gt8vi1ls0RORqWx2dtPD9ivW6M5lVehAjjVwfWiywRFXxpOk3wwDzdP
 VLNfPdlSxxYIO1HQiQ7QCMv1W438Vk217WQLrU3k1cKSYmNdut5lD34+o
 JY8a5SPoqFLpmZNP5BZ0nR2t3TezxeVPFVZ6zVLvKuUet/fn4W1DG6pEp
 WXAKAKMiDsk/8vou7Uq+pAfJfHow640XsVI9BjQuVa28iK3G/pPRH5E3G w==;
X-CSE-ConnectionGUID: 2mhc8i/2RMqH9iHsYborrw==
X-CSE-MsgGUID: jph9NRzKS8mUnjxfgBV4Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74439102"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="74439102"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:47 -0700
X-CSE-ConnectionGUID: GPDL2mreSrWZHb+oGOgPVw==
X-CSE-MsgGUID: ZQXxWmbCQXO5ANQ7QWddPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169481621"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:45 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/hdmi: Honor prefer_sink_yuv420 debugfs override
 for HDMI
Date: Fri,  8 Aug 2025 13:22:42 +0530
Message-ID: <20250808075351.304612-3-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
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

If the `prefer_sink_yuv420` flag is set via debugfs and the sink
supports YCbCr 4:2:0 output for the current mode, prefer YCbCr 4:2:0
over the default RGB when computing the sink format.

This enables explicit testing and validation of 4:2:0 output handling
via the debugfs interface, particularly useful in IGT tests targeting
scaling and color.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cbee628eb26b..3ed6c9adf1a5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2268,6 +2268,14 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
+	/* Check if prefer_sink_yuv420 is enabled and sink supports it, then override RGB */
+	else if (connector->prefer_sink_yuv420 &&
+		 drm_mode_is_420_also(info, adjusted_mode)) {
+		crtc_state->sink_format = intel_hdmi_sink_format(crtc_state, connector, true);
+		drm_dbg_kms(display->drm, "prefer_sink_yuv420 enabled, selected format %d\n",
+			    crtc_state->sink_format);
+	}
+
 	crtc_state->output_format = intel_hdmi_output_format(crtc_state);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-- 
2.43.0

