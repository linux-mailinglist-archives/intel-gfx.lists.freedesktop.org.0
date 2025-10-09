Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40067BCAAB1
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 21:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0313D10EB01;
	Thu,  9 Oct 2025 19:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ub+SNGHc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFBB10EB01
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 19:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760037427; x=1791573427;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=soLSfiDWUQ8e3MkvuHq9EtMQUh27Qjj02cAnKheTMIs=;
 b=Ub+SNGHcoZHhUh7zBz1tOV06MwgCN4OiTdmdYFy+w6Gh/3LY0Sh33RyE
 iZhBdCh7aeVwJkQDmRs1aezRtBNuipu07fSRmie6ltRgQld18uAlxxJRH
 WcdowhOFfoWbnXzkx1AJv5ZDtCD2lDU6OhzRnGuLXHqTZToNYoDRJ7BaI
 XUKXABD21oPyP3ejDZU8cVVCarRIp79H6CI/apa6UiZc4RxcYAFDZk8eb
 Hdo1km4X+eidAF6hHo7k0OoZkbzlq7pR4EfZckwI6ue4nwAYNoJcnQ/ET
 mk3BWFWu6zLIshFC0RQmmbBugzWuWV0L3t2MsUB1Zq3M2cybRmBymTtfq w==;
X-CSE-ConnectionGUID: UYrw6ot6TCOY2LOwsZe4UA==
X-CSE-MsgGUID: Yg1eBG8QRPugxv/Dq2QzpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62143634"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="62143634"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 12:17:06 -0700
X-CSE-ConnectionGUID: ezDCAPgrT6WokIWqZIE6Ew==
X-CSE-MsgGUID: 8ZzlOumJSzKsE+EjQAfaDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="180478374"
Received: from unerlige-desk1.jf.intel.com ([10.88.27.165])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 12:17:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	andi.shyti@kernel.org
Cc: lucas.demarchi@intel.com, riana.tauro@intel.com, matthew.brost@intel.com,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Subject: [PATCH] drm/i915: Fix conversion between clock ticks and nanoseconds
Date: Thu,  9 Oct 2025 12:16:29 -0700
Message-ID: <20251009191628.663136-2-umesh.nerlige.ramappa@intel.com>
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
than 64 bits and results in bad conversions.

The issue is seen in PMU busyness counters that look like they have
wrapped around due to bad conversion. i915 PMU implementation returns
monotonically increasing counters. If a count is lesser than previous
one, it will only return the larger value until the smaller value
catches up. The user will see this as zero delta between two
measurements even though the engines are busy.

Fix it by using a scaling factor to do the conversion. Add the same fix
for reverse conversion as well.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
v2:
- Fix divide by zero for Gen11 (Andi)
- Update commit message

v3:
- Warn if gt->clock_frequency is 0 (Andi)
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 21 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  2 ++
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 88b147fa5cb1..52e47cdcf0ce 100644
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
@@ -171,7 +173,14 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 
 void intel_gt_init_clock_frequency(struct intel_gt *gt)
 {
+	unsigned long clock_period_scale;
+
 	gt->clock_frequency = read_clock_frequency(gt->uncore);
+	GEM_WARN_ON(!gt->clock_frequency);
+
+	clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
+	gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
+	gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
 
 	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
 	if (GRAPHICS_VER(gt->i915) == 11)
@@ -180,11 +189,11 @@ void intel_gt_init_clock_frequency(struct intel_gt *gt)
 		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
 
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
@@ -205,7 +214,8 @@ static u64 div_u64_roundup(u64 nom, u32 den)
 
 u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
 {
-	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
+	return div_u64_roundup(count * gt->clock_nsec_scaled,
+			       gt->clock_freq_scaled);
 }
 
 u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
@@ -215,7 +225,8 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
 
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

