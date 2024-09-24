Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4546983D15
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B6A10E4DC;
	Tue, 24 Sep 2024 06:23:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHIlp8pV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9599B10E4DB;
 Tue, 24 Sep 2024 06:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727159038; x=1758695038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WWEE1OBIpM2RwjaNWutcyLWaQlyyd2ifDQWPAXn+sV4=;
 b=oHIlp8pVZUuxHkiBs2c2Ntjk+S1O/K/p26NU1m1lQOtlAVm+/bHuBzeY
 67Mf9IQ5Yn5Db5a0+oUQXJqecIDFuwGfEPRPHCRy+jPijm4oIHW0CAmk1
 djNvZ6F7mnGNBnjBwQBUaZ3ebSRAYTwMiGO8vYtrHPQv6dZx5aps4zttZ
 kEJHWf0sSawht9DlnZ71vM7hnWdhUABbXOKdewjJr7pLiiPZOVALWU+Iu
 YiCdC37dnPjIG7M7o68P8WjnGgRUPLhV+n1/IlRLR1Voms3mpTPJfPERi
 rPZQxTiWy9n1pP2C3vxUwoq1a2HCztQXtx/k5owUyPt26SNKhFxdQIegB A==;
X-CSE-ConnectionGUID: 30gYR59aSnOHEmft0fujhg==
X-CSE-MsgGUID: HujzUbZiQiiFwERPr6a2+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26229876"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="26229876"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:23:58 -0700
X-CSE-ConnectionGUID: QWoebtusSDqrtA1+yIf7fg==
X-CSE-MsgGUID: OOFHCxvaTSCgLdgJSoEphg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="76086098"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa003.jf.intel.com with ESMTP; 23 Sep 2024 23:23:56 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCHv2 1/3] drm/i915/dp: use fsleep instead of usleep_range for LT
Date: Tue, 24 Sep 2024 11:43:56 +0530
Message-Id: <20240924061358.1725306-2-arun.r.murthy@intel.com>
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

