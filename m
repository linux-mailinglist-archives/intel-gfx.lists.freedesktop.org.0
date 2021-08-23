Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6683F4E46
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5E489CD7;
	Mon, 23 Aug 2021 16:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638EC6E094
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:20:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="280855069"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="280855069"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:20:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="507310049"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:18 +0300
Message-Id: <3deffa9bbf2a17719f0c0cbe4c9f71a133eb95f9.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
References: <cover.1629735412.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/19] drm/i915/dg2: use 128b/132b transcoder
 DDI mode
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

128b/132b has a separate transcoder DDI mode, which also requires the
MST transport select to be set. Note that we'll use DP MST also for
single-stream 128b/132b.

Having the FDI and 128b/132b modes share the register mode value
complicates things a bit.

v2:
- Use HAS_DP20 abstraction for 128b/132b mode (Ville)
- Use intel_dp_is_uhbr() helper

Bspec: 50493
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 27 ++++++++++++++++++------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d885a4c0fb39..bbc2e052075d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -505,7 +505,10 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		temp |= (crtc_state->fdi_lanes - 1) << 1;
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
-		temp |= TRANS_DDI_MODE_SELECT_DP_MST;
+		if (intel_dp_is_uhbr(crtc_state))
+			temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
+		else
+			temp |= TRANS_DDI_MODE_SELECT_DP_MST;
 		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
 
 		if (DISPLAY_VER(dev_priv) >= 12) {
@@ -693,7 +696,12 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 		break;
 
 	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		ret = type == DRM_MODE_CONNECTOR_VGA;
+		if (HAS_DP20(dev_priv))
+			/* 128b/132b */
+			ret = false;
+		else
+			/* FDI */
+			ret = type == DRM_MODE_CONNECTOR_VGA;
 		break;
 
 	default:
@@ -780,8 +788,9 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		if ((tmp & port_mask) != ddi_select)
 			continue;
 
-		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) ==
-		    TRANS_DDI_MODE_SELECT_DP_MST)
+		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
+		    (HAS_DP20(dev_priv) &&
+		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
 			mst_pipe_mask |= BIT(p);
 
 		*pipe_mask |= BIT(p);
@@ -3572,9 +3581,6 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
 		pipe_config->lane_count = 4;
 		break;
-	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
-		break;
 	case TRANS_DDI_MODE_SELECT_DP_SST:
 		if (encoder->type == INTEL_OUTPUT_EDP)
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_EDP);
@@ -3603,6 +3609,13 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			pipe_config->infoframes.enable |=
 				intel_hdmi_infoframes_enabled(encoder, pipe_config);
 		break;
+	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
+		if (!HAS_DP20(dev_priv)) {
+			/* FDI */
+			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
+			break;
+		}
+		fallthrough; /* 128b/132b */
 	case TRANS_DDI_MODE_SELECT_DP_MST:
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_DP_MST);
 		pipe_config->lane_count =
-- 
2.20.1

