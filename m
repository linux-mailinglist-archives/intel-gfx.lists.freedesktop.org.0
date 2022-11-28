Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC2163A5ED
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DD510E2C7;
	Mon, 28 Nov 2022 10:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F0A10E2C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669630719; x=1701166719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mte/8sVFWLiQp8kICGgNCRgl0TZNMvViXpBWs+0DjQA=;
 b=hXz11S9g3EZ6WHZ4+5o1oZ5EKZkApPFVBoMcy3NlHLnbYb4ikN9vCuxo
 rbIY44M2VPTyGsJEHAEncPoWMI+Qk914iK9igHYnz6BxMjz4dx0j/EW1T
 tl+ZC2I+wnLaSEPMAc9OEqSfiZL7nWIVgZoNW00F7tIJQ00Dhlamkij9K
 sXEKZlGcWgqgazrCFwhuouOqdqoXVG61nKxoygPUBfFhJKW/JhbGX7uqi
 kYxcINMgJ15vx9L8BBsGmBXQobh7/uMQwrQOep6FkOCd4TX2Y+cAKpnaQ
 WiTEBaHSg0pa3J92RHpaq5wlnZwgW1gG8tQLhpan49QAtGKkthyZUUOdG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="294500113"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="294500113"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="749319724"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="749319724"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:27 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:49:12 +0530
Message-Id: <20221128101922.217217-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915/dp: Check if force dsc bpc <=
 max requested bpc
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

Add a check to use force DSC bpc only if its less that the connector max
requested bpc.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 67089711d9e2..30e8a4bd43ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1474,7 +1474,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-	int pipe_bpp;
+	int pipe_bpp, pipe_bpp_max;
 	int ret;
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
@@ -1483,9 +1483,21 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	/*
+	 * If Force DSC BPC is set, try to use that to compute the pipe bpp,
+	 * otherwise set pipe_bpp to the max bpp.
+	 */
+	pipe_bpp_max = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
-	if (intel_dp->force_dsc_bpc) {
+	if (!intel_dp->force_dsc_bpc) {
+		pipe_bpp = pipe_bpp_max;
+	} else if (intel_dp->force_dsc_bpc &&
+		   intel_dp->force_dsc_bpc > conn_state->max_requested_bpc) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Ignoring force dsc bpc:%d, conflict with max requested bpc:%d",
+			    intel_dp->force_dsc_bpc, conn_state->max_requested_bpc);
+		pipe_bpp = pipe_bpp_max;
+	} else {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
 		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
 	}
@@ -1497,12 +1509,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 	}
 
+	pipe_config->pipe_bpp = pipe_bpp;
+
 	/*
-	 * For now enable DSC for max bpp, max link rate, max lane count.
+	 * For now enable DSC for max link rate, max lane count.
 	 * Optimize this later for the minimum possible link rate/lane count
 	 * with DSC enabled for the requested mode.
 	 */
-	pipe_config->pipe_bpp = pipe_bpp;
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-- 
2.25.1

