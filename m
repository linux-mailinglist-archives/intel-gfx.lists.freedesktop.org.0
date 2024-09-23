Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7B397F02F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C531F10E454;
	Mon, 23 Sep 2024 18:12:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K32YmZKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20E7910E45D;
 Mon, 23 Sep 2024 18:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115127; x=1758651127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yb8qY5821SqkeVTRNslllLMsNR84EsDbYGMBnOlUIEg=;
 b=K32YmZKXW1XO73tRIqouLabsWq+YlGEGvbcCu4Jdkha6GlkJ/8AJyXKH
 1tfnsVEWBophOlaJxhEvS3r5m+mR4tmZEVAX4TegtdsmmcfTKa58q9KCD
 51ibF8x1WFfcKw+JiU0eNlZxKXKvkvHkX9ApSSihgvcDapP38ix1LiWws
 s+4c7P9jPlgWU+8qildit9hjraYQRgWJQYQe6tVtEUM4qt2YWmk/mMEZB
 I1BCnLjgtu4Cg5uzti3Q9ej3wLwwkzn/uoP8rLFuj2pJ51BfoZJSdhtEF
 WEMFhqbOU+EQec9klQdl27F73RQhNzCRZDcNv4QkN1HNWPin8nVfpUQ48 g==;
X-CSE-ConnectionGUID: TuEMZY0CTwSIL3R3T6RECQ==
X-CSE-MsgGUID: IOyXUr6dQdmAUMCx57vXqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866286"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866286"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:06 -0700
X-CSE-ConnectionGUID: GsNjbU25SvKlHwjUK/HneA==
X-CSE-MsgGUID: QN/WvPwkS1CXrevgeVcGyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734433"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/16] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Date: Mon, 23 Sep 2024 23:43:32 +0530
Message-ID: <20240923181336.3303940-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4b6594d870e..a853f975bda1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -865,24 +865,36 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       int num_joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp_bigjoiner;
+	u32 max_bpp;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
 
-	if (num_joined_pipes == 2) {
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

