Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2003E807C93
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 00:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2FF10E7A6;
	Wed,  6 Dec 2023 23:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9CBC10E091
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 23:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701906803; x=1733442803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HBQKTQ7RMn5Qe7g0JP0KQnucvIjjtK+MSXPDG4rEqto=;
 b=gkho1uXxt4LUMDqbqvBJojhsxszX60X55Qvdy27KtIVBdKJxr+5LeaIB
 Kin68vqyp8jZYI/CiBCbaCRwFRXYl9iazd2pLJ3ESfoAtwV1ym6ESC1VJ
 RXF/sVsaQnNwHTsg93/tpMfUDVfYsi555P5pDqHANvr1uxokG+7D1qDyE
 Zqy3MONZmss5blGsK6KU8GbrcWvhEQMZKgEodBeRJGHTdfVLWs7LB1SSd
 yZb1Xoi237dBomoSYua9vkQ2+jpv/gJoVAVagShu6m6pA8Qm1g7903P0l
 cPiTJ8WXuzM6Mdu+LYLaVeZaE1hYAYihcCYf2T3C88YebjCGVCOsC1Pzv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="396932576"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="396932576"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="800524690"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="800524690"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2023 15:53:23 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Dec 2023 15:53:19 -0800
Message-Id: <20231206235319.3205232-3-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231206235319.3205232-1-khaled.almahallawy@intel.com>
References: <20231206235319.3205232-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/dp: Fix passing the correct
 DPCD_REV for drm_dp_set_phy_test_pattern
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using link_status to get DPCD_REV fails when disabling/defaulting
phy pattern. Use intel_dp->dpcd to access DPCD_REV correctly.

Fixes: 8cdf72711928 ("drm/i915/dp: Program vswing, pre-emphasis, test-pattern")
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 579ec63002fa..2a89a4351d27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4779,7 +4779,7 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 			  intel_dp->train_set, crtc_state->lane_count);
 
 	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
-				    link_status[DP_DPCD_REV]);
+				    intel_dp->dpcd[DP_DPCD_REV]);
 }
 
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
-- 
2.34.1

