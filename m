Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA38D983D4A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204E710E4DB;
	Tue, 24 Sep 2024 06:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZX6xf1GB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA45310E4DB;
 Tue, 24 Sep 2024 06:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727160362; x=1758696362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WWEE1OBIpM2RwjaNWutcyLWaQlyyd2ifDQWPAXn+sV4=;
 b=ZX6xf1GBPiCNhM3bjEHwLkkSSp+zAjgoADd7k61RyXHt3UUplRuPER89
 epmmWncPH90GI4DEdDoCaJ3L6Qka2BdpuQv3iLbsyldCiN87RraxEH/Jo
 qj0eBXixCKOMjPXQXabo/rHLPJRGmtEql9uEzkfA4fFwfYguhSzjB9eP3
 dMTCiaYY2GhmMyLraC4kvuII2UPr+Y3eAc/cFj++r87dk1bPSmFJBSjhU
 /D0PZVtSQLD0JlkU9hbOMo2ioy/Z3u//I62fntJ3FcSDxyPK9WoRTDhwb
 JL5Uzp+GY4kDbVp8J8kFzcCyATwcENWDA4T4sG7ivSECIBFAGDtbhBtt5 g==;
X-CSE-ConnectionGUID: 0wicvA6JSXSfb1DLlQg7og==
X-CSE-MsgGUID: MxKM79SQQxWEzUiyh7k3lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25610976"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="25610976"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:46:02 -0700
X-CSE-ConnectionGUID: hELmdS7aQXO8IvaQXmlmAQ==
X-CSE-MsgGUID: sge/5214SUOyGK+RTJHL/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="102058157"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 23 Sep 2024 23:46:00 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCHv2 1/3] drm/i915/dp: use fsleep instead of usleep_range for LT
Date: Tue, 24 Sep 2024 12:06:14 +0530
Message-Id: <20240924063616.1726369-2-arun.r.murthy@intel.com>
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

