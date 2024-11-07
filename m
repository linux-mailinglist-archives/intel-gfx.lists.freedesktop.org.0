Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F2F9C1109
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87E410E8EE;
	Thu,  7 Nov 2024 21:37:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yz8KNwEg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E9410E8EC;
 Thu,  7 Nov 2024 21:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015437; x=1762551437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eg5rqXCp7YoxvQztkJqSxsihUN4sjjNLzA6zjsp5FS4=;
 b=Yz8KNwEgBUb4gUQTW86lEIfrLvnAxY4P1ztUHRIi5bKRHkjodXj21aJE
 VnsLnwu0x4m7CDOUnAlMoJm8R8fugTbrZh0onjMeGjQ3g4YhR+gAcdtCl
 +hQaQt/AJoy6xg/oclIlBT+6Ja5ytFfF5mldtGs4M9jB6xPO8yarLYEqf
 hepEN9fKp1ylEv8NnXCBEdp7tIKF+4SHRk4HpPi7AkQNh+nGY/r0MTTxD
 FSTdpAPDSVExMcTa0iGRF7C0eVP57pNEJ5aWGMR1nY+WeFvXqFBO0lLmQ
 OA8uEgeGeTEB3stSYStXokO2hp0ulRB7/3XdYaBwpRYLZfXpIDs8GRRxd g==;
X-CSE-ConnectionGUID: 5H1zEB+cQ7SuuPdfSITVYg==
X-CSE-MsgGUID: drV2vn/5QGWSp0657XVaiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41504428"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="41504428"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:16 -0800
X-CSE-ConnectionGUID: e7OIlgzbRMOc2be+lA6/XQ==
X-CSE-MsgGUID: GH54yHPjQPqoDhR8I+1C4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85171096"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 04/15] drm/i915/display: convert HAS_DOUBLE_BUFFERED_M_N()
 to struct intel_display
Date: Thu,  7 Nov 2024 23:36:38 +0200
Message-Id: <2666c062e7625c9ae788b06aae938711305658cf.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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

Convert HAS_DOUBLE_BUFFERED_M_N() to struct intel_display. Do minimal
drive-by conversions to struct intel_display in the callers while at it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c        | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c             | 4 ++--
 drivers/gpu/drm/i915/display/intel_drrs.c           | 4 +++-
 4 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 14aa171a9eb2..4173738dd91a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5322,6 +5322,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  const struct intel_crtc_state *pipe_config,
 			  bool fastset)
 {
+	struct intel_display *display = to_intel_display(current_config);
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_printer p;
@@ -5562,7 +5563,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
+	if (HAS_DOUBLE_BUFFERED_M_N(display)) {
 		if (!fastset || !pipe_config->update_m_n)
 			PIPE_CONF_CHECK_M_N(dp_m_n);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 34c52680d589..81ec9bd38b78 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -149,7 +149,7 @@ struct intel_display_platforms {
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
-#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
+#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
 #define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
 #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b918363df16..b7ee6eec72a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1719,13 +1719,13 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 
 static bool has_seamless_m_n(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	/*
 	 * Seamless M/N reprogramming only implemented
 	 * for BDW+ double buffered M/N registers so far.
 	 */
-	return HAS_DOUBLE_BUFFERED_M_N(i915) &&
+	return HAS_DOUBLE_BUFFERED_M_N(display) &&
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index bb39eb96e812..0fec01b79b23 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -68,7 +68,9 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
 bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
 				   enum transcoder cpu_transcoder)
 {
-	if (HAS_DOUBLE_BUFFERED_M_N(i915))
+	struct intel_display *display = &i915->display;
+
+	if (HAS_DOUBLE_BUFFERED_M_N(display))
 		return true;
 
 	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
-- 
2.39.5

