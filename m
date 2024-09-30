Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD5A98A9D7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D080410E547;
	Mon, 30 Sep 2024 16:34:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRhAZ4m1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA07E10E55C;
 Mon, 30 Sep 2024 16:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714045; x=1759250045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ROf/Fva5BmxhwyX/q5zwGm6PSe1GuqLge5+GmoTMg2U=;
 b=SRhAZ4m1UfFrAYRqHsFkpXxAQHr2qsNgFsSP+v+skLFTWNq0ZYt2W+nm
 XnIvAPFMkwSuuoeh/xoR7W3L6U/zt4ddnj3CAKMqClRLzR3RZRvRTdZQo
 xmcPGprLB2hOMNkmQlFmFwGAwXmIdwWirOrzQ6vQ5BmCttGGe1CEkDptg
 UFWXimzi4E1jpfM8ShaqcqMujM82JbGaHmAuhR01FjSs6ajGptKt93ptK
 5+P6SCaD7aMW1t0qkeOXKkp2nxJyFoJSCtmZbE4mxaRYyJRzJRCoNZxHw
 6+PKRDbJbx52vpK2R+H2FLi8Rsjw2nCV32yL/xXH4p6FOh/Hkn6+4MSmx A==;
X-CSE-ConnectionGUID: tKUAl56lTjy4WJwLQWFb3A==
X-CSE-MsgGUID: W32z1zbuSPmMWhSXEnqaiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700538"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700538"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:05 -0700
X-CSE-ConnectionGUID: RbsiVOL1QpObI5tp2wvnog==
X-CSE-MsgGUID: Ygao3KjoS7yA0fi3yAU2/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839190"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/13] drm/i915/dp: Refactor joiner max_bpp calculations into
 separate functions
Date: Mon, 30 Sep 2024 22:05:43 +0530
Message-ID: <20240930163549.416410-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently compressed max_bpp limitations for small joiner ram, big joiner
etc are intermingled. Seprate these limitations into separate functions.

v2: Use num_joined_pipes in small joiner ram helper and other minor
fixes. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 46 +++++++++++++++++++------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f2a2541c1091..29f8cb9c4dd0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -859,25 +859,51 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 	return bits_per_pixel;
 }
 
+static int bigjoiner_interface_bits(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 14 ? 36 : 24;
+}
+
+static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock)
+{
+	u32 max_bpp;
+	/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
+	int ppc = 2;
+
+	max_bpp = display->cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits(display) /
+		  intel_dp_mode_to_fec_clock(mode_clock);
+
+	return max_bpp;
+}
+
+static u32 small_joiner_ram_max_bpp(struct intel_display *display,
+				    u32 mode_hdisplay,
+				    int num_joined_pipes)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u32 max_bpp;
+
+	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
+	max_bpp = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+
+	max_bpp *= num_joined_pipes;
+
+	return max_bpp;
+}
+
 static
 u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       u32 mode_clock, u32 mode_hdisplay,
 				       int num_joined_pipes)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	u32 max_bpp_small_joiner_ram;
 
-	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
-	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay,
+							    num_joined_pipes);
 
 	if (num_joined_pipes == 2) {
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
-		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
-		int ppc = 2;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
-			intel_dp_mode_to_fec_clock(mode_clock);
-
-		max_bpp_small_joiner_ram *= 2;
+		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock);
 
 		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
 	}
-- 
2.45.2

