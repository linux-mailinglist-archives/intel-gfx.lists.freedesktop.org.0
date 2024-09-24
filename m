Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D6E983D4B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615B710E4E1;
	Tue, 24 Sep 2024 06:46:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4lX2Gma";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937DF10E4DE;
 Tue, 24 Sep 2024 06:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727160363; x=1758696363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eo1G0p4Zf50OOnDRONamumkYyVdXOPbY+AZkurm8Bec=;
 b=O4lX2Gma4298oJZjk+Y1ZQBqamixZcyJfc4WWUtTJx+CfZvEAYA95A0l
 goazyynpGdYPgiZktvl9H3JVugN0YU0UWtKusyszXmBCvYZ33GM0a5LFR
 LKQ9PKIqRIA9TzLoXEg3Z6r6gk17DqyxiG3AhWaOfWXE7VKqPU9i9vTxm
 lvrl3ADQQ4/5wOHkuZLQ0xShrLS5tnMTRMMoGB6UzBm28SimjPCPUKnNQ
 1O1y68S0RmylYHXIuZVS8DeSCNgeO5KEJ+4AbZc0skgJBnGHIP+lw0CCY
 B4QCUiNVx66PW4yC2N/nkTKQqr6rbsVdFyD2OJQ+0GOEA9KDHGLIc9o++ g==;
X-CSE-ConnectionGUID: +BybTZhaRzuRw7Hw5GXpOA==
X-CSE-MsgGUID: O9t5ludASOeYOWeGuYUeOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25610977"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="25610977"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:46:03 -0700
X-CSE-ConnectionGUID: +1479r6YQfG+ePZha3xswA==
X-CSE-MsgGUID: +UkVYzwDQVubFifGhg1Opg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="102058160"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 23 Sep 2024 23:46:02 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Subject: [PATCHv3 2/3] drm/i915/dp: read Aux RD interval just before setting
 the FFE preset
Date: Tue, 24 Sep 2024 12:06:15 +0530
Message-Id: <20240924063616.1726369-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240924063616.1726369-1-arun.r.murthy@intel.com>
References: <20240924063616.1726369-1-arun.r.murthy@intel.com>
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

squash 2

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f41b69840ad9..ec6c323a49c0 100644
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
+		 * During LT, Tx shall read DPCD 02216h before DPCD 00202h to 00207h and
+		 * 0200Ch through 0200Fh.
+		 */
+		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
+
+		/* Update signal levels and training set as requested. */
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
 			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
 			return false;
-- 
2.25.1

