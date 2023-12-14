Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68394812F5C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93AC610E926;
	Thu, 14 Dec 2023 11:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E09210E2C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554536; x=1734090536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=87wCPbdb6Ad+KFx389JbRzwl6RSysu2t7mb753jX0Ns=;
 b=YkFvLhICJAUzl6spHeN9/Wb2jrQM7k4So9NzctYeLdi/zcSuZACGg4KV
 OlzZpL/6mqAfdHdxafXrzB/v/X4L3oZakOnm69pCi3GpQusMMvXH+POKq
 /kkwA/51BAns+dwwszLoMKWtvUx7Z9Q8qMvJqOsHkryMTQiIrdPbVH+sf
 u9mfkI5BGhjPSK/PRG1yBnvlBarDUM50Nnw+Ae8d/PpSN5F7gudim/9gX
 RFWWq/LE1g++rY9Qg274+nyJjccCWCvj5uq8kO4y0YWj1PHESZhLSrqaI
 tazHFp2BK8P5CgBqqTqrhde/UEZ57CpneEliw9yFWupmXmBXl6Fy+YO9k Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658684"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658684"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678859"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678859"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915/display: Move colorimetry_support from intel_psr
 to intel_dp
Date: Thu, 14 Dec 2023 13:48:33 +0200
Message-Id: <20231214114838.1113648-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
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

Colorimetry support is not really a PSR specific thing. Move it to intel_dp
struct and use it also when preparing vsc sdp for non-PSR case.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c            | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_psr.c           |  5 +----
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a9c9b6edcc25..1d1cc93625e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1703,7 +1703,6 @@ struct intel_psr {
 	unsigned int busy_frontbuffer_bits;
 	bool sink_psr2_support;
 	bool link_standby;
-	bool colorimetry_support;
 	bool psr2_enabled;
 	bool psr2_sel_fetch_enabled;
 	bool psr2_sel_fetch_cff_enabled;
@@ -1834,6 +1833,8 @@ struct intel_dp {
 
 	/* When we last wrote the OUI for eDP */
 	unsigned long last_oui_write;
+
+	bool colorimetry_support;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b2482bf683f..08c48a58aa4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2622,7 +2622,8 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
-	if (!intel_dp_needs_vsc_sdp(crtc_state, conn_state))
+	if (!intel_dp->colorimetry_support ||
+	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state))
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
@@ -2639,7 +2640,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 	vsc->sdp_type = DP_SDP_VSC;
 
 	if (crtc_state->has_psr2) {
-		if (intel_dp->psr.colorimetry_support &&
+		if (intel_dp->colorimetry_support &&
 		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 			/* [PSR2, +Colorimetry] */
 			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
@@ -2654,7 +2655,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 			vsc->length = 0xe;
 		}
 	} else if (crtc_state->has_panel_replay) {
-		if (intel_dp->psr.colorimetry_support &&
+		if (intel_dp->colorimetry_support &&
 		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 			/* [Panel Replay with colorimetry info] */
 			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
@@ -6527,6 +6528,9 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 				    "HDCP init failed, skipping.\n");
 	}
 
+	intel_dp->colorimetry_support =
+		intel_dp_get_colorimetry_status(intel_dp);
+
 	intel_dp->frl.is_trained = false;
 	intel_dp->frl.trained_rate_gbps = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d5dc3fb6f20..d9fffc802335 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -560,11 +560,8 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
 
-	if (intel_dp->psr.sink_psr2_support) {
-		intel_dp->psr.colorimetry_support =
-			intel_dp_get_colorimetry_status(intel_dp);
+	if (intel_dp->psr.sink_psr2_support)
 		intel_dp_get_su_granularity(intel_dp);
-	}
 }
 
 static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
-- 
2.34.1

