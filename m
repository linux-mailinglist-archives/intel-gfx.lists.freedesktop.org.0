Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49436B39D0C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96B510E99D;
	Thu, 28 Aug 2025 12:22:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOCb1s01";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD3310E99F;
 Thu, 28 Aug 2025 12:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383725; x=1787919725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DzuCC7E1VesnV4rPY+p6UzTZQ1ruU/vVW6QsXbNU7Gk=;
 b=LOCb1s01GI4jndHu6ChuXG8/AuA+WEou2jF4SuWs/QUPbQscddfv7+xY
 fF1DWhl5gzGflI7I3ka0m8yz/PtnnGFF9xeQZAsB8Sgd9KUIo0O7eB6gH
 YLcaNoHFEu8Puc2GrzFGowHfoveuJc+nbJOm2vUG+Nca9nu2SQiN9BLvy
 c8WN23MOmuBMX+lIWlERx61eawthleG6whbow8Td+/LWcCrDE/4LQVd9f
 br24Rm/qoKNd3dstV0FrFCnDQ7vzJCEBj4vH/o6sD6VbuucO61h0WKRrM
 m4tblrBYXqWvpCAdcR/Y0LeeK6I9luPwbZ5ig4nEp6Cfd4nx6v8NYG0RJ A==;
X-CSE-ConnectionGUID: n5URAUbCTIudtAa5LaC4Bw==
X-CSE-MsgGUID: UHzADVBTQ/G0byHxSpKkCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053251"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053251"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:04 -0700
X-CSE-ConnectionGUID: EoIRhwWDR8aBvqJlwrg85g==
X-CSE-MsgGUID: mtpWnDOLS523E8df+iqYgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271236"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 12/20] drm/i915/dp: use generic poll_timeout_us() instead of
 wait_for()
Date: Thu, 28 Aug 2025 15:20:54 +0300
Message-ID: <83d3417d4e5af1db13eb4c6eaa48b5f9c12caeb4.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bed7cba1ca68..65468c0126ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -27,6 +27,7 @@
 
 #include <linux/export.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/log2.h>
 #include <linux/math.h>
 #include <linux/notifier.h>
@@ -3878,10 +3879,11 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	if (ret < 0)
 		return ret;
 	/* Wait for PCON to be FRL Ready */
-	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);
-
-	if (!is_active)
-		return -ETIMEDOUT;
+	ret = poll_timeout_us(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux),
+			      is_active,
+			      1000, TIMEOUT_FRL_READY_MS * 1000, false);
+	if (ret)
+		return ret;
 
 	ret = drm_dp_pcon_frl_configure_1(&intel_dp->aux, max_frl_bw,
 					  DP_PCON_ENABLE_SEQUENTIAL_LINK);
@@ -3898,12 +3900,11 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	 * Wait for FRL to be completed
 	 * Check if the HDMI Link is up and active.
 	 */
-	wait_for(is_active =
-		 intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask, &frl_trained_mask),
-		 TIMEOUT_HDMI_LINK_ACTIVE_MS);
-
-	if (!is_active)
-		return -ETIMEDOUT;
+	ret = poll_timeout_us(is_active = intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask, &frl_trained_mask),
+			      is_active,
+			      1000, TIMEOUT_HDMI_LINK_ACTIVE_MS * 1000, false);
+	if (ret)
+		return ret;
 
 frl_trained:
 	drm_dbg(display->drm, "FRL_TRAINED_MASK = %u\n", frl_trained_mask);
-- 
2.47.2

