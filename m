Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EC443CB5D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 15:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D575A6E89D;
	Wed, 27 Oct 2021 13:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6483A6E89D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 13:59:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="210943887"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="210943887"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 06:59:05 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="497877015"
Received: from smaharan-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.214.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 06:59:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 27 Oct 2021 16:59:00 +0300
Message-Id: <20211027135900.6329-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dcs: demote noisy drm_info() to
 drm_kms_dbg()
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

The PPS, RC_RANGE_PARAM, and RC_BUF_THRESH logging are clearly for
debugging, and should not be info level messages.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index fa84be609d5d..bf8d3c7ca2d9 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -598,7 +598,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		pps_val |= DSC_422_ENABLE;
 	if (vdsc_cfg->vbr_enable)
 		pps_val |= DSC_VBR_ENABLE;
-	drm_info(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
 			       pps_val);
@@ -622,7 +622,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	/* Populate PICTURE_PARAMETER_SET_1 registers */
 	pps_val = 0;
 	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
-	drm_info(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
 			       pps_val);
@@ -647,7 +647,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
 		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
-	drm_info(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
 			       pps_val);
@@ -672,7 +672,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
 		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
-	drm_info(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
 			       pps_val);
@@ -697,7 +697,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
 		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
-	drm_info(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
 			       pps_val);
@@ -722,7 +722,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
 		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
-	drm_info(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
 			       pps_val);
@@ -749,7 +749,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset) |
 		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
 		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
-	drm_info(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
 			       pps_val);
@@ -774,7 +774,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
 		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
-	drm_info(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
 			       pps_val);
@@ -799,7 +799,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
 		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
-	drm_info(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
 			       pps_val);
@@ -824,7 +824,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
 		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
-	drm_info(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
 			       pps_val);
@@ -851,7 +851,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1) |
 		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
 		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
-	drm_info(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
 			       pps_val);
@@ -879,7 +879,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 				   vdsc_cfg->slice_width) |
 		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
 					vdsc_cfg->slice_height);
-	drm_info(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
+	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
 			       pps_val);
@@ -906,8 +906,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		rc_buf_thresh_dword[i / 4] |=
 			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
 			      BITS_PER_BYTE * (i % 4));
-		drm_info(&dev_priv->drm, " RC_BUF_THRESH%d = 0x%08x\n", i,
-			 rc_buf_thresh_dword[i / 4]);
+		drm_dbg_kms(&dev_priv->drm, "RC_BUF_THRESH_%d = 0x%08x\n", i,
+			    rc_buf_thresh_dword[i / 4]);
 	}
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
@@ -963,8 +963,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 				RC_MAX_QP_SHIFT) |
 			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
 				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
-		drm_info(&dev_priv->drm, " RC_RANGE_PARAM_%d = 0x%08x\n", i,
-			 rc_range_params_dword[i / 2]);
+		drm_dbg_kms(&dev_priv->drm, "RC_RANGE_PARAM_%d = 0x%08x\n", i,
+			    rc_range_params_dword[i / 2]);
 	}
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
-- 
2.30.2

