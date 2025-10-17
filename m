Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FA3BE6630
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 07:15:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A79010EB07;
	Fri, 17 Oct 2025 05:15:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TyK0NlKk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF84A10EAFC;
 Fri, 17 Oct 2025 05:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760678111; x=1792214111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5QusbHEiPB9da9p5MIXyxUk9fI47hIfIOTuvvbQqAxc=;
 b=TyK0NlKksKtbIWtj3pgN5Ip27U7HhdWVDQ/IGmHG4ELropdEoiFAu+RF
 pugX8+l7mCFYHZjTW/gBz4+JuJhLS4cIrCSkF3tGBgdiO2dPjDzgOEBO+
 IAdAAAY8rK7az+PH8Ci+uRWqhgSIOoyeAPbwa5Kk98YIcHiLVORjJ8ib+
 DM2+BfRMHNF3/Y7csBd1tDC9GRwGNad7y+BeYouAK5uS6chTecridhMpD
 S/wOSrMhMEaYWcc9g7iHoX0Zgmz3MXGZabcpVq94aD+LuHU55x3gIW44t
 Ik4wJlPYLJxb+u4uA4osO73VBm5ZOhzlOzSEIvtyc93gCPEuq0E+CIKC/ w==;
X-CSE-ConnectionGUID: n8v9u35SQyqLRQIHjyCGqg==
X-CSE-MsgGUID: LwUGukU1Ttqx/k0oPUEMAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88352609"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88352609"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:11 -0700
X-CSE-ConnectionGUID: Z/kyCfgFTCat0vsFWRELwQ==
X-CSE-MsgGUID: 8lb10PSzQ8qbQlR9++uzMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182576558"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
Date: Fri, 17 Oct 2025 10:31:59 +0530
Message-ID: <20251017050202.2211985-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
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

Add a helper to compute vblank time needed for transmitting specific
DisplayPort SDPs like PPS, GAMUT_METADATA, and VSC_EXT. Latency is
based on line count per packet type.

This will be used to ensure adequate guardband when features like DSC/HDR
are enabled.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 36 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7059d55687cf..3f2c319e3d6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6990,3 +6990,39 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 
 	return 0;
 }
+
+static
+int intel_dp_get_lines_for_sdp(u32 type)
+{
+	switch (type) {
+	case DP_SDP_VSC_EXT_VESA:
+	case DP_SDP_VSC_EXT_CEA:
+		return 10;
+	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		return 8;
+	case DP_SDP_PPS:
+		return 6;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
+			       bool assume_all_enabled)
+{
+	int sdp_guardband = 0;
+
+	if (assume_all_enabled ||
+	    crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
+		sdp_guardband = max(sdp_guardband,
+				    intel_dp_get_lines_for_sdp(HDMI_PACKET_TYPE_GAMUT_METADATA));
+
+	if (assume_all_enabled ||
+	    crtc_state->dsc.compression_enable)
+		sdp_guardband = max(sdp_guardband, intel_dp_get_lines_for_sdp(DP_SDP_PPS));
+
+	return sdp_guardband;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 281ced3a3b39..7ee5aeb28fe2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -221,5 +221,7 @@ bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
 int intel_dp_compute_config_late(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state);
+int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
+			       bool assume_all_enabled);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

