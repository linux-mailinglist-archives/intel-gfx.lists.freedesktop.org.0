Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4532AD8333
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 08:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0703F10E2BA;
	Fri, 13 Jun 2025 06:23:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c06xhwzn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A8A10E1BA;
 Fri, 13 Jun 2025 06:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749795815; x=1781331815;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F2LOkrfpeiM6BmjrkdE3s9OMnK4jBbJY2+dH9BOr+y0=;
 b=c06xhwznB9NELBlyjlwW3vA66b3dK6BjAhUqMxK02NVDygUnXhowJr1x
 X5yMWdUkcmqLDlvX6ubErjBqG2pb4eJNPZdkfhtxaVEna5ea2kTVYheKr
 BvhogpvrI8wqKgMoNq+QvA95/7KD64bc87Jy/uMXCVeEC8SmoC0S8VWq4
 5RxVc3z1HwjmVlJntIVmLdgZyo+Iel2BCNGDEMPuu8G1ejbqAwbahdYCc
 lJdave8SrkxwXur56qJJWsmfpuib5nhQupNFnuw+CKEwI/JcyQ3fqb9cg
 KasuBjPArPloiket19QQwXlPy+m1bWmxdF8/gqRmRCrZEVQFo5bvwEb02 w==;
X-CSE-ConnectionGUID: LAGwIXKaQdKwjWN1s0xqDA==
X-CSE-MsgGUID: xyVyN74ZS1SUhvOsvfeYVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51918644"
X-IronPort-AV: E=Sophos;i="6.16,232,1744095600"; d="scan'208";a="51918644"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 23:23:35 -0700
X-CSE-ConnectionGUID: RgEmvXBMSRSmbeLBdQIZsg==
X-CSE-MsgGUID: wficdLL3T02Tslqa+9eDoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,232,1744095600"; d="scan'208";a="178707602"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 23:23:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, stable@vger.kernel.org
Subject: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by
 using div64_u64
Date: Fri, 13 Jun 2025 11:42:46 +0530
Message-ID: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

DIV_ROUND_CLOSEST_ULL uses do_div(), which expects a 32-bit divisor.
When passing a 64-bit constant like CURVE2_MULTIPLIER, the value is
silently truncated to u32, potentially leading to incorrect results
on large divisors.

Replace DIV_ROUND_CLOSEST_ULL with div64_u64(), which correctly
handles full 64-bit division. Since the result is clamped between
1 and 127, rounding is unnecessary and truncating division
is sufficient.

Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: <stable@vger.kernel.org> # v6.15+
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 74bb3bedf30f..ac609bdf6653 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -103,8 +103,8 @@ static void get_ana_cp_int_prop(u64 vco_clk,
 			    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
 
 	ana_cp_int_temp =
-		DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
-				      CURVE2_MULTIPLIER);
+		div64_u64(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
+			  CURVE2_MULTIPLIER);
 
 	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
 
-- 
2.45.2

