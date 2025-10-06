Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE3BBBFBE9
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 01:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBB210E05E;
	Mon,  6 Oct 2025 23:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfnqNYMz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8705910E03C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Oct 2025 23:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759792052; x=1791328052;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H4Bgr5+eI5lSyNEmy4j2hFLrr1lRYU/j6od4wzDHr9w=;
 b=gfnqNYMzjgCBrwcFGVrLG+1rndcl0wDYXTRxEbz6K4Prkw2j0RCxqGtx
 slErMYNvvi3+iDy1QPNxx7fgFMYUSycdfAUfT6lDyfxaB1qJLCNvgUlDc
 WNq2pATa8QBEhVqd7c8tASXfVT+W94sifsNrqsSyTwldvPZpiRevoJNs1
 T2+GomHZEeZGHVDi4xQEF+GRWhCm+62oRj398469Wr9weh3H6g1TYjSzr
 OP2HCRHf7Iar2l3+wSaEd7W3wSyKd4G7qaFgWKqT6kVFaGH8vv8a1qGSi
 iOauGtdpsfifuPE6qIH2g1GofcotA6///BIVGBCqsGUIzJ9EwdvdvsrC6 A==;
X-CSE-ConnectionGUID: E4ffKXskTG6/Xs2ZtwyrzQ==
X-CSE-MsgGUID: VShEhYdtTrqxqEDysZXn0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61890346"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61890346"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 16:07:29 -0700
X-CSE-ConnectionGUID: ZJzqoG+xSI2OK5aSJ/fneQ==
X-CSE-MsgGUID: i8yg8L82RReH7o27c1791w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179927614"
Received: from unerlige-desk1.jf.intel.com ([10.88.27.165])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 16:07:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 riana.taura@intel.com
Cc: matthew.brost@intel.com
Subject: [PATCH] drm/i915: Fix conversion between clock interval and ns
Date: Mon,  6 Oct 2025 16:07:22 -0700
Message-ID: <20251006230721.600444-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

When tick values are large, the multiplication by NSEC_PER_SEC is larger
than 64 bits and results in bad conversions. Fix it by scaling the
factor used to do the conversion. Add the same fix for reverse conversion
as well.

The issue is seen in PMU busyness counters that look like they have
wrapped around due to bad conversion. This results in zero delta
returned from the i915 PMU implementation and causes random failures.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 24 +++++++++++++------
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  2 ++
 2 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 88b147fa5cb1..a621ea0e6dfc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/gcd.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_gt.h"
@@ -171,20 +173,26 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 
 void intel_gt_init_clock_frequency(struct intel_gt *gt)
 {
+	unsigned long clock_period_scale;
+
 	gt->clock_frequency = read_clock_frequency(gt->uncore);
 
 	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
-	if (GRAPHICS_VER(gt->i915) == 11)
+	if (GRAPHICS_VER(gt->i915) == 11) {
 		gt->clock_period_ns = NSEC_PER_SEC / 13750000;
-	else if (gt->clock_frequency)
+	} else if (gt->clock_frequency) {
+		clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
+		gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
+		gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
 		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
+	}
 
 	GT_TRACE(gt,
-		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms\n",
+		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms, scale %lu\n",
 		 gt->clock_frequency / 1000,
 		 gt->clock_period_ns,
-		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX),
-			 USEC_PER_SEC));
+		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX), USEC_PER_SEC),
+		 clock_period_scale);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
@@ -205,7 +213,8 @@ static u64 div_u64_roundup(u64 nom, u32 den)
 
 u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
 {
-	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
+	return div_u64_roundup(count * gt->clock_nsec_scaled,
+			       gt->clock_freq_scaled);
 }
 
 u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
@@ -215,7 +224,8 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
 
 u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
 {
-	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
+	return div_u64_roundup(gt->clock_freq_scaled * ns,
+			       gt->clock_nsec_scaled);
 }
 
 u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index bcee084b1f27..a19c568fcdc0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -166,6 +166,8 @@ struct intel_gt {
 
 	u32 clock_frequency;
 	u32 clock_period_ns;
+	u32 clock_freq_scaled;
+	u32 clock_nsec_scaled;
 
 	struct intel_llc llc;
 	struct intel_rc6 rc6;
-- 
2.43.0

