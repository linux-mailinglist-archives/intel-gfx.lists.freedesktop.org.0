Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF298610F87
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 13:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A3810E7F5;
	Fri, 28 Oct 2022 11:18:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA1510E7EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 11:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666955897; x=1698491897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2bRvokPd3+ZdOASFjNa6AOH9Xt+ClhX27QvvUMvjPVY=;
 b=GxQk2KjOphxOkNAfGWJUr7BG5t3zYvPsk1nrNXBOndmInQ3r/mLed6Co
 z56WR1IE7furkisHiYslW+Sk/dVDyAf6uKHBgcquY7Vjxr4jXmulMsFIH
 9j8mSlk+TpAZW3x+VDo3a4ShScj89W6e6NW6RpGPUOyVq+0bIqeIuktFd
 yYhTJLN7Q+tAhHUkUAQcrYq8l4Ie+ubkjWX5trdvtsptFcFxDQX5hj4ye
 27RLCKAD67ffCE8Kdtyg+L11C9VnO7fbwzIz45VLEZfm+BraX59hftmI6
 dv8GcZEB9S2lXk7J3AYjjS7ZkwH2y1HVGmPgULPeKdZ8BKQo3kSDWx9Ak Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370534660"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370534660"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701701505"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701701505"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:16 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:49:47 +0530
Message-Id: <20221028111953.12552-3-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
References: <20221028111953.12552-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/8] drm/i915/dp: Check if DSC supports the
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

