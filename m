Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A6076E0CA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 09:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D226910E59F;
	Thu,  3 Aug 2023 07:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8FC510E080
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 07:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691046348; x=1722582348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zimyr2Dt4/KlQGylzIwlh5qQ9U8+rYrajPvN9ruR01o=;
 b=Tjp1QjazGpHI2PHFIYFXhGmCCeW+LUZJebgg+gKmASeG3SFRZu6aKkY3
 7n7IdRp4gM8dIw6iRp4TOQdqHwMydShYflElapAM6PxQkW7Dbt9lUAFEd
 pp1GkluO9WEmDXVl1w2dbu2abWAROB6XOglt0yftBsl/5JLogpYpPQG0x
 NfUIe4EGA6bs4J7JUlhjRpPKeuVJnCFvTYHveYwcBqWgKCiMG2MSoTjG9
 BYE8UwBGI2A2hJLQiUi/+LB+wuR8lBDSgXZad1pD3vJpYiQsuwGPSs3n+
 jb3QrA7Z8c7S7teYVXIvRFVCSq6PcXk84Z9LTqgYTFMAsGh6u7WC9PsXI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="354702796"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="354702796"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 00:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="794882081"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="794882081"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 03 Aug 2023 00:05:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 12:33:41 +0530
Message-Id: <20230803070346.3776690-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230803070346.3776690-1-suraj.kandpal@intel.com>
References: <20230803070346.3776690-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/8] drm/i915/vdsc: Add func to get no. of
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 78 +++++++++++++----------
 1 file changed, 44 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 4437ade8fa87..210ea5caa953 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -350,9 +350,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 }
 
+int intel_dsc_get_no_vdsc_inst_per_pipe(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->dsc.dsc_split ? 2 : 1;
+}
+
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
-	int num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
+	int num_vdsc_instances = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
 
 	if (crtc_state->bigjoiner_pipes)
 		num_vdsc_instances *= 2;
@@ -372,6 +377,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	u32 rc_range_params_dword[8];
 	int i = 0;
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
 
 	/* Populate PICTURE_PARAMETER_SET_0 registers */
 	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
@@ -401,14 +407,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
 				       pps_val);
@@ -425,14 +431,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
 				       pps_val);
@@ -450,14 +456,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
 				       pps_val);
@@ -475,14 +481,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
 				       pps_val);
@@ -500,14 +506,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
 				       pps_val);
@@ -525,14 +531,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
 				       pps_val);
@@ -552,14 +558,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
 				       pps_val);
@@ -577,14 +583,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
 				       pps_val);
@@ -602,14 +608,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
 				       pps_val);
@@ -627,14 +633,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
 				       pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
 				       pps_val);
@@ -654,14 +660,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
 				       pps_val);
@@ -682,14 +688,14 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
 	} else {
 		intel_de_write(dev_priv,
 			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
 				       pps_val);
@@ -703,7 +709,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv,
 			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
 				       pps_val);
@@ -716,7 +722,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv,
 			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
 			       pps_val);
-		if (crtc_state->dsc.dsc_split)
+		if (no_vdsc_instances_per_pipe > 1)
 			intel_de_write(dev_priv,
 				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
 				       pps_val);
@@ -740,7 +746,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 			       rc_buf_thresh_dword[2]);
 		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
 			       rc_buf_thresh_dword[3]);
-		if (crtc_state->dsc.dsc_split) {
+		if (no_vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
 				       rc_buf_thresh_dword[0]);
 			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0_UDW,
@@ -759,7 +765,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 			       rc_buf_thresh_dword[2]);
 		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
 			       rc_buf_thresh_dword[3]);
-		if (crtc_state->dsc.dsc_split) {
+		if (no_vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv,
 				       ICL_DSC1_RC_BUF_THRESH_0(pipe),
 				       rc_buf_thresh_dword[0]);
@@ -805,7 +811,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 			       rc_range_params_dword[6]);
 		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3_UDW,
 			       rc_range_params_dword[7]);
-		if (crtc_state->dsc.dsc_split) {
+		if (no_vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_0,
 				       rc_range_params_dword[0]);
 			intel_de_write(dev_priv,
@@ -848,7 +854,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv,
 			       ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
 			       rc_range_params_dword[7]);
-		if (crtc_state->dsc.dsc_split) {
+		if (no_vdsc_instances_per_pipe > 1) {
 			intel_de_write(dev_priv,
 				       ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
 				       rc_range_params_dword[0]);
@@ -954,6 +960,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 	u32 dss_ctl2_val = 0;
+	int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
 
 	if (!crtc_state->dsc.compression_enable)
 		return;
@@ -961,7 +968,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	intel_dsc_pps_configure(crtc_state);
 
 	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
-	if (crtc_state->dsc.dsc_split) {
+	if (no_vdsc_instances_per_pipe > 1) {
 		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
@@ -997,6 +1004,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
+	int no_vdsc_instances_per_pipe;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -1019,10 +1027,12 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 
 	/* FIXME: add more state readout as needed */
 
+	no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
+
 	/* PPS0 & PPS1 */
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
-		if (crtc_state->dsc.dsc_split) {
+		if (no_vdsc_instances_per_pipe > 1) {
 			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
 			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
 		}
@@ -1031,7 +1041,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
 		pps1 = intel_de_read(dev_priv,
 				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
-		if (crtc_state->dsc.dsc_split) {
+		if (no_vdsc_instances_per_pipe > 1) {
 			pps_temp0 = intel_de_read(dev_priv,
 						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
 			pps_temp1 = intel_de_read(dev_priv,
-- 
2.25.1

