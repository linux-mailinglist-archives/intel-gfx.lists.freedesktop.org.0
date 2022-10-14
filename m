Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A82C5FF150
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 17:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5178B10EB1D;
	Fri, 14 Oct 2022 15:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABB010EB1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 15:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665761256; x=1697297256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CGJlN7W0nAZVJSCPzQBRErQrftj598LXgzYyGOlpzS0=;
 b=l9b9AXcVm3mff6VPETU1W+AP2UK+MOLAmFDKE92e/O1xSHFzN2rc3rwQ
 WcxH0hYcGNh1jCqdt0KfViy9KUEpwCWdz/gcK3kSjAYfSzuFcXfJOb9Wn
 eTFW7vG/JpJouHaohYjLdlFN05Huw8O7Ex1VWN9eg54pJ+qYbJF+iDhJS
 ftxr6vEx+4TGgOqyPB/UFN8oHlf1diGAbakzzOTD7t+JYfpkfhQjZp/9t
 0HhA1VupEcmmW0y8MlznFAjyk3d9rbQ/hBxJ7MooTSZetWfcan4Z5d7kB
 mD9vbUt0uIsKh43JA1Nn1fmIYO/3obKYSgUb7SnBGwXi9vTGEw5PN9urG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285791236"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="285791236"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696340303"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="696340303"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2022 08:27:34 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 20:56:19 +0530
Message-Id: <20221014152622.233398-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221014152622.233398-1-suraj.kandpal@intel.com>
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/dp: Check if DSC supports the
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b06806ec0d..c212171cced7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1464,6 +1464,32 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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
+	return intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
+	       sink_dsc_format;
+}
+
 static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state,
@@ -1482,6 +1508,9 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
+	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
+		return -EINVAL;
+
 	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
 	if (intel_dp->force_dsc_bpc) {
-- 
2.25.1

