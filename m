Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B37785602
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 12:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7462510E07E;
	Wed, 23 Aug 2023 10:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC2010E07E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 10:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692787782; x=1724323782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0cT2Ovg+8phM2ufwtnZvT9RcZV3Ph0X1SvWkafpMEg=;
 b=Y9IM3YB/eBci9+nfzVB5XgOWcUySpETxyU/f++oANHqKTrNKzW76zysg
 kjoFl6d2gmdT1OA/AieW0AIEH0bKO90HO6bfcSSM5TZ0ELw+lwam/od3b
 EXYApAzc+KI0tuP0rFSTaHHBRvkP9x48rNyE86XSX5DAcCAKFe4FbWJv/
 uMUUlE85D3Co3AbCgTwiTX98THdcxV1La57dKe51oio3NQBqyRaQvxrAD
 VRdbTvp4jBbeHyebVo+qxcIBiudCYYJL1WOR1NhKZb1T1mEb72WfMrvb3
 9/m/WyNHZkFV/sfEUfnBTj0qnCcPDDqhXL1KF0B13zf7lknbB/Dd+JxWb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="376856955"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="376856955"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 03:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="739730245"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="739730245"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2023 03:49:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 16:17:32 +0530
Message-Id: <20230823104736.495930-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823104736.495930-1-suraj.kandpal@intel.com>
References: <20230823104736.495930-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 3/8] drm/i915/vdsc: Add func to get no. of
 vdsc instances per pipe
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

We have a function that gets us the total of the vdsc engines being
used but not the no. of vdsc instances being used by each pipe.

--v6
-Change function to static

--v7
-Shorten name to intel_dsc_get_vdsc_per_pipe

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 78 +++++++++++++----------
 1 file changed, 44 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 94af579b63d3..fbe8ce9fe1ab 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -356,9 +356,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 }
 
+static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->dsc.dsc_split ? 2 : 1;
+}
+
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
-	int num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
+	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	if (crtc_state->bigjoiner_pipes)
 		num_vdsc_instances *= 2;
@@ -378,6 +383,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	u32 rc_range_params_dword[8];
 	int i = 0;
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	/* Populate PICTURE_PARAMETER_SET_0 registers */
 	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
@@ -407,14 +413,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
 				       pps_val);
@@ -431,14 +437,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
 				       pps_val);
@@ -456,14 +462,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
 				       pps_val);
@@ -481,14 +487,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
 				       pps_val);
@@ -506,14 +512,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
 				       pps_val);
@@ -531,14 +537,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
 				       pps_val);
@@ -558,14 +564,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
 				       pps_val);
@@ -583,14 +589,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
 				       pps_val);
@@ -608,14 +614,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
 				       pps_val);
@@ -633,14 +639,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
 				       pps_val);
@@ -660,14 +666,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
 				       pps_val);
@@ -688,14 +694,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
 				       pps_val);
@@ -709,7 +715,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv,
 			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
 				       pps_val);
@@ -722,7 +728,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv,
 			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
 				       pps_val);
@@ -746,7 +752,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 			       rc_buf_thresh_dword[2]);
 		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
 			       rc_buf_thresh_dword[3]);
-		if (crtc_state->dsc.dsc_split) {
+		if (vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
 				       rc_buf_thresh_dword[0]);
 			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0_UDW,
@@ -765,7 +771,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 			       rc_buf_thresh_dword[2]);
 		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
 			       rc_buf_thresh_dword[3]);
-		if (crtc_state->dsc.dsc_split) {
+		if (vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv,
 				       ICL_DSC1_RC_BUF_THRESH_0(pipe),
 				       rc_buf_thresh_dword[0]);
@@ -811,7 +817,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 			       rc_range_params_dword[6]);
 		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3_UDW,
 			       rc_range_params_dword[7]);
-		if (crtc_state->dsc.dsc_split) {
+		if (vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_0,
 				       rc_range_params_dword[0]);
 			intel_de_write(dev_priv,
@@ -854,7 +860,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv,
 			       ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
 			       rc_range_params_dword[7]);
-		if (crtc_state->dsc.dsc_split) {
+		if (vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv,
 				       ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
 				       rc_range_params_dword[0]);
@@ -960,6 +966,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 	u32 dss_ctl2_val = 0;
+	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	if (!crtc_state->dsc.compression_enable)
 		return;
@@ -967,7 +974,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	intel_dsc_pps_configure(crtc_state);
 
 	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
-	if (crtc_state->dsc.dsc_split) {
+	if (vdsc_instances_per_pipe > 1) {
 		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
@@ -1003,6 +1010,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
+	int vdsc_instances_per_pipe;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -1025,10 +1033,12 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 
 	/* FIXME: add more state readout as needed */
 
+	vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
+
 	/* PPS0 & PPS1 */
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
-		if (crtc_state->dsc.dsc_split) {
+		if (vdsc_instances_per_pipe > 1) {
 			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
 			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
 		}
@@ -1037,7 +1047,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
 		pps1 = intel_de_read(dev_priv,
 				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
-		if (crtc_state->dsc.dsc_split) {
+		if (vdsc_instances_per_pipe > 1) {
 			pps_temp0 = intel_de_read(dev_priv,
 						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
 			pps_temp1 = intel_de_read(dev_priv,
-- 
2.25.1

