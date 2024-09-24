Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB8D983D17
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4429510E4DF;
	Tue, 24 Sep 2024 06:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G3bR5Smx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0BB10E4DE;
 Tue, 24 Sep 2024 06:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727159042; x=1758695042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xey4x6KhJR3mRRIWA27Ij73G0qXRksgDMLxciYEnPHA=;
 b=G3bR5SmxTkZeQ7S0DFchFs8lR3eex0GgoNuVNvDHbt+jtcIotIqUL+5S
 4RSWT6IFZyqPNguP40KCBHAvLgWM38umHaSYZ413kTV/d5LgfQYfBN8cj
 4IlNTpdJSjUYcXWSl4SeR1K1smcmcKYspkS2Hfz5jjvDNRiTwKt3eBpy3
 Dioul0D0uzFLc6GI/d94YDQ/bZ3aignHqSzBsTEeajXSqdzSgNVf+CVid
 +X4gmzPl1skbCX29rYJZ31keAWr20MGKIbSN8pDQ/Q/wVdjo21bHEubgr
 b7SAf2VDrSW5p+QjTW+//ewEAzIee3j30/k15xQ7Qi1iPCJmds2G+tgus A==;
X-CSE-ConnectionGUID: 8urZopigQKeRKR+SwAxkMA==
X-CSE-MsgGUID: 52BCvHjeRH6urWkUadRG8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26229887"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="26229887"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:24:02 -0700
X-CSE-ConnectionGUID: 96ThOFX0TZC+egCJg2Vg3A==
X-CSE-MsgGUID: q5eUPPvySFCQZYhre0tt3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="76086149"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa003.jf.intel.com with ESMTP; 23 Sep 2024 23:24:00 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCHv2 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Date: Tue, 24 Sep 2024 11:43:58 +0530
Message-Id: <20240924061358.1725306-4-arun.r.murthy@intel.com>
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

As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But this
timeout value is exclusively for the Aux RD Interval and excludes the
time consumed for the AUX Tx (i.e reading/writing FFE presets). Add
another 50ms for these AUX Tx to the 400ms timeout.
Ref: "Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence" of
DP2.1a spec.

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 460426a3b506..60bf375b9aec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	}
 
 	/* Time budget for the LANEx_EQ_DONE Sequence */
-	deadline = jiffies + msecs_to_jiffies_timeout(400);
+	deadline = jiffies + msecs_to_jiffies_timeout(450);
 
 	for (try = 0; try < max_tries; try++) {
 		fsleep(delay_us);
-- 
2.25.1

