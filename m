Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDF9947531
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 08:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE16A10E123;
	Mon,  5 Aug 2024 06:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJxqfKPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A1210E126
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 06:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722839161; x=1754375161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fdCOOX90keZo4esmGp3rFdBUfrWpDREHsGPWHxx+NDE=;
 b=CJxqfKPXb2yopJFvCTHvXo+CPuaFSvW58YzbfWtxB3Jw0FD7LCSFEj5I
 vdQUmmTXVNdAciOGUQ3MtyTNWieSyjeJsQqLPFPj8DqdUkYYFeYpzTveJ
 rb/cnbaQhoilIlIbGJBsjP7Fy1xLoPMVVcRChx9iMSS0pBKm32UjuoEoT
 N1aONFsGHJtlwiqqsNdFv3FEMA84VrIbYNdwxtSAfMihgsk2HQv5ZSO5R
 dQccDyl1fc0hENvB1Am690QWV4UG+x5EoJf8eZYaYWrG39T1WfNfy46Xf
 /RvKq32kmVpcLZoXEYEWIWNVNvjSBofCnwAqNXmAV+8frLhMOj/BDv/UK A==;
X-CSE-ConnectionGUID: Ru54SjCZS0yJvTL7xmHMTQ==
X-CSE-MsgGUID: ntSTqND4RumfkpmrE9ZpnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11154"; a="20921311"
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="20921311"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 23:26:01 -0700
X-CSE-ConnectionGUID: /cB3iiriTxWhd4kUyWZRLg==
X-CSE-MsgGUID: AWo1m5wAQyiSKO3JXtlwcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="56260833"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa006.jf.intel.com with ESMTP; 04 Aug 2024 23:26:00 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Date: Mon,  5 Aug 2024 11:55:38 +0530
Message-Id: <20240805062538.1844291-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240805062538.1844291-1-nemesa.garg@intel.com>
References: <20240805062538.1844291-1-nemesa.garg@intel.com>
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

In panel fitter/pipe scaler scenario the pch_pfit configuration
currently takes place before accounting for pipe_src width for
joiner. This causes issue when pch_pfit and joiner get enabled
together.

Introduce a new boolean flag is_required which can be filled
during dp compute_config and later is used to compute panel_fitting in
pipe_config. Modify pch_panel_fitting to handle joiner pipes by adjusting
crtc_hdisplay accordingly.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
 4 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8bbde03f2508..a7194a84b6b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		return ret;
 	}
 
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
+		if (connector_state->crtc != &crtc->base)
+			continue;
+
+		if (crtc_state->pch_pfit.is_required) {
+			ret = intel_panel_fitting(crtc_state, connector_state);
+			if (ret)
+				return ret;
+		}
+	}
+
 	/* Dithering seems to not pass-through bits correctly when it should, so
 	 * only enable it on 6bpc panels and when its not a compliance
 	 * test requesting 6bpc video pattern.
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a04d52dbf6e1..a4ab26d8fa43 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1258,6 +1258,7 @@ struct intel_crtc_state {
 		struct drm_rect dst;
 		bool enabled;
 		bool force_thru;
+		bool is_required;
 	} pch_pfit;
 
 	/* FDI configuration, only valid if has_pch_encoder is set. */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 65182bf69b62..4b707d029206 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2953,9 +2953,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
 	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
-		if (ret)
-			return ret;
+		if (!pipe_config->joiner_pipes) {
+			ret = intel_panel_fitting(pipe_config, conn_state);
+			if (ret)
+				return ret;
+		} else {
+			 /* Incase of bigjoiner panel_fitting is handled during pipe_config */
+			pipe_config->pch_pfit.is_required = true;
+		}
 	}
 
 	pipe_config->limited_color_range =
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index dd18136d1c61..0da45c2330d3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
 	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 
+	if (crtc_state->joiner_pipes)
+		crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
+
 	/* Native modes don't need fitting */
 	if (crtc_hdisplay == pipe_src_w &&
 	    crtc_vdisplay == pipe_src_h &&
-- 
2.25.1

