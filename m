Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2572EBDE084
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8188A10E77A;
	Wed, 15 Oct 2025 10:35:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nH32oX9u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAFD310E77A;
 Wed, 15 Oct 2025 10:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524555; x=1792060555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WQPszunTrXJOr1Cog8GEZIPZO5epDb0jYrMQDgmoKiA=;
 b=nH32oX9uOGwqR+bnkjNW8NUV9LokgTcGtiNaApFwDMu9IaqRqE139+t4
 0d6RwExqQBWLOz7q4OTQ6x6Sb9locZfCR33oklVK6CzF+yL3unyeu8Bfd
 kQBFf7SsjtDPIerALJv/CqPCIwAXJO2qeB5xjkAqnwMz89clCI3FOV8Ye
 hL9lJLp9/wEEUXgW0Vi1jp/Q9HaB4PljGUH2dNX0LzPf3G6Q3KtmO9yig
 jcBNHKeLx11U8sVRKD64trVa7xYQnU6c/zfLSWs2s/gBHZ8TcJHChESV3
 z/40ibIXi58qg/tyOonjVIqbvU503V8iYGnimTapvoZ2763szEX1xxIn4 A==;
X-CSE-ConnectionGUID: LOeRhiMQRqKyipLOO/37Ag==
X-CSE-MsgGUID: Nkk0d8v6TCO1IW26MM4qgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262609"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262609"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:55 -0700
X-CSE-ConnectionGUID: s+ftunL5TZqUsIKYtBv/tQ==
X-CSE-MsgGUID: 8IL+dRSqSh6fsl4I5iqELQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842543"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/6] drm/i915/dp: Add SDP latency computation helper
Date: Wed, 15 Oct 2025 15:52:38 +0530
Message-ID: <20251015102241.1797828-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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

This will be used to ensure adequate guardband when features like DSC/HDR
are enabled.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 33 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h |  1 +
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e481ff4c4959..54d31d02ba50 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6988,3 +6988,36 @@ void intel_dp_compute_config_late(struct intel_encoder *encoder,
 
 	intel_psr_compute_config_late(intel_dp, crtc_state);
 }
+
+static
+int intel_dp_get_sdp_latency(u32 type)
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
+int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state)
+{
+	int sdp_latency = 0;
+
+	if (crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
+		sdp_latency = max(sdp_latency,
+				  intel_dp_get_sdp_latency(HDMI_PACKET_TYPE_GAMUT_METADATA));
+
+	if (crtc_state->dsc.compression_enable)
+		sdp_latency = max(sdp_latency, intel_dp_get_sdp_latency(DP_SDP_PPS));
+
+	return sdp_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0d9573ca44cb..27089cef86d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -221,5 +221,6 @@ bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
 void intel_dp_compute_config_late(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_connector_state *conn_state);
+int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

