Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1E47BB944
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C0210E508;
	Fri,  6 Oct 2023 13:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9042310E4FA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599445; x=1728135445;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AMOP3sFwmIeh5rIrKBF60aAPV5pfJPo09a7ZmXLRq8k=;
 b=LA9yfc5jT5RatHfTJxg5uLXMx5zgiFk8i8yOCCFLhf0WKbg1Sr4YxGvS
 Avo++tFhVO5LN3C4TjZYIJC4AT1d21WXV4OOexyJrjjVCHClK/PTI19ax
 PauL4KHyMeiFQ0kz6m5fgW/qxgbOaG46d9e+VJyfS36YzZLKSsD5Or+RL
 pSE+n5rLhz34B9yTIBwOUj/L4+qFXMII/ka8FoyndPrnlPRuhhzJbs7rs
 +oNhXm/iUw0DD+Yzev57CtA6jub414EYz9l7mIhqhPxvZriFob4rxfUas
 YP6OKL+ItxISbxXKVVZy9Vz3314La+9XMOUrAM0KNKZSbVbPAXtQ9LVTr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019126"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019126"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841488"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841488"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:22 +0300
Message-Id: <20231006133727.1822579-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_dsc_supports_format()
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

Use the connector's DSC DPCD capabilities in
intel_dp_dsc_supports_format().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 02c020068c9c0..846a25a85d6b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1691,10 +1691,10 @@ static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
-static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
+static bool intel_dp_dsc_supports_format(const struct intel_connector *connector,
 					 enum intel_output_format output_format)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 sink_dsc_format;
 
 	switch (output_format) {
@@ -1706,7 +1706,7 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 		break;
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
 		if (min(intel_dp_source_dsc_version_minor(i915),
-			intel_dp_sink_dsc_version_minor(intel_dp->dsc_dpcd)) < 2)
+			intel_dp_sink_dsc_version_minor(connector->dp.dsc_dpcd)) < 2)
 			return false;
 		sink_dsc_format = DP_DSC_YCbCr420_Native;
 		break;
@@ -1714,7 +1714,7 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
+	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
 }
 
 static bool is_bw_sufficient_for_dsc_config(u16 compressed_bpp, u32 link_clock,
@@ -2124,7 +2124,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(connector, pipe_config))
 		return -EINVAL;
 
-	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
+	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
 
 	/*
-- 
2.39.2

