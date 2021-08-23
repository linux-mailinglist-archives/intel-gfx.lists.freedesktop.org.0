Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FEE3F4E37
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BB46E077;
	Mon, 23 Aug 2021 16:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74AF76E077
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:19:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="278148322"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="278148322"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:08 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="683375081"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:09 +0300
Message-Id: <a449e984e14ee0a493a471fad54dc49deb72a5cd.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
References: <cover.1629735412.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/19] drm/i915/dg2: add DG2+
 TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode
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
index bd400553f9ea..93b51ba2da87 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10169,7 +10169,7 @@ enum skl_power_gate {
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

