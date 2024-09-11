Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8013797534E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B97AF10EA0B;
	Wed, 11 Sep 2024 13:12:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vc/dscrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F54A10EA19
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060341; x=1757596341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pYevCyx4UzwStSTdTer+gbqbJk7N0VpPSL/HdTclEqc=;
 b=Vc/dscrDF95KzL0k42lpYKGNmbMGPlWV6bV7hgclFToIWL+5vTol/YgV
 IjkMdg7iJGD576RilUNur+2CirWa4euznZ3TTiFVOPBe8nKMUh/axPoDV
 OHO0O2P0Q72zQY0UGoA5yNeilIMgOixg5pls+jAIyA+iHanrZdSXLeSAg
 orhv6LaJkEwqW7TufRFDc5MGD+IURjALOao8MPgu7oN3VMyP899eZRooT
 hOH6eIU34v8D8u1xe1lpOOQSurVRGzsuOdjjdOmeKeesiWPMi9AjEVTPc
 txeGWG4OB2Qt6nkWnErRbx15j7wJiGrz4LP28A9lGuFM4S13RuyCWspmY Q==;
X-CSE-ConnectionGUID: 7sJWsuEtQZmrtRZBE1DVDQ==
X-CSE-MsgGUID: NdZ/wacIQoC+XOdp5BonMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244369"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244369"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:21 -0700
X-CSE-ConnectionGUID: zDM6HtY6Q1issQo1ppWRvw==
X-CSE-MsgGUID: cctxEwpLQ9WzieNtcwIM1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380965"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/19] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Date: Wed, 11 Sep 2024 18:43:38 +0530
Message-ID: <20240911131349.933814-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

v2: Use num_pipes 1 where there are no joined pipes (Ville)

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
index 4751ee20216d..decfc72312fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8098,7 +8098,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner)
+				int num_pipes)
 {
 	int plane_width_max, plane_height_max;
 
@@ -8115,7 +8115,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_width_max = 5120 << joiner;
+		plane_width_max = 5120 * num_pipes;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b21d9578d5db..d6af9e3f52a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -415,7 +415,7 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool joiner);
+				int num_pipes);
 enum drm_mode_status
 intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 				const struct drm_display_mode *mode);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6c503b5968d2..63eef9d97f25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1422,7 +1422,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
 }
 
 bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fb067749f3a0..bd069c34c5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1523,7 +1523,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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

