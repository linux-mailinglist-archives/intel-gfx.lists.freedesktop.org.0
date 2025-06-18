Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34482ADEDAB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8602110E82F;
	Wed, 18 Jun 2025 13:20:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EK59rrm5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C6810E82A;
 Wed, 18 Jun 2025 13:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750252840; x=1781788840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cbt+jOHvgjZU/QXSbM4J3l+ejf9IVw2JWQv5cCzRcUE=;
 b=EK59rrm52mSmQWJd6bh4kHBVYsC2fZcUaARPaV8m3avLTzghlZuBzCa1
 wwPgXgHXXVtnPOvJ1WP1KTAN0Q5d1IbHXiSS2IGmgb6NIUksr0ujBIAtF
 Kf80gNoQHMFROAESkch2W3hpYsXzNLPqf0rhVeFVwa4xw/8ppYuLz25QQ
 icN3riVSGMF0gH5uiEhrBxK24zILfMOLugOVt34ZeAU5cqVqejuBZz0lR
 bkSSSwpz4W62d6bAM9OnZAq199WgJ4el7+ZvUCjSBuOIu9iPzS3fSEpQs
 cpRy3B9AM2tBRy8N504Pc6mC7Jc33kH4iGyiS6kcpmVAw/g7aa1YTnLCd w==;
X-CSE-ConnectionGUID: xadyHDkEQWKCaduhA5rQIA==
X-CSE-MsgGUID: rmxzrxJaRDKzhNXM5HED0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56272575"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="56272575"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:20:40 -0700
X-CSE-ConnectionGUID: ytmWU8nkTVOjzsy+jQM+iw==
X-CSE-MsgGUID: 7jqfrvHZRv6XNrRKyIQwcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150297042"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:20:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, stable@vger.kernel.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Vas Novikov <vasya.novikov@gmail.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by
 using div64_u64
Date: Wed, 18 Jun 2025 18:39:50 +0530
Message-ID: <20250618130951.1596587-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250618130951.1596587-1-ankit.k.nautiyal@intel.com>
References: <20250618130951.1596587-1-ankit.k.nautiyal@intel.com>
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

Replace DIV_ROUND_CLOSEST_ULL with DIV64_U64_ROUND_CLOSEST which correctly
handles full 64-bit division.

v2: Use DIV64_U64_ROUND_CLOSEST instead of div64_u64 macro. (Jani)

Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")
Reported-by: Vas Novikov <vasya.novikov@gmail.com>
Closes: https://lore.kernel.org/all/8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com/
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Vas Novikov <vasya.novikov@gmail.com>
Cc: <stable@vger.kernel.org> # v6.15+
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 74bb3bedf30f..5111bdc3075b 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -103,8 +103,8 @@ static void get_ana_cp_int_prop(u64 vco_clk,
 			    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
 
 	ana_cp_int_temp =
-		DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
-				      CURVE2_MULTIPLIER);
+		DIV64_U64_ROUND_CLOSEST(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
+					CURVE2_MULTIPLIER);
 
 	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
 
-- 
2.45.2

