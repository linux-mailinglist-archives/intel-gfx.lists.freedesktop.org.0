Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E84B45B46
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B27410EBCA;
	Fri,  5 Sep 2025 14:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0cMUu+V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C6410EBC8;
 Fri,  5 Sep 2025 14:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084335; x=1788620335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ht+faOr+2YsYklVfh9tmNmyqe4J8HNeOrUuPR5HCm+8=;
 b=c0cMUu+VHFpcnnbiAnJuACIv0x9FYaRA4+jLTtDROc6RQOWIjWNwblZQ
 nrXNyJfmxZ2ojEilkL8X2sbYvL3CxfH3NphCMOoLi4RXGsjc7uLtsZ40I
 L8gd+2Reu//DfZZWbYMr9o014SCE6NN3n4aiMm5u4ES8QTeKCiZkgL8XV
 ht5MdAxR3ApvnMjsjQHg0xFP0MmAWvP9iEA8xU7JH9sjZ62JL+bv0eTMT
 tYd/bWqvbkBNz3+4D+G0NFR5LCsLlw56cKsa914LzGZYzkbIU7To7imWv
 YVwHhBcAcVf0nRl8cqCcWgdP6wagL4GLdrUiI2rtIyxGXfONEVMAI/+op g==;
X-CSE-ConnectionGUID: cu0dQfHBQ1uiUXEzj8o4ZA==
X-CSE-MsgGUID: ljRSqyckQZiiUWCqIb9MBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58469668"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58469668"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:55 -0700
X-CSE-ConnectionGUID: euBmPbmaSFS2ZKmlZD68bA==
X-CSE-MsgGUID: A4g7uCGIQ5iBNx2D6WIrIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172105322"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:53 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/13] drm/i915: Move adjust_wm_latency() out from {mtl,
 skl}_read_wm_latency()
Date: Fri,  5 Sep 2025 17:58:24 +0300
Message-ID: <20250905145832.12097-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

{mtl,skl}_read_wm_latency() are doing way too many things for
my liking. Move the adjustment stuff out into the caller.
This also gives us one place where we specify the 'read_latency'
for all the platforms, instead of two places.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 23 +++++++++++++-------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9797c2131334..02b64e97ecfe 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3183,12 +3183,22 @@ static bool need_16gb_dimm_wa(struct intel_display *display)
 		DISPLAY_VER(display) == 11) && dram_info->has_16gb_dimms;
 }
 
+static int wm_read_latency(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 14)
+		return 6;
+	else if (DISPLAY_VER(display) >= 12)
+		return 3;
+	else
+		return 2;
+}
+
 static void
-adjust_wm_latency(struct intel_display *display, int read_latency)
+adjust_wm_latency(struct intel_display *display)
 {
 	u16 *wm = display->wm.skl_latency;
-	int num_levels = display->wm.num_levels;
-	int i, level;
+	int i, level, num_levels = display->wm.num_levels;
+	int read_latency = wm_read_latency(display);
 
 	/*
 	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
@@ -3247,14 +3257,11 @@ static void mtl_read_wm_latency(struct intel_display *display)
 	val = intel_de_read(display, MTL_LATENCY_LP4_LP5);
 	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
-
-	adjust_wm_latency(display, 6);
 }
 
 static void skl_read_wm_latency(struct intel_display *display)
 {
 	u16 *wm = display->wm.skl_latency;
-	int read_latency = DISPLAY_VER(display) >= 12 ? 3 : 2;
 	int mult = display->platform.dg2 ? 2 : 1;
 	u32 val;
 	int ret;
@@ -3284,8 +3291,6 @@ static void skl_read_wm_latency(struct intel_display *display)
 	wm[5] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
 	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
 	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
-
-	adjust_wm_latency(display, read_latency);
 }
 
 static void skl_setup_wm_latency(struct intel_display *display)
@@ -3300,6 +3305,8 @@ static void skl_setup_wm_latency(struct intel_display *display)
 	else
 		skl_read_wm_latency(display);
 
+	adjust_wm_latency(display);
+
 	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
 }
 
-- 
2.49.1

