Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A5A9967E7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B225010E1C1;
	Wed,  9 Oct 2024 11:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJgiuBfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575D210E1C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 11:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728471667; x=1760007667;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Rqje/2SLp1vM6B7z2WIqthvYMDxlJyUs2JZFkjnGa0=;
 b=PJgiuBfTDmte2znQI7UlNujo6j3mUHHpvO4wUf3QYTMHkYeKID6CeaQw
 bENAzjhGe2E7ABN+9O75nEdRztO6nP7q17y982FJUu20ku0a+V7ZNmebt
 E+pQQlNa3b5QhZIrCi7PBOBmcLXN676Un6BHhpkvFO3LR+gVHz6BteXOa
 Nq460slNAjNM5enHMKPWqLRpmc6YN/fuXIYn+Zhrnj8DCQQYGb0zTcFMz
 bhTjfhK9kutfdGnvgAq0m1HjC+GDSnc3MjUsyyaM7xJDYkZdbtNeP+unf
 /w57vM+mwoc6GRRk6QN8xnqB/gzZ35gtmMyrJJneD94FFTrt5BHqQdJI+ Q==;
X-CSE-ConnectionGUID: rBdrPqitSgeuKkvkXCejbw==
X-CSE-MsgGUID: F/UOe1j7RBqRtX4QxyaLbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31653628"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31653628"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:01:07 -0700
X-CSE-ConnectionGUID: Cx0hTfiYSpO/IvcRIKf91w==
X-CSE-MsgGUID: BYxOCyitRMG5Zx3FBrwPQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76659548"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:01:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/dp_mst: Handle error during DSC BW
 overhead/slice calculation
Date: Wed,  9 Oct 2024 14:01:34 +0300
Message-ID: <20241009110135.1216498-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

The MST branch device may not support the number of DSC slices a mode
requires, handle the error in this case.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 39 ++++++++++++++-------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c15..2822ae1160034 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -90,27 +90,19 @@ static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 
 static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 				    const struct intel_connector *connector,
-				    bool ssc, bool dsc, int bpp_x16)
+				    bool ssc, int dsc_slice_count, int bpp_x16)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
-	int dsc_slice_count = 0;
 	int overhead;
 
 	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
 	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
-	if (dsc) {
-		int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
-
+	if (dsc_slice_count)
 		flags |= DRM_DP_BW_OVERHEAD_DSC;
-		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
-							       adjusted_mode->clock,
-							       adjusted_mode->hdisplay,
-							       num_joined_pipes);
-	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
 				      adjusted_mode->hdisplay,
@@ -156,6 +148,19 @@ static int intel_dp_mst_calc_pbn(int pixel_clock, int bpp_x16, int bw_overhead)
 	return DIV_ROUND_UP(effective_data_rate * 64, 54 * 1000);
 }
 
+static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connector,
+					    const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
+
+	return intel_dp_dsc_get_slice_count(connector,
+					    adjusted_mode->clock,
+					    adjusted_mode->hdisplay,
+					    num_joined_pipes);
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -175,6 +180,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int bpp, slots = -EINVAL;
+	int dsc_slice_count = 0;
 	int max_dpt_bpp;
 	int ret = 0;
 
@@ -206,6 +212,15 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
 		    min_bpp, max_bpp);
 
+	if (dsc) {
+		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, crtc_state);
+		if (!dsc_slice_count) {
+			drm_dbg_kms(&i915->drm, "Can't get valid DSC slice count\n");
+
+			return -ENOSPC;
+		}
+	}
+
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		int local_bw_overhead;
 		int remote_bw_overhead;
@@ -219,9 +234,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 					       intel_dp_output_bpp(crtc_state->output_format, bpp));
 
 		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
-							     false, dsc, link_bpp_x16);
+							     false, dsc_slice_count, link_bpp_x16);
 		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
-							      true, dsc, link_bpp_x16);
+							      true, dsc_slice_count, link_bpp_x16);
 
 		intel_dp_mst_compute_m_n(crtc_state, connector,
 					 local_bw_overhead,
-- 
2.44.2

