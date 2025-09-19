Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2EFB8B150
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1403610E256;
	Fri, 19 Sep 2025 19:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvU9cFST";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08FA10EA81;
 Fri, 19 Sep 2025 19:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310230; x=1789846230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WFhpACQIpph29Vnbt8OA0WENBJSom7Ns9Vm3y+E5Qnw=;
 b=GvU9cFSThUYRdoEhlKvlieIdqEevHWmGbwoAUGopKE/h9obzGaG+ZuxM
 Vh0TX83X0m+9uqcqxafm7omolUX+Q4qcww8fDUFWi0c8FcjvtPEZBa+Gl
 IBD5caAGAuY/iQLCX1hAR98x05M4WNc8ldp0/+eWGhDtWeXh+IoQ2m+g3
 WKY8w1zXEPAHsQdT0RsqdguXuc86I74Iq67Z8cWDFqK1sddEQ9ABemUif
 5zo1YHQDwFpgzN1dPh7QW8htVb39L0edHvDQGCVq146sinQCrKsZAyusH
 FWvNVAMwFgASG3ELeIZvh0bSNI/Kpx2o3JXdFxp2PWpOtFr1/QGIEPgWI g==;
X-CSE-ConnectionGUID: /VOvksDcS3u0xzRGbLGv4Q==
X-CSE-MsgGUID: M+hcZ44CRJ+3blglwPshGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240288"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240288"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:30 -0700
X-CSE-ConnectionGUID: D7qnpkKdRJaFm3shjqWnOw==
X-CSE-MsgGUID: IEYUgagTSsuEInlHAemUIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176723047"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 06/13] drm/i915: Extract multiply_wm_latency() from
 skl_read_wm_latency()
Date: Fri, 19 Sep 2025 22:29:53 +0300
Message-ID: <20250919193000.17665-7-ville.syrjala@linux.intel.com>
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

I want skl_read_wm_latency() to just do what it says on
the tin, ie. read the latency values from the pcode mailbox.
Move the DG2 "multiply by two" trick elsewhere.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 29 ++++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2bc797aba2ec..1ac94cb4f27d 100644
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

