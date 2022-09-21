Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94715BFCA5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 12:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBED710E915;
	Wed, 21 Sep 2022 10:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE1010E8F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 10:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663757774; x=1695293774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ic7d5W13U1XsAwJJATRxuMqx84mWrz3zks5okz+40RE=;
 b=T4zr0wzH14GmpVI9nQmfZ1eE9DXB23eg6JQGp8wMxp0sKJ410k62pzTc
 CY75tQCp5QHBAeDJESvp6M61X+G/DAOyHrVAnzhfrQvAiZ2oQcws7vuPA
 UI4/jYnUduFv0prkVfOWWXLfY03imezC3ydUet30Icg6q5pDmphMdqyKv
 6mp5HrpDsV6LfpdNMa+4JQjF7f30VkETFoe25b1OUhBeoWmnJd5YuE15v
 nsDX1TCFrd/KysfFgPlvgiylN3R1Xwv+1xOJUghmqsQMLBwU/ATY1Nnj4
 4WGnq0I6Jms0mDaDL7gFniJSFu4s2BpkO+t6h/ZeFPWqEbHAkoXNrGbnH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="301368192"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="301368192"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 03:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="794631244"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 21 Sep 2022 03:56:12 -0700
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 16:25:04 +0530
Message-Id: <20220921105506.2208471-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220921105506.2208471-1-suraj.kandpal@intel.com>
References: <20220921105506.2208471-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/dp: Check if DSC supports the
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
index c9be61d2348e..f2f77856df83 100644
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

