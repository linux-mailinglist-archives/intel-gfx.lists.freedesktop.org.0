Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A47983D16
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7CE10E4DD;
	Tue, 24 Sep 2024 06:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdthNfDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 320F010E4DD;
 Tue, 24 Sep 2024 06:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727159040; x=1758695040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XE05MDa+1/w9/gAf1B6VUKSdl5T+44vZopeBf7/lb3g=;
 b=KdthNfDjupqs0bTl4gR6WZwbhINzRAAIrnxE1MGloEUobTe7LABoGhkG
 kw3rTzw3iq5KH3WB5D/kgEP+xot1/ZKAcj/5Je9FfIz8XceUKmyyvhnmh
 hXYv80SsjoohuaHDvSH1mTNZsIPUy2Yd4CnvYYwRGHEUH5dMVyGhV8cea
 TG/RJE2HMaXaqMESUzs/6XR8/umTVdXA7Wu5kuapEmxmAXFMrjPQ4FcfR
 Vui/uUTlM2PaV03jWuuDUuxOhiM56DPzZ2rLay3hg5YEPvmPY6vwtrQcF
 NWOM9N9mNrqr6aZvHne7T9mxDM2EL7vDVmA3/d7KUxQ7+pnDEvw7LJUgF Q==;
X-CSE-ConnectionGUID: oANvGu3wSoKyH3xhrbsQsw==
X-CSE-MsgGUID: KgQeIOZAQim6HN49vVg4Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26229881"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="26229881"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:24:00 -0700
X-CSE-ConnectionGUID: Rv/5eWlgRYOOf3RitavByQ==
X-CSE-MsgGUID: CS9Ab311TGmXBGcGtAcpng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="76086119"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa003.jf.intel.com with ESMTP; 23 Sep 2024 23:23:58 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Subject: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before reading
 the FFE preset
Date: Tue, 24 Sep 2024 11:43:57 +0530
Message-Id: <20240924061358.1725306-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240924061358.1725306-1-arun.r.murthy@intel.com>
References: <20240924061358.1725306-1-arun.r.murthy@intel.com>
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
During LT, the transmitter shall read DPCD 02216h before DPCD
00202h through 00207h, and 0200Ch through 0200Fh

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f41b69840ad9..460426a3b506 100644
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
@@ -1451,6 +1445,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 		if (time_after(jiffies, deadline))
 			timeout = true; /* try one last time after deadline */
 
+		/*
+		 * During LT, Tx shall read DPCD 02216h before DPCD 00202h to 00207h and
+		 * 0200Ch through 0200Fh.
+		 */
+		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
+
 		/* Update signal levels and training set as requested. */
 		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
-- 
2.25.1

