Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1381AB45B47
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F4510EBD2;
	Fri,  5 Sep 2025 14:58:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VqTMJftm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B582E10EBC8;
 Fri,  5 Sep 2025 14:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084338; x=1788620338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OqESYBX/Mmw91hrk9nD5d0/MpGH3gJA4oKZZrFdKAh4=;
 b=VqTMJftmc2lDyfO2CGlEL2hhqZLUDJSRNtUKZ7HQe5KDSHIB7GuuMC89
 IZSVES+uF804mIlH6GdIywWU7E7xSQAy1BXZpKxXc4HirC8odysvDznW/
 A6sJeiR0pkOf8f1VbLW6z5x/CF2bFbiEl7bUHsYT+3ViTBgyksvO+h5ds
 AGT57RlEavhYHK7UOAqB0T/uxLt/cZ5worp26eYSOqHhITNKkRlsUmh/d
 1dlIabkCA1578idz697/5kDd0ziGod+Bswrhsr155wMs25AuC1VuPmS7X
 XuFS8cWoKvB5madEpkdQ27di64cihzztKbolLtglm5WjUa9z8GscS8fFS w==;
X-CSE-ConnectionGUID: gEGF1bo0R4OUiyzhUOQHXg==
X-CSE-MsgGUID: Xkvoj8e2S6iFHrJKQLNn1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58469676"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58469676"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:58 -0700
X-CSE-ConnectionGUID: qsNvoak9QhWqMf2t787Qkw==
X-CSE-MsgGUID: JsPZFKEzRZy1fgPOxe9muQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172105333"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/13] drm/i915: Extract multiply_wm_latency() from
 skl_read_wm_latency()
Date: Fri,  5 Sep 2025 17:58:25 +0300
Message-ID: <20250905145832.12097-7-ville.syrjala@linux.intel.com>
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

I want skl_read_wm_latency() to just do what it says on
the tin, ie. read the latency values from the pcode mailbox.
Move the DG2 "multiply by two" trick elsewhere.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 29 ++++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 02b64e97ecfe..8a98c3e52dc5 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3174,6 +3174,15 @@ void skl_watermark_ipc_init(struct intel_display *display)
 	skl_watermark_ipc_update(display);
 }
 
+static void multiply_wm_latency(struct intel_display *display, int mult)
+{
+	u16 *wm = display->wm.skl_latency;
+	int level, num_levels = display->wm.num_levels;
+
+	for (level = 0; level < num_levels; level++)
+		wm[level] *= mult;
+}
+
 static bool need_16gb_dimm_wa(struct intel_display *display)
 {
 	const struct dram_info *dram_info = intel_dram_info(display->drm);
@@ -3200,6 +3209,9 @@ adjust_wm_latency(struct intel_display *display)
 	int i, level, num_levels = display->wm.num_levels;
 	int read_latency = wm_read_latency(display);
 
+	if (display->platform.dg2)
+		multiply_wm_latency(display, 2);
+
 	/*
 	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
 	 * need to be disabled. We make sure to sanitize the values out
@@ -3262,7 +3274,6 @@ static void mtl_read_wm_latency(struct intel_display *display)
 static void skl_read_wm_latency(struct intel_display *display)
 {
 	u16 *wm = display->wm.skl_latency;
-	int mult = display->platform.dg2 ? 2 : 1;
 	u32 val;
 	int ret;
 
@@ -3274,10 +3285,10 @@ static void skl_read_wm_latency(struct intel_display *display)
 		return;
 	}
 
-	wm[0] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
-	wm[1] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
-	wm[2] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
-	wm[3] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
+	wm[0] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val);
+	wm[1] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val);
+	wm[2] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val);
+	wm[3] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val);
 
 	/* read the second set of memory latencies[4:7] */
 	val = 1; /* data0 to be programmed to 1 for second set */
@@ -3287,10 +3298,10 @@ static void skl_read_wm_latency(struct intel_display *display)
 		return;
 	}
 
-	wm[4] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
-	wm[5] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
-	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
-	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
+	wm[4] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val);
+	wm[5] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val);
+	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val);
+	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val);
 }
 
 static void skl_setup_wm_latency(struct intel_display *display)
-- 
2.49.1

