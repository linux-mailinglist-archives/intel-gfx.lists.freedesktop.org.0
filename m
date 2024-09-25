Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F6E9851A9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 05:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A886810E2C8;
	Wed, 25 Sep 2024 03:54:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6cQ4ucy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7959010E2CA;
 Wed, 25 Sep 2024 03:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727236457; x=1758772457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WWEE1OBIpM2RwjaNWutcyLWaQlyyd2ifDQWPAXn+sV4=;
 b=M6cQ4ucyR+pOHlzf+kMeC0Wa/aJa4x8uSTdxfcV4zcZZW96WzVTLlu1t
 5WR/ydASp0Qce7o0l4dXEZ+KnBTf4Z/Az2LUjPFYPKr3KgTAoXh3Gutit
 kPe4DWhqqYZ21Fjjqj2yHf5CQJcWtMF/zkXto3JAup4qEVZ7VaYTBa1SJ
 OeOCaMW6DKzrCDoYppCgGGKUASpkjPDzMt+1T1sGeF13KRHpDPvXVGkbS
 OpIQ+fi2jYw95hiYFhBuz1EThcLMKCPoGOEfS4k0BF5Yrs+0PiBSg2hCh
 ZswTIEmAJpZmQ534VvVZd/pYCuyD8ZIU6whPywaTnGrDMDPo1hb4f4lOp g==;
X-CSE-ConnectionGUID: kn5qz+FpSIi0Icm39xnslQ==
X-CSE-MsgGUID: 97S9HJsuSeGS+33e62Qdjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="37640816"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="37640816"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 20:54:17 -0700
X-CSE-ConnectionGUID: rAlBSc4eQsSmmQKwxNf16w==
X-CSE-MsgGUID: boM7HBwsRN+w5qpEKDj94Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71781153"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 24 Sep 2024 20:54:16 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCHv2 1/3] drm/i915/dp: use fsleep instead of usleep_range for LT
Date: Wed, 25 Sep 2024 09:14:30 +0530
Message-Id: <20240925034432.1777029-2-arun.r.murthy@intel.com>
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

