Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99543F0ADB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071486E8A1;
	Wed, 18 Aug 2021 18:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389C26E8A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:11:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216119857"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="216119857"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:11:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="505768380"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:11:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:43 +0300
Message-Id: <6453332776078a7813ea9cc51ab50d7feb7b6175.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/17] drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL
 DP 2.0 128b/132b mode
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

Unfortunately, the DP 2.0 128b/132b DDI mode selection in the register
conflicts with FDI. Since we have to deal with both meanings in the same
code, for different platforms, clarify the macro name so we don't
forget.

Bspec: 50493
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1ef7a65feb66..203a54f905f6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -488,7 +488,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 		if (crtc_state->hdmi_high_tmds_clock_ratio)
 			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
-		temp |= TRANS_DDI_MODE_SELECT_FDI;
+		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		temp |= (crtc_state->fdi_lanes - 1) << 1;
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
 		temp |= TRANS_DDI_MODE_SELECT_DP_MST;
@@ -678,7 +678,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 		ret = false;
 		break;
 
-	case TRANS_DDI_MODE_SELECT_FDI:
+	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
 		ret = type == DRM_MODE_CONNECTOR_VGA;
 		break;
 
@@ -3557,7 +3557,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
 		pipe_config->lane_count = 4;
 		break;
-	case TRANS_DDI_MODE_SELECT_FDI:
+	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
 		break;
 	case TRANS_DDI_MODE_SELECT_DP_SST:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f9d4e908bf93..18083ae8a877 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10167,7 +10167,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_MODE_SELECT_DVI	(1 << 24)
 #define  TRANS_DDI_MODE_SELECT_DP_SST	(2 << 24)
 #define  TRANS_DDI_MODE_SELECT_DP_MST	(3 << 24)
-#define  TRANS_DDI_MODE_SELECT_FDI	(4 << 24)
+#define  TRANS_DDI_MODE_SELECT_FDI_OR_128B132B	(4 << 24)
 #define  TRANS_DDI_BPC_MASK		(7 << 20)
 #define  TRANS_DDI_BPC_8		(0 << 20)
 #define  TRANS_DDI_BPC_10		(1 << 20)
-- 
2.20.1

