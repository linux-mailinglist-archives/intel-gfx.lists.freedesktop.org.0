Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD1C979F40
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 12:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64A010E33E;
	Mon, 16 Sep 2024 10:26:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dhU5F+Z1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D762010E342
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 10:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726482414; x=1758018414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0JUCalTUUAlQuouvy41rihhULQcJiwkD2UwrsdKc5M=;
 b=dhU5F+Z18Evysda7X9UFcT2taGSll3j0NJZ21z383GqvF+uEDtbM/3pe
 FBS/PhX3Ea2TuraPHRXlWMSyhn+ZHOsyBy2IXir0cJ+2RE0V1NKGXlwB1
 IjElF4sWb7WCv5FRQObveBBDO5F8+H6ixM20BVKrBDW3H6bcH8o1ehvp8
 LoHQ9T5tvSpCK9pEjraYyOy1S1MCACr8FDO0BvkKL+Wcn4K1u/RrJiCym
 uSPXJ0jsrCdvNPSRy0FUvn0eo3tgpAS++bYuy2m2tjuUbxc7nU2mEnwH8
 /pHq+75usDoQ2DRYvBY0ht3LTEfYRfMSSQSA4+nO4Y2I6qCMCuI7bybNh A==;
X-CSE-ConnectionGUID: fe0a677nQiy0WkibTDnaew==
X-CSE-MsgGUID: oCg0os3WTLGggJBt+SnfXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25428504"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="25428504"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:54 -0700
X-CSE-ConnectionGUID: 9SLYSf2dQjWoAPKuYoMERQ==
X-CSE-MsgGUID: Oy1OL8ahQ6uYYB85shfL4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99678261"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Date: Mon, 16 Sep 2024 15:58:35 +0530
Message-ID: <20240916102836.2149012-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
References: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In preparation of ultrajoiner, use number of pipes in the
intel_mode_valid_max_plane_size helper, instead of joiner flag.

v2: Use num_joined_pipes 1 where there are no joined pipes (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 653e4ffd4b9f..b769c26e3386 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8093,7 +8093,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner)
+				int num_joined_pipes)
 {
 	int plane_width_max, plane_height_max;
 
@@ -8110,7 +8110,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_width_max = 5120 << joiner;
+		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 08d2466f8ef2..df3bd9350aaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -416,7 +416,7 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner);
+				int num_joined_pipes);
 enum drm_mode_status
 intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 				const struct drm_display_mode *mode);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6cd4f126fb91..3157cfbe5555 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1413,7 +1413,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
 }
 
 bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8600ac55f766..1b94dfe9499a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1524,7 +1524,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index bd5888ce4852..0be46c6c9611 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 	if (fixed_mode->clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, 1);
 }
 
 struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 869fa00f7ef2..72ac910bf6ec 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2057,7 +2057,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 			return status;
 	}
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, 1);
 }
 
 bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
-- 
2.45.2

