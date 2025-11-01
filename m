Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 529ECC27687
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B806710EC39;
	Sat,  1 Nov 2025 03:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atKvHEK2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3301F10EC39;
 Sat,  1 Nov 2025 03:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967525; x=1793503525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AZi4fk4T1WF0QDi6s2dzhRX4pqoqcOzD0o7AATHQc8I=;
 b=atKvHEK2XfBwm9Q372HU5C9FkZD3NhC3RbiFg0QUtGy83PVHIOfct6iJ
 4ywrBUMhgyZfFSZCqI7PRKYjHt0SLNuTNEtUVVsJYKAYwnp+l3H+Qk6+m
 3XdByFer9VlX484lX59AN1ICJClxXxmiAaOXxlApa4iCwWiDMbN0xBciB
 HawL6aru4102ZEt7HnvUM9VdInS5MMZxM1x88iNRdgZb7oaEz9uvJK9I+
 pc5Tb7VR7jcZPIejRM9kpmnOD7mshALApzoSBXkwGLW00NJfNG8UlViH5
 bY4WZ/txrQMu1hlPNjM8x9sogBlS+SfSbNTPagbRSxsDWjn3cSI8PLJQU A==;
X-CSE-ConnectionGUID: iNZosL4UT8mDWlpSp6T6xw==
X-CSE-MsgGUID: N2AAMqg1SQKgApBAe6ZO5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019845"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019845"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:25 -0700
X-CSE-ConnectionGUID: vXrHGhb+RvuCvT2dxSpTJA==
X-CSE-MsgGUID: 0DdhWtuTRKiT+surfxaH2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217037945"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:23 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 04/25] drm/i915/cx0: Move the HDMI FRL function to
 intel_hdmi
Date: Sat,  1 Nov 2025 08:54:52 +0530
Message-Id: <20251101032513.4171255-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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

Move the is_hdmi_frl to intel_hdmi.c. Rename it appropriately and
make it non static.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 21 +++-----------------
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 14 +++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h    |  1 +
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 38fcdb2e75f6..ff5a54c5f4ff 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2590,20 +2590,6 @@ static bool is_dp2(u32 clock)
 	return false;
 }
 
-static bool is_hdmi_frl(u32 clock)
-{
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
-}
-
 static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
@@ -2617,7 +2603,7 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
 {
 	if (dp && is_dp2(clock))
 		return 2;
-	else if (is_hdmi_frl(clock))
+	else if (intel_hdmi_is_frl(clock))
 		return 1;
 	else
 		return 0;
@@ -2706,11 +2692,10 @@ static void intel_c20_pll_program(struct intel_display *display,
 
 	/* 5. For DP or 6. For HDMI */
 	serdes = 0;
-
 	if (is_dp)
 		serdes = PHY_C20_IS_DP |
 			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
-	else if (is_hdmi_frl(port_clock))
+	else if (intel_hdmi_is_frl(port_clock))
 		serdes = PHY_C20_IS_HDMI_FRL;
 
 	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
@@ -2777,7 +2762,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
 
-	if (!is_dp && is_hdmi_frl(port_clock))
+	if (!is_dp && intel_hdmi_is_frl(port_clock))
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0acf2f63ada4..5c637341b210 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -68,6 +68,20 @@
 #include "intel_snps_phy.h"
 #include "intel_vrr.h"
 
+bool intel_hdmi_is_frl(u32 clock)
+{
+	switch (clock) {
+	case 300000: /* 3 Gbps */
+	case 600000: /* 6 Gbps */
+	case 800000: /* 8 Gbps */
+	case 1000000: /* 10 Gbps */
+	case 1200000: /* 12 Gbps */
+		return true;
+	default:
+		return false;
+	}
+}
+
 static void
 assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index dec2ad7dd8a2..be2fad57e4ad 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -60,6 +60,7 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int src_max_slices, int src_max_slice_width,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
+bool intel_hdmi_is_frl(u32 clock);
 
 void hsw_write_infoframe(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state,
-- 
2.34.1

