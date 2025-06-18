Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AB5ADEDAA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C236E10E825;
	Wed, 18 Jun 2025 13:20:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wdq4j+S0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69CC10E830;
 Wed, 18 Jun 2025 13:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750252842; x=1781788842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OuGooMJPMGApLsEwwkYJWV1YAFpxZLbRBA+/r+Y3Cvk=;
 b=Wdq4j+S04Vc32cP0Sx9jsvN6vAKWzSxGmMZRXiyoBRWVKMscw7G9RtVQ
 CMZkCadAEdGawvR3s+0f0jC8VbXFnEinttsGcfRZf5tUyt9Y9XFnqORdq
 19+yO1qTlgwVxJBUUTzcyTNMBMLZ+2T6jowaY+0U9GEpRr6WwsCE9QG0U
 i3+2EOvJl7JXBmHvTCC6iQVjny6mUmM2gdoHKSm/tm/B5veztHTCy1JRa
 VzdUjZDVY2APxhrH1oQPUwcwrBRUNu9b6akk69UYu2Jh+igFvskLHSF+F
 JQweVGfMzS2gO2LIsb/GS4ebmZmwl1pLOD8PsK0zq+uKGUV7FN9791kix Q==;
X-CSE-ConnectionGUID: z9j4tf7qRuWrYKpV30clTw==
X-CSE-MsgGUID: i9ysRP1XRFmNv2j5eD95OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56272582"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="56272582"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:20:42 -0700
X-CSE-ConnectionGUID: c01gP76MTI+qcQKht6KiCQ==
X-CSE-MsgGUID: zH2GG/pwSouig4jIJe22Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150297065"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:20:39 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, stable@vger.kernel.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/snps_hdmi_pll: Use clamp() instead of max(min())
Date: Wed, 18 Jun 2025 18:39:51 +0530
Message-ID: <20250618130951.1596587-3-ankit.k.nautiyal@intel.com>
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

The values of ana_cp_int, and ana_cp_prop are clamped between 1 and 127.
Use the more intuitive and readable clamp() macro instead of using
nested max(min(...)).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 5111bdc3075b..7fe6b4a18213 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -106,7 +106,7 @@ static void get_ana_cp_int_prop(u64 vco_clk,
 		DIV64_U64_ROUND_CLOSEST(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
 					CURVE2_MULTIPLIER);
 
-	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
+	*ana_cp_int = clamp(ana_cp_int_temp, 1, 127);
 
 	curve_2_scaled_int = curve_2_scaled1 * (*ana_cp_int);
 
@@ -125,7 +125,7 @@ static void get_ana_cp_int_prop(u64 vco_clk,
 						       curve_1_interpolated);
 
 	*ana_cp_prop = DIV64_U64_ROUND_UP(adjusted_vco_clk2, curve_2_scaled2);
-	*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
+	*ana_cp_prop = clamp(*ana_cp_prop, 1, 127);
 }
 
 static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
-- 
2.45.2

