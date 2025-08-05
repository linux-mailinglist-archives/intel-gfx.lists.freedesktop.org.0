Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 864DEB1B4FC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7108310E67A;
	Tue,  5 Aug 2025 13:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQLUtjxO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAC010E47D;
 Tue,  5 Aug 2025 13:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400867; x=1785936867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wPDh8FZmumNkkUbKFFTZYfU1PkxymOqRPJQJ0f8z1oQ=;
 b=IQLUtjxOb8ko7VNz3OpNGcWX8/bIZZHw6rL4beut0BVGZFZlKXVXSez1
 wtYFSapw29AJgXoYr9M4zgfF06nD7aoyLvcflh2uXtlShUylUk7Hnwurd
 iC7g4Ycb/5vfmJ7pv3Z7ZmOuA+tZ+RnQoEXVOSTLGjL8MtKbNoc2hcyCV
 Gn9oU9WiDRFd6hrDXIfB9brFyLWxNAxKWcH9Hdq9n50Q9hvtmlCD2dKC3
 URllxv9xM5p1ZEt7aqJy4zqqe1V4NjMWMuAraXYPmP3wLPjUKIjVb22/Z
 KFbI0KNacMYVb6JLBG0QgUghnfZWWB8Xz+bsnuNbHhAuyGQtDCxp6kLZn A==;
X-CSE-ConnectionGUID: NCdd1I05Tp2pjSFOeHONSw==
X-CSE-MsgGUID: n1nLdbP8QVOIeo1uAY6XQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768949"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768949"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:27 -0700
X-CSE-ConnectionGUID: eP85pMM1ROyaV4b3BnfQXA==
X-CSE-MsgGUID: ZzMDdCArRhaid4bjDIY6qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915401"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/13] drm/i915/dp: Add SDP latency computation helper
Date: Tue,  5 Aug 2025 18:50:09 +0530
Message-ID: <20250805132016.1250202-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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
based on line count per packet type and current line time.

Used to ensure adequate vblank when features like DSC/HDR are enabled.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  1 +
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 625036c47bdf..0c2bec1fbe42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6826,3 +6826,50 @@ void intel_dp_mst_resume(struct intel_display *display)
 		}
 	}
 }
+
+static
+int intel_dp_get_sdp_latency(u32 type, int linetime_us)
+{
+	int lines;
+
+	switch (type) {
+	case DP_SDP_VSC_EXT_VESA:
+	case DP_SDP_VSC_EXT_CEA:
+		lines = 10;
+		break;
+	case HDMI_PACKET_TYPE_GAMUT_METADATA:
+		lines = 8;
+		break;
+	case DP_SDP_PPS:
+		lines = 6;
+		break;
+	default:
+		lines = 0;
+		break;
+	}
+
+	return lines * linetime_us;
+}
+
+int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state,
+				 bool assume_all_enabled)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int sdp_latency = 0;
+	int linetime_us;
+
+	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+				   adjusted_mode->crtc_clock);
+	if (assume_all_enabled ||
+	    crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
+		sdp_latency = max(sdp_latency,
+				  intel_dp_get_sdp_latency(HDMI_PACKET_TYPE_GAMUT_METADATA,
+							   linetime_us));
+
+	if (assume_all_enabled || crtc_state->dsc.compression_enable)
+		sdp_latency = max(sdp_latency,
+				  intel_dp_get_sdp_latency(DP_SDP_PPS, linetime_us));
+
+	return sdp_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0657f5681196..994994d68475 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
+int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state, bool assume_all_enabled);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

