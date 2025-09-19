Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42968B8B14D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B8610EA78;
	Fri, 19 Sep 2025 19:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1GkjWdB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D4310EA7F;
 Fri, 19 Sep 2025 19:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310226; x=1789846226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6//hlOUaC/EHbcqCxOsaZydNVfQYQLUqs5Une4SXUOs=;
 b=Q1GkjWdB+oX6L4IePj0zECdXyjrQ4ba0PvduFwdOQQdTSHwgJMZZOLOR
 4OqeeT76Cu9Gh56mwPVgevegry507P340u8DxnBXXWjaQ2l+wT5xqOtwr
 NpfkEjmdNNsgK5tHg/WmGEyEBAMW5qMuuSCHNDotCPUVPZz7XFI3CGTsJ
 1pL6/fUtmljhhkW7+5nL30XgTrokgAW7OFoOnNe/L96ntP6CM4saWfOTW
 3PcaHBUwvJcG3ACKKFibs5WE8gsgaPsUg/RA6uyTuQphJi0yqXwNMsAWi
 GPsCkt1Q06gp5tVfXZPukt1V1mFUEhvmyCrnz49DfKRpsQlf5eLowpXsT Q==;
X-CSE-ConnectionGUID: sx5+SOMTRza6ewpXbXZ/OQ==
X-CSE-MsgGUID: 5NIqzmaIRC2i4thWTXBTLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240280"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240280"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:25 -0700
X-CSE-ConnectionGUID: JNk5QheJTGaV6JaWXExZhg==
X-CSE-MsgGUID: EyLpKNHRTf6R7bvYCb3xcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176723034"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 05/13] drm/i915: Move adjust_wm_latency() out from {mtl,
 skl}_read_wm_latency()
Date: Fri, 19 Sep 2025 22:29:52 +0300
Message-ID: <20250919193000.17665-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
References: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 23 +++++++++++++-------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 43e481759e6e..2bc797aba2ec 100644
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

