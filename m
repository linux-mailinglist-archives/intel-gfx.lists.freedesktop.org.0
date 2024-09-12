Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB5197680D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A7110EB53;
	Thu, 12 Sep 2024 11:42:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bdXz9f6/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A598A10E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 11:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726141321; x=1757677321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dtVPsQ52EP1r2Q9Ry76ZsaJ7Kc6fTIWD0mDv86yB+/A=;
 b=bdXz9f6/Dldz4Z9KT5CvUOlqspFE+W40gE5FO8h1Lxu9A/wA9ViEZSd4
 O10B2SuG+7OZ8xrV9Ak8W1jLpQMCHXjf+B6VNxIfZnYIodIx8Hz1GffOz
 nuYf1RBZcxywV+zUCXich2YyZAJ1LD3eEWLz5HJGuy+iBw/BcjaTCNK/T
 0zznLO8eZ7dYdejfdc5Pv3GbuBhEiJMLOR2sdRP20qyQ6BopT5EJhvcm+
 mwVFi588wOB1Ew46BDK+COp4KJMF2agxa0pJaArqKraXCCRTqRR+U5vF3
 36e64/mTXt2SHSx+NIo6BYQYEorDYC2U6Vpzd42QUDOoep961mme7puFA w==;
X-CSE-ConnectionGUID: HgnUo6wCT3yuXhGbK17CGA==
X-CSE-MsgGUID: 9kh3w+LZQz+NfxOilHEhQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25089224"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25089224"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:42:01 -0700
X-CSE-ConnectionGUID: 1t5ZyLdhQ6yLjKmszjNNVg==
X-CSE-MsgGUID: p0Ch6Hv8TEOb/n+lfgWNWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67675448"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:41:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Date: Thu, 12 Sep 2024 17:13:29 +0530
Message-ID: <20240912114330.1244982-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240912114330.1244982-1-ankit.k.nautiyal@intel.com>
References: <20240912114330.1244982-1-ankit.k.nautiyal@intel.com>
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

In preparation of ultrajoiner, use number of pipes in the
intel_mode_valid_max_plane_size helper, instead of joiner flag.

v2: Use num_joined_pipes 1 where there are no joined pipes (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d10fc998566..1e07780c3510 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8090,7 +8090,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner)
+				int num_joined_pipes)
 {
 	int plane_width_max, plane_height_max;
 
@@ -8107,7 +8107,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_width_max = 5120 << joiner;
+		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7ca26e5cb20e..e136814e0f92 100644
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
index f6900f1ff36f..3646890693c4 100644
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
index 1868747cfb12..51dded1f7e8a 100644
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

