Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 832C1BE1113
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 02:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF7610E114;
	Thu, 16 Oct 2025 00:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XKnPsS6K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135BF10E114
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 00:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760573036; x=1792109036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gFB9ZNxtYkFS0oHffBupsS6/1FJcYWrHOx5TCF/u70A=;
 b=XKnPsS6KpNeLjoD1D6D0f3eRTj6Q/XhzLIbYU6Y/gjsRYFTo+NTzpFfO
 BsMtYXhALzpfH+VkJxhS38uGl4/CU3q6+ejlN5Yj72aXyA8CxEN/NXOge
 Hfc687sCZ52f4gM2JKX0jGtEX6NKP49m01qmnFqbDCHHihQBftqt4qj+/
 3/suXlWht82t1EJpKGlt3VtmHLx63oTjobq3E9QKrbO81cddXzajQ8AmV
 xAb7/WC6/0WS/31IVQOESjZYqoe6oX8Ct6sRejpO0RlrTJOqBQZTNWW80
 ZtXXBQ43eI2wCp5yfqYP+biSPzOLxQEaA5wjfk9BI0NfZ8dkz0OVjXlqV A==;
X-CSE-ConnectionGUID: efnUHtSRTWOHyHJOqeShWg==
X-CSE-MsgGUID: HheSA9QqQYOXBwwAjRe1ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62465375"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="62465375"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 17:03:56 -0700
X-CSE-ConnectionGUID: Sr1m/ARyRYaQ7huFlzlZaQ==
X-CSE-MsgGUID: 3aUgbTu/Q5eGFIzpl0r2Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="186712134"
Received: from unerlige-desk1.jf.intel.com ([10.88.27.165])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 17:03:55 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>,
	andi.shyti@kernel.org
Subject: [PATCH] drm/i915: Fix conversion between clock ticks and nanoseconds
Date: Wed, 15 Oct 2025 17:03:51 -0700
Message-ID: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.43.0
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

When tick values are large, the multiplication by NSEC_PER_SEC is larger
than 64 bits and results in bad conversions.

The issue is seen in PMU busyness counters that look like they have
wrapped around due to bad conversion. i915 PMU implementation returns
monotonically increasing counters. If a count is lesser than previous
one, it will only return the larger value until the smaller value
catches up. The user will see this as zero delta between two
measurements even though the engines are busy.

Fix it by using mul_u64_u32_div()

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
v2:
- Fix divide by zero for Gen11 (Andi)
- Update commit message

v3:
- Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 88b147fa5cb1..c90b35881a26 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
 
 u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
 {
-	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
+	return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
 }
 
 u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
@@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
 
 u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
 {
-	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
+	return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
 }
 
 u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
-- 
2.43.0

