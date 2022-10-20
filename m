Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14589606082
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4144810E468;
	Thu, 20 Oct 2022 12:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A2A10E104
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666269857; x=1697805857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9EnP3kkVp7NRenLjoHz97J1p5M3uLaWUvZJSAGDPqf4=;
 b=Bmz+1W1xD7GeSFQWo23AB+AgVXx30xuNYJuZg7x9nBKc6i/YhrnV2xkd
 8ZrjkmQ6kweWryl1EGux093DiWbvAK1pgk3Xejqfgbiidw9uIYfh0qp/D
 XijD2ZreOF6ZeGB/gkV3XjRJ7NASyu+ADjhj9oo1wWzeXlS+TxFARR4YQ
 CCysDZpgmxD8GGEwsWz0UuFAhDp1iSblWW4a47EhFWrZFWDcNWPAne20P
 qKuvusDuE1YGLPyedkEUoe5RUn7Gvj290kdlL/2cL6b/Ba63AYemcHrM6
 k86+JpV0Gz2NLjdeJZj7NNqNN60wVZWS1OCL8A/XrCx/aJK8zWn6ZU4eV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="294089817"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="294089817"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:44:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="804856350"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804856350"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:44:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 18:14:35 +0530
Message-Id: <20221020124437.2429511-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221020124437.2429511-1-ankit.k.nautiyal@intel.com>
References: <20221020124437.2429511-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/dp: Check if force dsc bpc <=
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
index a060903891b2..0d087ef11d3c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1473,7 +1473,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-	int pipe_bpp;
+	int pipe_bpp, pipe_bpp_max;
 	int ret;
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
@@ -1482,11 +1482,23 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	/*
+	 * If Force DSC BPC is set, try to use that to compute the pipe bpp,
+	 * otherwise set pipe_bpp to the max bpp.
+	 */
+	pipe_bpp_max = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
-	if (intel_dp->force_dsc_bpc) {
+	if (intel_dp->force_dsc_bpc &&
+	    intel_dp->force_dsc_bpc <= conn_state->max_requested_bpc) {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
 		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
+	} else if (intel_dp->force_dsc_bpc < conn_state->max_requested_bpc) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Ignoring force dsc bpc:%d, conflict with max requested bpc:%d",
+			    intel_dp->force_dsc_bpc, conn_state->max_requested_bpc);
+		pipe_bpp = pipe_bpp_max;
+	} else {
+		pipe_bpp = pipe_bpp_max;
 	}
 
 	/* Min Input BPC for ICL+ is 8 */
@@ -1496,12 +1508,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

