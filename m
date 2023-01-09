Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1187E6627F6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 15:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 646A310E1C9;
	Mon,  9 Jan 2023 14:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DB310E1C9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 14:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673272934; x=1704808934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hCGwmnIaEQ92bfJLaEcicYOM1uhxIdfvmDkfyeKP4Tk=;
 b=Y4sSG16F6EPdGWlVRgZ4brErHIHmG4bALmhKCnyj5f0aJGFNHfDqsNsG
 oATBvp7lEapK4tr5CjUsnpgL5hy8LvMm4QKAaPgossMt7BZyu5i1mBINH
 ihbPQuX7oWe2LutRXQnDhn6PZ2s3CssMBuH8/hB3DlmM8y2NvsT/VVUcX
 dhLABejPczCfZn+G/MVP+2cqTts8K9tK6Ba2uTnuTGNxPMRF+CIgRslFm
 ZCCNIkh+2rXU6AimKQHAcVHiFhCgk6NQhTsSpZOo+pTUipj2FS1khzXc9
 3dkS2I0TJALIay1Rbul+omeQOkHrCiP+bCR8PoJ8rNbqi1wGbgXHBBqe2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="306395139"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="306395139"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 06:02:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="634218044"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="634218044"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga006.jf.intel.com with ESMTP; 09 Jan 2023 06:02:11 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Jan 2023 16:02:10 +0200
Message-Id: <20230109140210.25822-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix timeslots argument for DP DSC SST
 case
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

We now accept timeslots param exactly how the variable
sounds: amount of timeslots, but not ratio timeslots/64.
So for SST case(when we have all timeslots for use), it
should be 64, but not 1.
This caused some issues in the tests.

v2: Fixed comments

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6860
Fixes: 52f14682ac4d ("drm/i915: Bpp/timeslot calculation fixes for DP MST DSC")
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bf80f296a8fd..30c55f980014 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -713,9 +713,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 
 	/*
 	 * Available Link Bandwidth(Kbits/sec) = (NumberOfLanes)*
-	 * (LinkSymbolClock)* 8 * (TimeSlotsPerMTP)
-	 * for SST -> TimeSlotsPerMTP is 1,
-	 * for MST -> TimeSlotsPerMTP has to be calculated
+	 * (LinkSymbolClock)* 8 * (TimeSlots / 64)
+	 * for SST -> TimeSlots is 64(i.e all TimeSlots that are available)
+	 * for MST -> TimeSlots has to be calculated, based on mode requirements
 	 */
 	bits_per_pixel = DIV_ROUND_UP((link_clock * lane_count) * timeslots,
 				      intel_dp_mode_to_fec_clock(mode_clock) * 8);
@@ -1685,7 +1685,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
-						  conn_state, &limits, 1, true);
+						  conn_state, &limits, 64, true);
 		if (ret < 0)
 			return ret;
 	}
-- 
2.37.3

