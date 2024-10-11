Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1587E999BF6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 07:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4596510EA31;
	Fri, 11 Oct 2024 05:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2j8cfZX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9495110EA30;
 Fri, 11 Oct 2024 05:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728623305; x=1760159305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ANqUBLdWDJ+JV1+6S5bf9kHVbBSU1Qwya+hYa1+hgqU=;
 b=m2j8cfZX9e//5/BanFYTAvdr00jSEVCDzXACpOWKtGmg0FQEnRj6Wti4
 ge+5PJftCAlmOYkHKencL8zoVcL5Epm5mYlHASChAymjTQXk4sSkjjMOi
 5e7FcbsCM7ifMZFnhiJptXGwYIkTyRyUAUpmVZ91q6DZzQ5gVDlUShFLq
 W5ayfHZ0lZx12VBRYOUiGA8aylWyr9vmv7QbA3qXQZNjRCcRL3+kq1WAi
 fVXSu/ksRGykil9ghE4LuKsLSUFizJxxjqOE7uVVBd9s95ZfA6f4EgxDJ
 xS5jFbr7Ng4eIDGXUdA9ZmUOO4MD8pUAyK9Y0JgjmTyT+q4yG2ADNuGXd w==;
X-CSE-ConnectionGUID: ukSUiV3AQ7GHZAOqjFe8NA==
X-CSE-MsgGUID: SmydpLgiTFKBg6BS7tvOzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38585415"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38585415"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 22:08:24 -0700
X-CSE-ConnectionGUID: LaUS+UwbTH2KgZaEfDis+g==
X-CSE-MsgGUID: fvt/1WrgRjWeCRoF0JOLmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77115910"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa010.fm.intel.com with ESMTP; 10 Oct 2024 22:08:15 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCHv4] drm/i915/dp: read Aux RD interval just before setting the
 FFE preset
Date: Fri, 11 Oct 2024 10:28:25 +0530
Message-Id: <20241011045825.2629469-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925034432.1777029-3-arun.r.murthy@intel.com>
References: <20240925034432.1777029-3-arun.r.murthy@intel.com>
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

v4: Read AUX_RD_INTERVAL before get/set TX FFE preset (Jani)

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f41b69840ad9..a48a70ca4fb3 100644
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
@@ -1451,8 +1445,15 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 		if (time_after(jiffies, deadline))
 			timeout = true; /* try one last time after deadline */
 
-		/* Update signal levels and training set as requested. */
+		/*
+		 * During LT, Tx shall read AUX_RD_INTERVAL just before writing the new FFE
+		 * presets.
+		 */
+		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
+
 		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
+
+		/* Update signal levels and training set as requested. */
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
 			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
 			return false;
-- 
2.25.1

