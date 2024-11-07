Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B6B9C0FC2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13FE10E8DC;
	Thu,  7 Nov 2024 20:32:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iwYN4YIf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C956F10E8DC;
 Thu,  7 Nov 2024 20:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731011559; x=1762547559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jm/rNj6RBQD2lFwitYU+TYDp1ZJKqOUuRQKxdQChwhc=;
 b=iwYN4YIf/dxK67lbib31B38e9BUTh0PFYnj0NgujPoqTywDmqWdnPpgR
 zSk1f+v3wrgYXmMBbD1hHN6uerj98PdnQCLCno0qqVH3RbVuAb8d9YQti
 +AXVFM8tqriBol2X5jO/vaj39pHnpnjzoCeA/Q4YQ9J0wJMD8/h5ftjdg
 FPW6hLvBF3FzZhTDlCS6XjHMR7prQnhSYCDqd9GQGBOaHRZOHbWIdgIN6
 Niozx0TsER38AJF/djmgebfV603ZYvHOcGElxx8qbnIhT2VKozddr9YA2
 3ZnqqOVtdD569xBNogNXygQ0sPuVPntB269WdelY38YjSMOX5LaEtjnzm Q==;
X-CSE-ConnectionGUID: YIjO+0/ZRsC+y/WYvPo3zw==
X-CSE-MsgGUID: 4j8Ro1+bTsqWAUYcuBRR1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41439185"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41439185"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:39 -0800
X-CSE-ConnectionGUID: dodk395HQSCp/mWb5/X+qw==
X-CSE-MsgGUID: IRY8KfQPR2O4KM8GPzKLfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="122738347"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 2/8] drm/i915/mst: rename intel_encoder to encoder
Date: Thu,  7 Nov 2024 22:32:15 +0200
Message-Id: <7d1ce8b92af607603cb32e00b862014eebc05d20.1731011435.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731011435.git.jani.nikula@intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 46 ++++++++++-----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9670a48586ea..7b03ec571464 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1784,7 +1784,7 @@ static struct intel_dp_mst_encoder *
 intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
 {
 	struct intel_dp_mst_encoder *intel_mst;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct drm_device *dev = dig_port->base.base.dev;
 
 	intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);
@@ -1793,16 +1793,16 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
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
@@ -1811,22 +1811,22 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
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

