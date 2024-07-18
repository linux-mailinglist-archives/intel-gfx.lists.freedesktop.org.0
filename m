Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938329349AE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C55310E5D4;
	Thu, 18 Jul 2024 08:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kv+CX1R0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C1F710E5C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290628; x=1752826628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cHypcFmdiN3WQcGValkQbbOOtvnq7CbmgFDdNNtDdhM=;
 b=kv+CX1R0DU6cFFgqfmtjfhy4BLpmBOKlwv/9wj1As45xrFuaFCWqUCfJ
 0zPz9aygI3OCtZBgEcBi3LxRJC38B1pO9Bs7e/v/cy+gia8aw1/iwRWaN
 YNNH3DiK+oIlBjgjIgdqDT11bEwBIKkicl3sF7tMIQOsoIaJQnKkYSJwO
 OtNdAcbC7sT62svhFMDHni0v85OPzxOCNaQ5A59jDTtow73AoGnpQPMaf
 TdvKWMvX1Q0IaumlVL9aUSr3Y8Wuof901TMKpZK4uJUmR6NeSlk1gVMba
 u4yek1MAcM7Y3PBGyhEStlr6I5uQu17JDHSxbRQyLttAz6Uh1wdfqY55k w==;
X-CSE-ConnectionGUID: RZ2f5X8uSgGuqMABjaqfgw==
X-CSE-MsgGUID: IpAKChZXS6+fgaMxmTtfZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706024"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706024"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:08 -0700
X-CSE-ConnectionGUID: auks8T5ETqGcefVOpE6fNA==
X-CSE-MsgGUID: lVPp3p6fRLai8gtIP6d/fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400586"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 03/12] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Date: Thu, 18 Jul 2024 13:47:54 +0530
Message-ID: <20240718081803.3338564-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

In preparation of ultrajoiner, use number of joined pipes in the
intel_mode_valid_max_plane_size helper, instead of joiner flag.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
 6 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eab07a5fa377..26e4b0c2e9f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8081,7 +8081,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner)
+				enum intel_joiner_pipe_count joined_pipes)
 {
 	int plane_width_max, plane_height_max;
 
@@ -8098,7 +8098,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_width_max = 5120 << joiner;
+		plane_width_max = 5120 << joined_pipes / 2;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0aecc3330a53..bf665f947b97 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -31,6 +31,7 @@
 #include "intel_display_limits.h"
 
 enum drm_scaling_filter;
+enum intel_joiner_pipe_count;
 struct dpll;
 struct drm_atomic_state;
 struct drm_connector;
@@ -415,7 +416,7 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner);
+				enum intel_joiner_pipe_count joined_pipes);
 enum drm_mode_status
 intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 				const struct drm_display_mode *mode);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7d66a969c461..320d8b6d1bce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1295,7 +1295,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, joined_pipes);
 }
 
 bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e5797ee13667..3f45ac7ca4d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1491,7 +1491,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joined_pipes);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index bd5888ce4852..acc17546215f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 	if (fixed_mode->clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, INTEL_PIPE_JOINER_NONE);
 }
 
 struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 19498ee455fa..5aa4a9f0c470 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2048,7 +2048,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 			return status;
 	}
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, INTEL_PIPE_JOINER_NONE);
 }
 
 bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
-- 
2.45.2

