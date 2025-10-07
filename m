Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A920BBC2F5A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 01:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39FAA10E1A6;
	Tue,  7 Oct 2025 23:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SYmdwjox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B04910E1A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 23:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759880148; x=1791416148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3QFQFFqfu4QXY/BOv/YKq8kXggKv8sUNtikZbla5lt8=;
 b=SYmdwjoxS3WQRD/cOr9iwkjqleR5v+sI/xgb1tFUla4VP7A007TsWQee
 4kEvyjyF7o/0ajC+TB7YCstU6eAE5yN2rtqN57/CTVqu21WsYtEMtKuEo
 +VtXEGB2xF0KK7RozowtYun4T7fMbI7anvVzTlqerzmc13p9WWK03pOwj
 Kw833DYsmkBi61dVjJxlygtPJAqUJiXeS8EsXjMo0eebNZ7pVKyz/uwDV
 B1m8Zq7YTCcimFyFNCY7Cci/jcXIgzWJ04EszXbNIspLEWs49xGR9tD+M
 KilwVPkDjEUXEK4U2qVCkpTVe/WkDEj9eYvgOwAfR1dMOC4N2kfUpoAsJ w==;
X-CSE-ConnectionGUID: S+QKeN+FS7Ggxzjz3DHpQA==
X-CSE-MsgGUID: qhzPYV7zRd+G4+irQSYqBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="79718500"
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="79718500"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 16:35:48 -0700
X-CSE-ConnectionGUID: Epr/eNh+Q32W7NzD4xPTIg==
X-CSE-MsgGUID: gGaz0CFqRSKTwN3TZhG0LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="179883188"
Received: from unerlige-desk1.jf.intel.com ([10.88.27.165])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 16:35:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 riana.tauro@intel.com, andi.shyti@kernel.org
Cc: matthew.brost@intel.com
Subject: [PATCH] drm/i915: Fix conversion between clock ticks and nanoseconds
Date: Tue,  7 Oct 2025 16:35:44 -0700
Message-ID: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
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
---
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 19 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  2 ++
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 88b147fa5cb1..41a0e8622b33 100644
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
@@ -171,7 +173,12 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 
 void intel_gt_init_clock_frequency(struct intel_gt *gt)
 {
+	unsigned long clock_period_scale;
+
 	gt->clock_frequency = read_clock_frequency(gt->uncore);
+	clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
+	gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
+	gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
 
 	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
 	if (GRAPHICS_VER(gt->i915) == 11)
@@ -180,11 +187,11 @@ void intel_gt_init_clock_frequency(struct intel_gt *gt)
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
@@ -205,7 +212,8 @@ static u64 div_u64_roundup(u64 nom, u32 den)
 
 u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
 {
-	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
+	return div_u64_roundup(count * gt->clock_nsec_scaled,
+			       gt->clock_freq_scaled);
 }
 
 u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
@@ -215,7 +223,8 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
 
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

