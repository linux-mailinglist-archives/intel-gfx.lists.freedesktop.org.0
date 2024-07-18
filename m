Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DA19349B3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9BC10E5DC;
	Thu, 18 Jul 2024 08:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jeun7lxa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FFA10E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290645; x=1752826645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bvb10W/CI0p+l9qyX+pQUO9XC0/R1FpqEwTtNaw0VE0=;
 b=Jeun7lxaNFrRpdjx7/xvRF1vXDa11Lx2s05nQZ4gzT7iUaxb3p0twC8y
 D3Q2kz1zT7ljdPtO0bjDNyixUxlKTaOjihTPylKDl06PX1sqzh2bBa2cq
 37UCP8Pdm44hCBuiCneLJ3byui15pufpe+FaQKFUbjVe4HRoXN8PJwcKQ
 ++DgI7t94uM3r0b9J0fRAriBz66mf0DotMoOza7PTpTUb5cBCl3UObZse
 p3UfXlvLoZR9INtVMD0RlOb5LDjvh1c3xMQjUxqGqRAi6hCZsOoT5F6Km
 frlm5HHLyhEQK6T9rCSDfO59XzVSDfzYCyfhPIpmcIezK5GpUsJ1Zlr8l g==;
X-CSE-ConnectionGUID: Xl4Lu4/5R3itoWhsQgNlpw==
X-CSE-MsgGUID: c1g2kBn5TQ6/UR5yeIvtDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706090"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706090"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:25 -0700
X-CSE-ConnectionGUID: GygQbiV0TuaH2MUYe9fVWA==
X-CSE-MsgGUID: KDgR6G3aQCKhcI11o98JNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400700"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/12] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Thu, 18 Jul 2024 13:48:03 +0530
Message-ID: <20240718081803.3338564-13-ankit.k.nautiyal@intel.com>
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

Allow forcing ultrajoiner through debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 +++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 ++++--
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c0a1f2603274..da6d8acf710a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1208,7 +1208,9 @@ bool intel_can_ultrajoiner(const struct intel_encoder *encoder)
 	return IS_DGFX(i915) && DISPLAY_VER(i915) >= 14;
 }
 
-bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
+bool intel_dp_need_ultrajoiner(struct intel_dp *dp,
+			       struct intel_connector *connector,
+			       int clock)
 {
 	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -1216,7 +1218,8 @@ bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
 	if (!intel_can_ultrajoiner(encoder))
 		return false;
 
-	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
+	return clock > (i915->display.cdclk.max_dotclk_freq * 2) ||
+	       connector->force_joined_pipes == INTEL_PIPE_JOINER_ULTRA;
 }
 
 static enum drm_mode_status
@@ -1255,7 +1258,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, connector, target_clock)) {
 		joined_pipes = INTEL_PIPE_JOINER_ULTRA;
 		max_dotclk *= INTEL_PIPE_JOINER_ULTRA;
 	} else if (intel_dp_need_bigjoiner(intel_dp, connector,
@@ -2465,7 +2468,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
+	if (intel_dp_need_ultrajoiner(intel_dp, connector, adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
 	else if (intel_dp_need_bigjoiner(intel_dp, connector,
 					 adjusted_mode->crtc_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6c607a218fbc..b23db3eb477a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -156,7 +156,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,
 			     int hdisplay, int clock);
-bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
+bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp,
+			       struct intel_connector *connector,
+			       int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d4fc4439ce2b..b4351d37b963 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -579,7 +579,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
+	if (intel_dp_need_ultrajoiner(intel_dp, connector,
+				      adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
 	else if (intel_dp_need_bigjoiner(intel_dp, connector,
 					 adjusted_mode->crtc_hdisplay,
@@ -1444,7 +1445,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, intel_connector,
+				      target_clock)) {
 		joined_pipes = INTEL_PIPE_JOINER_BIG;
 		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
-- 
2.45.2

