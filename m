Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73919C55D8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B59410E5C0;
	Tue, 12 Nov 2024 11:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfR1BS6X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2E910E5C6;
 Tue, 12 Nov 2024 11:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731409861; x=1762945861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VN5qtmjm4oc4LGyzF8hg85bDAx1GDM3ScK2fiS90wdE=;
 b=CfR1BS6XwCd6kPiHT1OyIca0lhJSCRbJMmvyyf3l3tzcFsjIQ/fqIkMM
 BzefgsjVDOV0omLV1Gd2aPUq7THtdDDrYIGw0QEtFJ3kE6bEF2mPX/MKO
 DtZJwGlufwBXS08zMFCV/cVVYEwPRG+cl5RoVRc+ctCVQdBD0a47zhR1o
 DM7/UOjzKt/t3JSXLSYP2d8HHiMG6k/EInr11/RyKHJIz1MBld+LlgqHb
 LBKxR4XL6TUN9m9JHoKSUvqGNGYn2wkSR0wzTwSfwpFAaf5og9ZTFoquG
 8fl2wfzRD+XVOyq7Z0/YdM/tRubcb9Tkxz73KG7Nt2ClH0GVXeJHm8XLf Q==;
X-CSE-ConnectionGUID: bfBmtUEmQdOE+nQLi1GKBw==
X-CSE-MsgGUID: OcXj/9IKThyBx0CluN3dSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31094629"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31094629"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:01 -0800
X-CSE-ConnectionGUID: aiDwkiKHRgeDHBDX2jx0bQ==
X-CSE-MsgGUID: kbqsVBRTTlWjdw3yhnOkgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92362625"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:10:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI v2 2/8] drm/i915/mst: rename intel_encoder to encoder
Date: Tue, 12 Nov 2024 13:10:38 +0200
Message-Id: <4d29387fba64b925c6ab4c108782a7b5ac22628a.1731409802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731409802.git.jani.nikula@intel.com>
References: <cover.1731409802.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Switch to the modern style in fake mst encoder creation.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 46 ++++++++++-----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7723f36ad256..4a1c857f113f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1785,7 +1785,7 @@ static struct intel_dp_mst_encoder *
 intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
 {
 	struct intel_dp_mst_encoder *intel_mst;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct drm_device *dev = dig_port->base.base.dev;
 
 	intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);
@@ -1794,16 +1794,16 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 		return NULL;
 
 	intel_mst->pipe = pipe;
-	intel_encoder = &intel_mst->base;
+	encoder = &intel_mst->base;
 	intel_mst->primary = dig_port;
 
-	drm_encoder_init(dev, &intel_encoder->base, &intel_dp_mst_enc_funcs,
+	drm_encoder_init(dev, &encoder->base, &intel_dp_mst_enc_funcs,
 			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
 
-	intel_encoder->type = INTEL_OUTPUT_DP_MST;
-	intel_encoder->power_domain = dig_port->base.power_domain;
-	intel_encoder->port = dig_port->base.port;
-	intel_encoder->cloneable = 0;
+	encoder->type = INTEL_OUTPUT_DP_MST;
+	encoder->power_domain = dig_port->base.power_domain;
+	encoder->port = dig_port->base.port;
+	encoder->cloneable = 0;
 	/*
 	 * This is wrong, but broken userspace uses the intersection
 	 * of possible_crtcs of all the encoders of a given connector
@@ -1812,22 +1812,22 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 	 * To keep such userspace functioning we must misconfigure
 	 * this to make sure the intersection is not empty :(
 	 */
-	intel_encoder->pipe_mask = ~0;
-
-	intel_encoder->compute_config = intel_dp_mst_compute_config;
-	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
-	intel_encoder->disable = intel_mst_disable_dp;
-	intel_encoder->post_disable = intel_mst_post_disable_dp;
-	intel_encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
-	intel_encoder->update_pipe = intel_ddi_update_pipe;
-	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
-	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
-	intel_encoder->enable = intel_mst_enable_dp;
-	intel_encoder->audio_enable = intel_audio_codec_enable;
-	intel_encoder->audio_disable = intel_audio_codec_disable;
-	intel_encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
-	intel_encoder->get_config = intel_dp_mst_enc_get_config;
-	intel_encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
+	encoder->pipe_mask = ~0;
+
+	encoder->compute_config = intel_dp_mst_compute_config;
+	encoder->compute_config_late = intel_dp_mst_compute_config_late;
+	encoder->disable = intel_mst_disable_dp;
+	encoder->post_disable = intel_mst_post_disable_dp;
+	encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
+	encoder->update_pipe = intel_ddi_update_pipe;
+	encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
+	encoder->pre_enable = intel_mst_pre_enable_dp;
+	encoder->enable = intel_mst_enable_dp;
+	encoder->audio_enable = intel_audio_codec_enable;
+	encoder->audio_disable = intel_audio_codec_disable;
+	encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
+	encoder->get_config = intel_dp_mst_enc_get_config;
+	encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
 
 	return intel_mst;
 
-- 
2.39.5

