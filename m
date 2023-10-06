Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B19957BB935
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0840D10E4F6;
	Fri,  6 Oct 2023 13:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D499310E4F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599438; x=1728135438;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ai98Z+4sPvdJOSGNYjJUmyIjWd7azZxf8ljiyGxf6gY=;
 b=i+Ex98Iy202LSJTBEokbXUHMvOsyBETJbjKWb0UCSAmrsn3dV5cwAlTV
 D+TelnsfSbe/85kgs0p7Eg/JrkzZqHSGEyEIYiO+JIn0PJhcuG5pePN6l
 +kadkq0VhtZU3sp/g/KsNrfB6W0IsOVyPhKn3pTBTdaFd1XGIhh12R9/h
 jwtEeHv00tTCtr6n+FCraloLvYBqoK0M9YUrsmx90M6zjOD8AQnSmd1S4
 dDEMD2QFEoI+q5mnBTU+M7btXSqw0LCRyzr1zkNEkYXvIdfFtNo4Lic8F
 FaYJIuDjQ735CIa5F/DG1N+cljlLkqwM2nyyQekq9v4hjAB2IDYxcO5Zl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019104"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019104"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841426"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841426"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:16 +0300
Message-Id: <20231006133727.1822579-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_supports_dsc()
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

Use the connector's DSC DPCD capabilities in intel_dp_supports_dsc().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8450856e5618d..437bd972fb040 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1377,14 +1377,14 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_fec(connector->dp.fec_capability);
 }
 
-static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
+static bool intel_dp_supports_dsc(const struct intel_connector *connector,
 				  const struct intel_crtc_state *crtc_state)
 {
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
 		return false;
 
 	return intel_dsc_source_support(crtc_state) &&
-		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
+		drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd);
 }
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
@@ -2120,7 +2120,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
 		intel_dp_supports_fec(intel_dp, connector, pipe_config);
 
-	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
+	if (!intel_dp_supports_dsc(connector, pipe_config))
 		return -EINVAL;
 
 	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
-- 
2.39.2

