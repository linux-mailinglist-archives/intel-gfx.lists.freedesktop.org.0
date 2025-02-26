Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E51FA45B15
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F66E10E8B5;
	Wed, 26 Feb 2025 10:01:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GuG06vOB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F7810E8B3;
 Wed, 26 Feb 2025 10:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740564094; x=1772100094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FZQ9zlF/0XNiQ/Ltri/+Qsj+bSZVoeYZ2OhHxxpa4kw=;
 b=GuG06vOBwd7v7JKC6QDI/SORYXvFFf/fAMt9gxCV/HsNKYyC1ViqTDd1
 Ua3ff9T/Pin1gbSdFE3IQooBwYHQ2XgQqZU854zfWsmndWHdcD9gXk0U5
 carVDrRyvx3tfxw35/V/qYJ9k/riPbmK3siATrWp0TWxWP9/y8EsoFX4k
 Nw9MByw65D4CFi4BtDywPCNnRBMppSQlJPYMEiJAk/jam8XY5ePeb/N2W
 RZFVOl2KB85V5ixSo+BKzzs8WXM52aHhlsyjk9XdyeMN/imCn6vKByuL0
 yc3U8RYD1gSvvd113UagbyRJjEgG6yjNp3qyIrgYA7B4sCT37O+fmxpFx g==;
X-CSE-ConnectionGUID: 1x09UG8MSk+WLBiJnO+7CQ==
X-CSE-MsgGUID: LIRQhYw/QquXT/FE7F0Rjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="58938408"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="58938408"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:29 -0800
X-CSE-ConnectionGUID: 4i8EnODdSRmhAK51Yjv7Tw==
X-CSE-MsgGUID: zZa+SSv+RwGartf6vZ0slQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117577952"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/pfit: rename intel_panel_fitting() to
 intel_pfit_compute_config()
Date: Wed, 26 Feb 2025 12:01:07 +0200
Message-Id: <33bb513e186c8838acde37f87aee732b63bd5702.1740564009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
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

Unify naming wrt both the prefix and suffix.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c | 2 +-
 drivers/gpu/drm/i915/display/intel_pfit.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_pfit.h | 4 ++--
 drivers/gpu/drm/i915/display/vlv_dsi.c    | 2 +-
 7 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5d3d54922d62..402b7b2e1829 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1647,7 +1647,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_panel_fitting(pipe_config, conn_state);
+	ret = intel_pfit_compute_config(pipe_config, conn_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03ca2e02ab02..826fdd1d6f30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3131,7 +3131,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
 	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
+		ret = intel_pfit_compute_config(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ed017d9de920..33b8d5229db0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2360,7 +2360,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	}
 
 	if (intel_hdmi_is_ycbcr420(pipe_config)) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
+		ret = intel_pfit_compute_config(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 7ed8625193fe..12e5064ff7e2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -468,7 +468,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	ret = intel_panel_fitting(crtc_state, conn_state);
+	ret = intel_pfit_compute_config(crtc_state, conn_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 4ee03d9d14ad..386ab57b9f8d 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -542,8 +542,8 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	return intel_gmch_pfit_check_timings(crtc_state);
 }
 
-int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-			const struct drm_connector_state *conn_state)
+int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
index add8d78de2c9..e7acaa61e1ac 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.h
+++ b/drivers/gpu/drm/i915/display/intel_pfit.h
@@ -9,7 +9,7 @@
 struct drm_connector_state;
 struct intel_crtc_state;
 
-int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-			const struct drm_connector_state *conn_state);
+int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_PFIT_H__ */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 7414794889e9..af717df83197 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -283,7 +283,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_panel_fitting(pipe_config, conn_state);
+	ret = intel_pfit_compute_config(pipe_config, conn_state);
 	if (ret)
 		return ret;
 
-- 
2.39.5

