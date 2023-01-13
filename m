Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 139B3668BE2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 06:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9493610E994;
	Fri, 13 Jan 2023 05:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061CF10E992
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 05:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673589213; x=1705125213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MPXifSRv4PRJx5FWkCt9BpvCYexvX+FVPnOzmp9xrak=;
 b=B9Tff9KVTI64MxkmRms6xWPw/IgH00L73zUZWH9zekeYhVMWQJ3C4aE9
 213yGLf00Lwmprt9AAVEjaWMTUKE10cMm2ChZPGLVrlBO6lr67MxgYLwQ
 D8RwFCuSiyAjot9cxOPuPqelqwV4bX5WpZCxsVou6bUE4H5ikiFiJ5GqU
 QyQyr2R0J0cdiMVSQrgo3U3R1pUBTwiWVKV67A0fTe0uH7ws6claSO3az
 1ovBtEgU0ciG6a1OChP6D6beChqq2HVwDh9adfiSZMTWbxGEgboPshH2g
 xOD3YEu+G4U5P/OcNOzd24oZr0teusiDC8PJQf1PH2BgBlwUGGYanoxAU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304302652"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="304302652"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 21:53:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="831972056"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="831972056"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2023 21:53:31 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Jan 2023 11:22:13 +0530
Message-Id: <20230113055217.1974569-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230113055217.1974569-1-suraj.kandpal@intel.com>
References: <20230113055217.1974569-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/6] drm/i915/dp: Check if DSC supports the
 given output_format
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Go with DSC only if the given output_format is supported.

v2: Use drm helper to get DSC format support for sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 30 +++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 30c55f980014..6e531872ff38 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1483,6 +1483,31 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
+static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
+					 enum intel_output_format output_format)
+{
+	u8 sink_dsc_format;
+
+	switch (output_format) {
+	case INTEL_OUTPUT_FORMAT_RGB:
+		sink_dsc_format = DP_DSC_RGB;
+		break;
+	case INTEL_OUTPUT_FORMAT_YCBCR444:
+		sink_dsc_format = DP_DSC_YCbCr444;
+		break;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		if (min(intel_dp_source_dsc_version_minor(intel_dp),
+			intel_dp_sink_dsc_version_minor(intel_dp)) < 2)
+			return false;
+		sink_dsc_format = DP_DSC_YCbCr420_Native;
+		break;
+	default:
+		return false;
+	}
+
+	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -1503,11 +1528,16 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
+	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
+		return -EINVAL;
+
 	if (compute_pipe_bpp)
 		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 	else
 		pipe_bpp = pipe_config->pipe_bpp;
 
+	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+
 	if (intel_dp->force_dsc_bpc) {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
 		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
-- 
2.25.1

