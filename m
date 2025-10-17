Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28969BE8A59
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8992410EBD3;
	Fri, 17 Oct 2025 12:48:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbJp5Bm/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548A010EBD3;
 Fri, 17 Oct 2025 12:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760705301; x=1792241301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZAYQydhEMj9N1IJ3cvAf04+0Gg8RmHcZAhXH6Wob6+w=;
 b=MbJp5Bm/pxK5mF5HPD0IpbA0mhlc5LR1Z/CodG+vtnz42t5kDy3vqp1C
 FXLDewFN4bBVb+NV3zRjvW7xwo/HQpeh/rvnILyXLhxSGgWjSSczW97cK
 R4HqYR0gwzNqeRJxziHwWtdy0c+M0umHkjBdAPrq8oinE3eUB0EiLT4+M
 szXDwVqq0B2mGHBeRlgX3Fp8r8eapU3mU40QJEwxraIaka+JLUGgxTM8Z
 YDmE3jXiN2Bhuja2mlByoMhWC5d7mzg+MuyF8lPA8Y+8eFpAY/J5uhGTw
 VznRRL1NU4g3J/Rq2ZuSIjnrv+eI/6DDUmnPiaWYQ2D+rmd/rxQKtdaDi w==;
X-CSE-ConnectionGUID: XGqLKYhGS0qs6yRLID8YFA==
X-CSE-MsgGUID: 8J3VxeYjTmuqMk4QrIjHMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61944196"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61944196"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:20 -0700
X-CSE-ConnectionGUID: hK3bzhueTRmdNK17jRptYQ==
X-CSE-MsgGUID: tRDEJQdPTb2us3iAJoG88w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182281071"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
Date: Fri, 17 Oct 2025 18:05:01 +0530
Message-ID: <20251017123504.2247954-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
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

v2: Correct the lines required for PPS SDP. (Jouni)

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 36 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7059d55687cf..acbb4d476543 100644
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
+		return 7;
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

