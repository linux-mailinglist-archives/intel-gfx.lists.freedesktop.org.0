Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340B19851AA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 05:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F3B10E781;
	Wed, 25 Sep 2024 03:54:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdDhHTsj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB2110E8F2;
 Wed, 25 Sep 2024 03:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727236459; x=1758772459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tMKMfAEk7st0mQ7orHkYHUZ2g+yC6RJiwIM/FTiodcE=;
 b=IdDhHTsjNm6eQ/ogoz2i4Du8b2BCty7Gg5DxB6Axgq54Ue6m0juuv0sc
 uKxNDWtThfOcwINxSI/dn2zf11BsmXUjrA0As8cwT/Xq56icr5y/eYcm9
 gU76AcEZpm9yVoSdYkv/71Tx0PtoNzyQV5MnQDTh1eKbviSr0Qj6lwfJe
 Mr4jdacipQ0+0Oq9owmmKwDJpsrRbDRer0uF5RxlDnCHxWkMbgjyNoZ3L
 SCc3YigVPIWlAUB/mXDSaSd59K+FFfVfm7G8mJYyuU+YEMu0f//gu87ql
 WmNPFHNHMJ2OGbuJu/K+2xmFOpO+wu2z/pcnneV8MdgaefWW7vgR/P+3l A==;
X-CSE-ConnectionGUID: CVvtEdsWTD2ePfZeSP/AAw==
X-CSE-MsgGUID: Xk1HrHhyQRi7KHyXhEe/1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="37640817"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="37640817"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 20:54:19 -0700
X-CSE-ConnectionGUID: evgcM7GiQBW7EH0B94QD0g==
X-CSE-MsgGUID: 2PpTDy+hSu+IMzJJnY8z4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71781162"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 24 Sep 2024 20:54:18 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCHv3 2/3] drm/i915/dp: read Aux RD interval just before setting
 the FFE preset
Date: Wed, 25 Sep 2024 09:14:31 +0530
Message-Id: <20240925034432.1777029-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925034432.1777029-1-arun.r.murthy@intel.com>
References: <20240925034432.1777029-1-arun.r.murthy@intel.com>
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

Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence of
DP2.1a spec.
After reading LANEx_CHANNEL_EQ_DONE, read the FFE presets.
AUX_RD_INTERVAL and then write the new FFE presets.

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f41b69840ad9..1bac00e46533 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	for (try = 0; try < max_tries; try++) {
 		fsleep(delay_us);
 
-		/*
-		 * The delay may get updated. The transmitter shall read the
-		 * delay before link status during link training.
-		 */
-		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
-
 		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
 			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
 			return false;
@@ -1451,8 +1445,14 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 		if (time_after(jiffies, deadline))
 			timeout = true; /* try one last time after deadline */
 
-		/* Update signal levels and training set as requested. */
 		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
+		/*
+		 * During LT, Tx shall read AUX_RD_INTERVAL just before writing the new FFE
+		 * presets.
+		 */
+		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
+
+		/* Update signal levels and training set as requested. */
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
 			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
 			return false;
-- 
2.25.1

