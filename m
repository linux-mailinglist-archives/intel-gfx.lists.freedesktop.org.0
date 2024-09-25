Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5C29852EB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6594B10E792;
	Wed, 25 Sep 2024 06:30:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z4e90TN3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D5F10E792
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 06:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727245818; x=1758781818;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ohSiYzvsntjivbQrHRrUNZK9rT6G+Jx1crGrsATO2Yw=;
 b=Z4e90TN3gZfWg5i3dvnw2EIgdb/lEuziac6oJCADc88ILJxox500Dqh9
 fF6A0hKaPaStmQxPz/kFPmzKq4w60yk32LRZglmQCi/ouBAHW9pmqJqRK
 LKnejaEzrj9C7VhaaAZZSNgJ0XLfj/RXCju14jl9THjyF8RJ2JUyQ7N+3
 35UtYkVC1dfop3GdF5TF+Qp3ZNXGBfx5YEMhgxIq4xfYa6Ev0f5c1G2YW
 I2vSNOsU2MhUa07neoeOTrkuCjzWxLtpddv3CZJkjK6A9ysl50X4k1iQy
 nvd+WhivorZ2P2BZL5spf/lAea5MKwSxFAIeVAojIh3pQNPvAD5WrG4rX Q==;
X-CSE-ConnectionGUID: x09XDZ5xT9S5LtOyeHYxCw==
X-CSE-MsgGUID: U/fj2QTfQOyy59MQMOVjyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43794791"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="43794791"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:30:18 -0700
X-CSE-ConnectionGUID: JBqT0YB5RGKEO0EoZWWVYg==
X-CSE-MsgGUID: 1KQ6sYLzRAuJhTt1YXoCJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="94989565"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 24 Sep 2024 23:30:16 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/3] drm/i915/display: Add gmch_panel_fitting in all encoders
Date: Wed, 25 Sep 2024 12:00:31 +0530
Message-Id: <20240925063032.2311796-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925063032.2311796-1-nemesa.garg@intel.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
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

For all encoders add gmch_panel_fitting and remove
pch_panel_fitting as it will be called from pipe_config
after joiner calculation is done.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 8 +++++---
 drivers/gpu/drm/i915/display/intel_dp.c   | 5 ++---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c | 8 +++++---
 drivers/gpu/drm/i915/display/vlv_dsi.c    | 8 +++++---
 5 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 293efc1f841d..cfbfbc815d8c 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1641,9 +1641,11 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_panel_fitting(pipe_config, conn_state);
-	if (ret)
-		return ret;
+	if (HAS_GMCH(i915)) {
+		ret = intel_gch_panel_fitting(pipe_config, conn_state);
+		if (ret)
+			return ret;
+	}
 
 	adjusted_mode->flags = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1fcedfd404b..480cb8dc2948 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3049,9 +3049,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
-	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
+	if (HAS_GMCH(dev_priv)) {
+		ret = intel_gch_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cd9ee171e0df..90b4664f66f8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2345,8 +2345,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (intel_hdmi_is_ycbcr420(pipe_config)) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
+	if (HAS_GMCH(display)) {
+		ret = intel_gch_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index fb4ed9f7855b..c28979b4ac15 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -463,9 +463,11 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	ret = intel_panel_fitting(crtc_state, conn_state);
-	if (ret)
-		return ret;
+	if (HAS_GMCH(i915)) {
+		ret = intel_gch_panel_fitting(crtc_state, conn_state);
+		if (ret)
+			return ret;
+	}
 
 	/*
 	 * XXX: It would be nice to support lower refresh rates on the
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d21f3fb39706..753a883c30c2 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -282,9 +282,11 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_panel_fitting(pipe_config, conn_state);
-	if (ret)
-		return ret;
+	if (HAS_GMCH(dev_priv)) {
+		ret = intel_gch_panel_fitting(pipe_config, conn_state);
+		if (ret)
+			return ret;
+	}
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
-- 
2.25.1

