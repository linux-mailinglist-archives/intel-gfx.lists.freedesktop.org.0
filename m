Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123A3AEB69F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C3110E9E9;
	Fri, 27 Jun 2025 11:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ac1uLVsG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2F810E9E9;
 Fri, 27 Jun 2025 11:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024250; x=1782560250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G1f2RkaH8+a29YBTs4RNeMHRNrUWTXe4RmaJV+jeg7k=;
 b=ac1uLVsGn1Bae2fhE/WgnqXYX2N0McO2AXSYELRDC1TvHstsoOxNtqOB
 e1YtdXu5xWywiT2vn8/Y+HkjU/q4KwlkEKdBf0S/li9V8y2yYayRCpMUr
 kK0MzlVyWYqhcPLX1uuMY0lSCtBntI1UivQySwGraJn5xBBGFi2mkESc5
 GdC7hZzA3hqZKr4Ue13pkC2579+lIwkYoCY+1GIweuxoC2AE/3XUN0KV3
 A1rDl8U+v6tnLEVme2H55y6a3VIsKvuKfWbuXtPAQH4tHAAH3HW0BwfWm
 MEkRYOGW8AVQG26ABeCQDQGOKJzxSWUj24Jj1EerxpJlY9l9szgt12mbM Q==;
X-CSE-ConnectionGUID: VjcmlYh/RN+D5dZLV4oT0w==
X-CSE-MsgGUID: ejezCgmLQmO+LJs2Dr/+yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460025"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460025"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:30 -0700
X-CSE-ConnectionGUID: vu2VkqeXQCeYLGDktlAIDQ==
X-CSE-MsgGUID: 4/9xGTkGQLiHR/8IlSn/Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071317"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/18] drm/i915/dp: use generic read_poll_timeout() instead of
 wait_for()
Date: Fri, 27 Jun 2025 14:36:25 +0300
Message-Id: <08b6b9edef6a2e0197a359534f5d07c20917ca49.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 1 ms sleep instead. The timeouts remain, being
500 ms or 1000 ms depending on the case.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df..65c951704989 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -27,6 +27,7 @@
 
 #include <linux/export.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/log2.h>
 #include <linux/math.h>
 #include <linux/notifier.h>
@@ -3836,10 +3837,12 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	if (ret < 0)
 		return ret;
 	/* Wait for PCON to be FRL Ready */
-	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);
-
-	if (!is_active)
-		return -ETIMEDOUT;
+	ret = read_poll_timeout(drm_dp_pcon_is_frl_ready, is_active,
+				is_active,
+				1000, TIMEOUT_FRL_READY_MS * 1000, false,
+				&intel_dp->aux);
+	if (ret)
+		return ret;
 
 	ret = drm_dp_pcon_frl_configure_1(&intel_dp->aux, max_frl_bw,
 					  DP_PCON_ENABLE_SEQUENTIAL_LINK);
@@ -3856,12 +3859,12 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	 * Wait for FRL to be completed
 	 * Check if the HDMI Link is up and active.
 	 */
-	wait_for(is_active =
-		 intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask, &frl_trained_mask),
-		 TIMEOUT_HDMI_LINK_ACTIVE_MS);
-
-	if (!is_active)
-		return -ETIMEDOUT;
+	ret = read_poll_timeout(intel_dp_pcon_is_frl_trained, is_active,
+				is_active,
+				1000, TIMEOUT_HDMI_LINK_ACTIVE_MS * 1000, false,
+				intel_dp, max_frl_bw_mask, &frl_trained_mask);
+	if (ret)
+		return ret;
 
 frl_trained:
 	drm_dbg(display->drm, "FRL_TRAINED_MASK = %u\n", frl_trained_mask);
-- 
2.39.5

