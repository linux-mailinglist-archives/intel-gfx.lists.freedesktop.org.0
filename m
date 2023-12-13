Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0459181207F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 22:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360A110E857;
	Wed, 13 Dec 2023 21:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDA010E856
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 21:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702502153; x=1734038153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j3kyBf64rweC3kHuTO5LhG8ZwsRwqKGC/JSvAkUwnRs=;
 b=LDDnMpdD0djZYlNNDP4mpxqi30BYyjWUZoowXGfng2V7VehdYK+lq0BU
 Sg7ZapXUmumYWjruOfalHKo7gsCxBd3145EKSb6DETqv33hmFvms775Ow
 xFkrrONWhL2Tpb8aMqR/CN/8S5jYJP+zIW6s0iVU4iQsDAI01S/J4YSvI
 o3zVUNKjVVs/my+CHhaclix7yi177bR/6rLAD8oyI95JkohaPlGWBg1Zv
 gK5ZpjqOUoQ6/4keY/4M42y4C/FL/2kH/5D9taGN4Bxfqfys+RKRLh2E/
 KaJ/porhXBM5XQEYF/6NVtM9iPGKggoN2HJXGINie9GKn2KOqZ8PpL7XO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="13724264"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="13724264"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 13:15:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="864758188"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="864758188"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2023 13:15:51 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v4 3/3] drm/i915/dp: Fix passing the correct DPCD_REV for
 drm_dp_set_phy_test_pattern
Date: Wed, 13 Dec 2023 13:15:42 -0800
Message-Id: <20231213211542.3585105-3-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
References: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
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
index 2c51737e3f4d..cd667802f7af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4780,7 +4780,7 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 			  intel_dp->train_set, crtc_state->lane_count);
 
 	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
-				    link_status[DP_DPCD_REV]);
+				    intel_dp->dpcd[DP_DPCD_REV]);
 }
 
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
-- 
2.34.1

