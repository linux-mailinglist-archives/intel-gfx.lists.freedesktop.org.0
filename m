Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5F861ED55
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B5F10E22C;
	Mon,  7 Nov 2022 08:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC1D10E22C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667810863; x=1699346863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2bRvokPd3+ZdOASFjNa6AOH9Xt+ClhX27QvvUMvjPVY=;
 b=Ek9C+8prvGxp4ncW/N8XTDeMF9CIvwFfrIpF/4KiciFIKqLzLTZwKvZe
 UjIEw6xCHnlZtoNowQnkeKdpjniXt13gg0v9wSeNSm90VTyCFZioprGe1
 RVYhdzC0yBnDJyvOYfzTT1mGMuKPYzTZAfkPYsvVITGubkYo1AvycStzA
 R9rVlnNtGJ5Vtk9zo7oh/k6dMgqK8xkPxkgJuyLo1otwF/JRhucttnsHW
 gTKdVgSoEmYG4tfl4yS7o1kKLn4QUKEXvqapxtIDJ5WykfjqBS8PFca75
 A0T7kQE9aNverq5fJ8RDCDLSF98SXw+9p+lVm7jmtYZaVqgacSM1l9VsN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="290085252"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="290085252"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 00:47:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="880983607"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="880983607"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 07 Nov 2022 00:47:41 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 14:16:28 +0530
Message-Id: <20221107084634.1353266-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107084634.1353266-1-suraj.kandpal@intel.com>
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
 <20221107084634.1353266-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/dp: Check if DSC supports the
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
 drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..a5c31ac1ec73 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1464,6 +1464,31 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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
 static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state,
@@ -1482,6 +1507,9 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
+	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
+		return -EINVAL;
+
 	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
 	if (intel_dp->force_dsc_bpc) {
-- 
2.25.1

