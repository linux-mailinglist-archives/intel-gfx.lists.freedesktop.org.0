Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E67F725010
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 00:44:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E2E10E3E6;
	Tue,  6 Jun 2023 22:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489D310E3E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 22:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686091476; x=1717627476;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kCmhRYQpqRLcHp9Nng/6iN3VkVheca0CGzuUOaXX3ug=;
 b=gKHvUxZC+yBS3k7DtKOqrYferWkvZeny8zamH03W1fmSneswdsQzrz3l
 YkjC3AvO3/LrZRrGPJ8uYgqQYyC7DIX8kqnPTg0l5alDB3A0znc6YAede
 XdrPnorpVV/XIKri1Jxk870ynYNU+8/D0xMFO44bzP7bLEZR/v7ZtQwVF
 emjfcdcFsGLmhChQH3RaYd3YxKNwfnFZqQdg9ae9n9M3T5W5WRsbJHsQS
 yMoRuc9VQ78jbquT1YvILuLEM5siftQ/pf3tnn/09OKEzcvm4xPloj1GL
 Zte5Jy9yQAJa6nId/IA2T5hiHFXPcQfDLh2oO1p7rVx18rBvcltf1iGSL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="355670532"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="355670532"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 15:44:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="799053802"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="799053802"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jun 2023 15:44:35 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 15:44:28 -0700
Message-Id: <20230606224428.3791006-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix log level for "CDS interlane
 align done"
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

"CDS interlane align done" is a passing condition not an error.
Before adding new macros for logs it was drm_dbg_kms.

Fixes: f48eab290287 ("drm/i915/dp: Add link training debug and error printing helpers")
Cc: Imre Deak <imre.deak@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0952a707358c..176b610642e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1279,7 +1279,7 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
 		if (drm_dp_128b132b_eq_interlane_align_done(link_status) &&
 		    drm_dp_128b132b_cds_interlane_align_done(link_status) &&
 		    drm_dp_128b132b_lane_symbol_locked(link_status, crtc_state->lane_count)) {
-			lt_err(intel_dp, DP_PHY_DPRX, "CDS interlane align done\n");
+			lt_dbg(intel_dp, DP_PHY_DPRX, "CDS interlane align done\n");
 			break;
 		}
 
-- 
2.34.1

