Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043517BB946
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354B910E50B;
	Fri,  6 Oct 2023 13:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C504610E4F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599443; x=1728135443;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=08V5EMUcWzb9uRWIaSmBjoSTPLYrRIyCJHKBYs8ZSrA=;
 b=UE9OJWv00F1XoV6sEx2QaHWmy7iefvxD0oEEKNzFox4ZIKT0J96YYVSJ
 8xGg9DYncF4BRtywrf5GDY++E/2DopwRdxwk8yomCv5zTHArwSV6Mbx9s
 72wxAn9h/d14eYf9dXpex7WtLzNsOFuyDDdrFBekjCdnTgypv16hmXUNJ
 fXshkCCq8H5Slmhi/f8Munx3CTrgzo3w8R/joLNnPIug0pfw5InG0Bmbf
 hTQpbrA+C70xtgD/FQamYywk8Ip8AkQWOoAaZTLSHZXNokY1gwAfZ5wgp
 0YfFlEsUixKdZEFCZAhxtR5toZLlvt3xRd3Y+H1kkGfR78KqkQkGMRnM/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019118"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019118"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841465"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841465"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:20 +0300
Message-Id: <20231006133727.1822579-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/19] drm/i915/dp: Pass only the required DSC
 DPCD to intel_dp_sink_dsc_version_minor()
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

intel_dp_sink_dsc_version_minor() only requires the DSC DPCD, so pass
only this to the function.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eee7eac5e8e9c..d08a206cb1237 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1608,9 +1608,9 @@ static int intel_dp_source_dsc_version_minor(struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
 }
 
-static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
+static int intel_dp_sink_dsc_version_minor(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 {
-	return (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] & DP_DSC_MINOR_MASK) >>
+	return (dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] & DP_DSC_MINOR_MASK) >>
 		DP_DSC_MINOR_SHIFT;
 }
 
@@ -1665,7 +1665,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
 	vdsc_cfg->dsc_version_minor =
 		min(intel_dp_source_dsc_version_minor(i915),
-		    intel_dp_sink_dsc_version_minor(intel_dp));
+		    intel_dp_sink_dsc_version_minor(intel_dp->dsc_dpcd));
 	if (vdsc_cfg->convert_rgb)
 		vdsc_cfg->convert_rgb =
 			intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
@@ -1707,7 +1707,7 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 		break;
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
 		if (min(intel_dp_source_dsc_version_minor(i915),
-			intel_dp_sink_dsc_version_minor(intel_dp)) < 2)
+			intel_dp_sink_dsc_version_minor(intel_dp->dsc_dpcd)) < 2)
 			return false;
 		sink_dsc_format = DP_DSC_YCbCr420_Native;
 		break;
-- 
2.39.2

