Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 754C47BB943
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7B310E509;
	Fri,  6 Oct 2023 13:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B5610E4F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599442; x=1728135442;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3pb9QlQbIsuclbNcn6sTuoXfhr1/gvlJg8scLuv6UL0=;
 b=IM2mNg8+KdhymlKqUK5wJXIKYZSAlbJ9vNL6/VT440fVtTad0zFspOxq
 zVj5mdna2Kt2um2MbJ1ANz4sndyUCG4EjcFYbI5xB722bzkXb1QfyoXwB
 uCEMR8lBRKa0tzuriBiw+bNHHxq5N4MXFJ4Noh/+Nm9qc4teTo2LwD1XA
 lTEbEq98nwa0EQZa67ZGMguDniZaHAK3CA7Vv/FOwpiVW7graMcStymX6
 PbEORrUuAdGhE9+p92b6k5A1hpQrImIM1N8t/AqpH9z1BEaqs6dmSIbHZ
 11IJuHrX1aKVurhVYjmY1/0bLxYqgVkmBOELowMBvszYLmvww9+BZSiZE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019113"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019113"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841454"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841454"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:19 +0300
Message-Id: <20231006133727.1822579-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/19] drm/i915/dp: Pass only the required i915
 to intel_dp_source_dsc_version_minor()
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

intel_dp_source_dsc_version_minor() only requires the i915 pointer, so pass
only this to the function.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1bb00ac655c78..eee7eac5e8e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1603,10 +1603,8 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	return 0;
 }
 
-static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
+static int intel_dp_source_dsc_version_minor(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
 	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
 }
 
@@ -1666,7 +1664,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
 		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
 	vdsc_cfg->dsc_version_minor =
-		min(intel_dp_source_dsc_version_minor(intel_dp),
+		min(intel_dp_source_dsc_version_minor(i915),
 		    intel_dp_sink_dsc_version_minor(intel_dp));
 	if (vdsc_cfg->convert_rgb)
 		vdsc_cfg->convert_rgb =
@@ -1697,6 +1695,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 					 enum intel_output_format output_format)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 sink_dsc_format;
 
 	switch (output_format) {
@@ -1707,7 +1706,7 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 		sink_dsc_format = DP_DSC_YCbCr444;
 		break;
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
-		if (min(intel_dp_source_dsc_version_minor(intel_dp),
+		if (min(intel_dp_source_dsc_version_minor(i915),
 			intel_dp_sink_dsc_version_minor(intel_dp)) < 2)
 			return false;
 		sink_dsc_format = DP_DSC_YCbCr420_Native;
-- 
2.39.2

