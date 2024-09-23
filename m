Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1708E97F0A7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50D910E45B;
	Mon, 23 Sep 2024 18:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYx4doce";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636B510E45B;
 Mon, 23 Sep 2024 18:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116258; x=1758652258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wyd6CZrS2B2EIrTLwfWwcVwz6V5YbiAR+JZhS83uNds=;
 b=hYx4doceae9WZ26Ksnn+1qkKDqjfe+RemNEOojma/+RYnMXVOFwPhsKm
 l45DbL8osSXlgk6rrUp5TQRBXV6LWOlnaoteFogpsYS56oPbpTwbREuXp
 YixnKxcaRJZbRIypBnQi9ieYngcY9HYJ3vm0DcCYXdEaeN5j/cskBsY0s
 ZEaDWEfcmw/iTOIhONTLcVWbFHT8GZ0DvvQbVYuX1wowax94H0vWD00VX
 KjJ0MEBcjHYB3s1xQr76w6dGVtn7B9yQlGXZhspal2aqeGV2AA++w6tpg
 E+mi6ZyMcaLlkG3HU6n5plGlcKGnzTNBz6Ev3SPQRYQqyAyD8c1hrwk6S w==;
X-CSE-ConnectionGUID: +022k8IdRtizERARvsQmHQ==
X-CSE-MsgGUID: 6NfT5ETqTGehqJEkmtZEEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="51499481"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="51499481"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:30:58 -0700
X-CSE-ConnectionGUID: jK4zcz6fQ2+ebNd29Wzuvw==
X-CSE-MsgGUID: VAqnjBhYTX+XcPuuGT8Lyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71059109"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:30:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/16] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Date: Tue, 24 Sep 2024 00:02:48 +0530
Message-ID: <20240923183248.3324009-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-13-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-13-ankit.k.nautiyal@intel.com>
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

Add compressed bpp limitations for ultrajoiner.

v2: Fix the case for 1 pipe. (Ankit)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4b6594d870e..b359d2e808aa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -865,24 +865,39 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       int num_joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp_bigjoiner;
+	u32 max_bpp;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
 
-	if (num_joined_pipes == 2) {
+	if (num_joined_pipes == 1)
+		return max_bpp_small_joiner_ram;
+
+	if (num_joined_pipes > 1) {
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
+		int num_bigjoiners = num_joined_pipes / 2;
+
+		max_bpp_bigjoiner =
+			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits *
 			intel_dp_mode_to_fec_clock(mode_clock);
 
-		max_bpp_small_joiner_ram *= 2;
+		max_bpp_bigjoiner *= num_bigjoiners;
+
+		max_bpp_small_joiner_ram *= num_joined_pipes;
+	}
+
+	max_bpp = min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
+
+	if (num_joined_pipes == 4) {
+		u32 max_bpp_ultrajoiner_ram = (4 * 72 * 512) / mode_hdisplay;
 
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
+		max_bpp = min(max_bpp, max_bpp_ultrajoiner_ram);
 	}
 
-	return max_bpp_small_joiner_ram;
+	return max_bpp;
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
-- 
2.45.2

