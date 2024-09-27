Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE7988076
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B4110EC6E;
	Fri, 27 Sep 2024 08:36:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJ0/Ep2d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DFA10EC65;
 Fri, 27 Sep 2024 08:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426216; x=1758962216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lLO6SjXuq48MRPA4YpcDxKbMFo77/+FYuFnTHoYWbNM=;
 b=dJ0/Ep2d5VLohcpcAAdZuCYBbWIJqJUFtMR6s7RBDKHzGJiB9bnketXs
 uCVs8ausE16FcYeF+mX393MZgo4QWBCHInyRbSCQb5QlziG5ggX+BRJ25
 ggiwX5QyM3tsqktVNPnWkG4KVLRLBROjKqyUYtXRZBU5dMLXQLkmJBr0b
 E4Px2aKUrAck24tzS5jyDoEYtozc9od5YM4Bk/uTPpE+a8q/cCxZkRfyu
 7VrBnsG7iA8ZUlnS9j2ENpXVoEmAly23xlaTRoFriEcNm/7YCxTF+badU
 yDYPj7BTuFTpr/aRRtao67VFWNVTVge4oznOpYYuD/DUByTTJMV0Omh6l A==;
X-CSE-ConnectionGUID: Jp0cXYVUTCWnt+7sOgDj6w==
X-CSE-MsgGUID: wPUHZX2LQ5C1gg9B7UUkDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977628"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977628"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:56 -0700
X-CSE-ConnectionGUID: kOSlV+lvQy+8DZV7Tfxlog==
X-CSE-MsgGUID: Bd3JZCg9Q9Cnqh54WBkogg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409409"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/17] drm/i915/dp: Refactor joiner max_bpp calculations into
 separate functions
Date: Fri, 27 Sep 2024 14:08:25 +0530
Message-ID: <20240927083831.3913645-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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

Currently compressed max_bpp limitations for small joiner ram, big joiner
and others are intermingled. Separate them into distinct functions to
enhance clarity and maintainability.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 45 ++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f2a2541c1091..7db037f631f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -859,23 +859,52 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 	return bits_per_pixel;
 }
 
+static int get_bigjoiner_interface_bits(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 14 ? 36 : 24;
+}
+
+static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock,
+				int num_joined_pipes)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	int bigjoiner_interface_bits = get_bigjoiner_interface_bits(display);
+	int num_bigjoiners = num_joined_pipes / 2;
+	u32 max_bpp;
+	/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
+	int ppc = 2;
+
+	max_bpp = i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
+		  intel_dp_mode_to_fec_clock(mode_clock);
+
+	max_bpp *= num_bigjoiners;
+
+	return max_bpp;
+}
+
+static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u32 max_bpp;
+
+	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
+	max_bpp = small_joiner_ram_size_bits(i915) / mode_hdisplay;
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
+	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay);
 
 	if (num_joined_pipes == 2) {
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
-		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
-		int ppc = 2;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
-			intel_dp_mode_to_fec_clock(mode_clock);
+		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes);
 
 		max_bpp_small_joiner_ram *= 2;
 
-- 
2.45.2

