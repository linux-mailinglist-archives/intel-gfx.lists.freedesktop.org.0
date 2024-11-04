Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 440559BABAB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 05:08:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C44510E36C;
	Mon,  4 Nov 2024 04:08:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSP6zXv3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A44CF10E36C;
 Mon,  4 Nov 2024 04:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730693318; x=1762229318;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WWEE1OBIpM2RwjaNWutcyLWaQlyyd2ifDQWPAXn+sV4=;
 b=eSP6zXv3MxkTBVcS7VIlb9cjc4SgwMvFD1NUJ51s4j4iw8VJGuhf1y70
 E/HTFQPGcP2InkUURPosYfRch3cNxV36M/RiWrGDd462v8v/nGZR0f+Bb
 EOR4WrS+5KGpoTkKy/CEoBoEw1ccpay5KeVKm+5DkWtcWk9Sc8WVye1zj
 97en7IUjyBv8FWkANCDahvyy3/UcWxa4Or6IxbOSFxTAlNJYLb+m1uNIA
 aAzVo9sFzafqfCQU/N3EHMW3gdWDspjv6Bjl2wU77i+RpPxjgy/VdXvVs
 HuuRGfewNGbvdzYuupAMxbM79ugS2d5SadKwAovzcastBNl3eBe0l5M+Y Q==;
X-CSE-ConnectionGUID: QYO/NUsXRJWcBPAdn3DALg==
X-CSE-MsgGUID: oQ4bWWzWS3ehRXfFQlllxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="34165980"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="34165980"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 20:08:38 -0800
X-CSE-ConnectionGUID: dibFRTASSZehYZsdCD09VA==
X-CSE-MsgGUID: +enRDfVNTMepLyYiZI8D2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83636880"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 03 Nov 2024 20:08:36 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [RESEND PATCHv2 1/3] drm/i915/dp: use fsleep instead of usleep_range
 for LT
Date: Mon,  4 Nov 2024 09:28:57 +0530
Message-Id: <20241104035859.3796797-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

Sleeping for < 10us use udelay, for 10us to 20ms use usleep_range() and
for > 10ms use msleep. flseep() will call the particular API based on
the above condition. (Documentation/timers/timers-howto.rst)
Aux RD Interval value depends on the value read from the dpcd register
which is updated from the sink device, hence use flseep.

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 397cc4ebae52..f41b69840ad9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -898,7 +898,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 	voltage_tries = 1;
 	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
-		usleep_range(delay_us, 2 * delay_us);
+		fsleep(delay_us);
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
@@ -1040,7 +1040,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	}
 
 	for (tries = 0; tries < 5; tries++) {
-		usleep_range(delay_us, 2 * delay_us);
+		fsleep(delay_us);
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
@@ -1417,7 +1417,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	deadline = jiffies + msecs_to_jiffies_timeout(400);
 
 	for (try = 0; try < max_tries; try++) {
-		usleep_range(delay_us, 2 * delay_us);
+		fsleep(delay_us);
 
 		/*
 		 * The delay may get updated. The transmitter shall read the
-- 
2.25.1

