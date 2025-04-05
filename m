Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 361B3A7C71D
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Apr 2025 02:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EBE10E34A;
	Sat,  5 Apr 2025 00:34:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DEAIWKIv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF08210E291
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Apr 2025 00:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743813278; x=1775349278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YlsctkxpcVLambWSM0uNW8Oja2Ri37lslG+VkxxXSaQ=;
 b=DEAIWKIvjserlcr86QGj5G5BJ7JtQHXScJfmFnZhSK94m0i/hLYZuMJO
 cTCrmc5AxgKSxraN88o2EKtbPcfTDDVR3Bl6IpOkzQkKuv+BbENiJa2GS
 e4ixeeF8jnYJwkdQkbG3qOnzNOxx+oj0gqUkXden/Umu/zqPHiulveQ8Z
 5yl0TYCurFfC5Qs/jNkcMS8dlGdDOkhDoS9q1yBVdLcNDe7fHU/VwvL9P
 PuyBQWsfCDisbbEU2Wxxw/ULBg7OpNG2xkAPuIuulgx0cheW6FEWj0YtE
 AFQ6VuquFTWg60o7/7cCMiTn3lJrCL1uFYBPIc+4wltruiFtqsWHJd8Bl Q==;
X-CSE-ConnectionGUID: jEz4ieF4Q1aC0ZYqLxUP5g==
X-CSE-MsgGUID: igKpmzS5TPuUeLql7RFfgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="62812765"
X-IronPort-AV: E=Sophos;i="6.15,189,1739865600"; d="scan'208";a="62812765"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 17:34:37 -0700
X-CSE-ConnectionGUID: MzgNcFHKS4qiIW96SOvmNA==
X-CSE-MsgGUID: dEX9iZtuSTm+ou6FWDSWWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,189,1739865600"; d="scan'208";a="158429496"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa002.jf.intel.com with ESMTP; 04 Apr 2025 17:34:37 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Charlton Lin <charlton.lin@intel.com>
Subject: [PATCH v2 2/2] drm/i915/dp: Handle LT fallback modes when sink/lttpr
 changes supported config
Date: Fri,  4 Apr 2025 17:34:34 -0700
Message-ID: <20250405003434.641638-2-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250405003434.641638-1-khaled.almahallawy@intel.com>
References: <20250405003434.641638-1-khaled.almahallawy@intel.com>
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

During LT fallback, sometimes the sink/LTTPR reports a different lane
count than what it reported previously. This can cause
intel_dp->link.num_configs to have a different value than before,
meaning that the previous link_rate/lane_config no longer exists, which
results in the LT fallback failing prematurely and blank screen.

This issue was observed on an MTL RVP using an Asus DP2.1 monitor:

[  226.207376] AUX USBC2/DDI TC2/PHY TC2: 0xf0000 AUX -> (ret=  8) 20 1e 80 aa 04 00 01 03
[  226.222334] AUX USBC2/DDI TC2/PHY TC2: 0x00000 AUX -> (ret= 15) 12 14 c4 81 01 00 03 c0 02 00 06 00 00 00 82
[  226.236312] intel_dp_link_config_init 711 num_common_rates=5 num_common_lanes_configs=3 num_configs=15

[  227.305515] AUX USBC2/DDI TC2/PHY TC2: 0xf0000 AUX -> (ret=  8) 20 1e 62 aa 01 00 01 00
[  227.308100] AUX USBC2/DDI TC2/PHY TC2: 0x00000 AUX -> (ret= 15) 12 14 c4 81 01 00 03 c0 02 00 06 00 00 00 82
[  227.315679] intel_dp_link_config_init 711 num_common_rates=5 num_common_lanes_configs=1 num_configs=5

Fix this by choosing the lowest config (link_rate/lane_count).

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Charlton Lin <charlton.lin@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 26db4c49deec..7d2f1e540699 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1199,6 +1199,15 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 	int i;
 
 	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
+
+	if (i < 0) {
+		/* Old config is not located. Skip to the lowest*/
+		intel_dp_link_config_get(intel_dp, 0, &link_rate, &lane_count);
+		*new_link_rate = link_rate;
+		*new_lane_count = lane_count;
+		return true;
+	}
+
 	for (i--; i >= 0; i--) {
 		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
 
-- 
2.43.0

