Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FF6B45B52
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F11310EBE3;
	Fri,  5 Sep 2025 14:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XAmtdP9h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ABE810EBE4;
 Fri,  5 Sep 2025 14:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084364; x=1788620364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eOX43OoN+WoTSYYBpEgAuMP+WxMavQIGNMoIge0nIG0=;
 b=XAmtdP9htqMr1qe8ABiVrGcHkWFfkier1iKB7yq9kssAxuwNoz4zbdqt
 qe4aPHPMtvBIaAQ+novxs2Gz/wgcdzbLclfdnx7nMyLdxtY7k77m8I5R6
 +9fZtynYLoUGsWrC2Pc/ER1Bd/jJBzQUC13mLVdmz855hayToxNG4SBga
 5pK7puBsDlySxdWFp0qNNhJ6PH1pNHgsXS5+jA3y2V3GgQFxmHkunW+95
 aTC24CLmQuj6ibzyvHhBmR5ZkVobYEJdHgKVkTdJh1EInODbHXm8ojGHk
 JKlbA+7NJiWiADYiskAJ07E0ojydbyFr8PJPgyVi7JiDg72GLMagXSOOK Q==;
X-CSE-ConnectionGUID: MKpdpw+bTPup8Xx+DMO2Ag==
X-CSE-MsgGUID: Q0NsKLqhQtCo3pEVbp8lpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="70054414"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="70054414"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:24 -0700
X-CSE-ConnectionGUID: gxqdt/+JRFqnSLZrCSpr1A==
X-CSE-MsgGUID: yCV7ujhmTyG2MjwChsvK6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172987821"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/13] drm/i915: Make sure wm block/lines are non-decreasing
Date: Fri,  5 Sep 2025 17:58:32 +0300
Message-ID: <20250905145832.12097-14-ville.syrjala@linux.intel.com>
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

The watermark algorithm sometimes produces results where higher
watermark levels have smaller blocks/lines watermarks than the lower
levels. That doesn't really make sense as the corresponding latencies
are supposed to be non-decreasing. It's unclear how the hardware
responds to such watermark values, so it seems better to avoid that
case and just make sure the values are always non-decreasing.

Here's an example how things change for such a case on a GLK NUC:
 [PLANE:70:cursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm -> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
 [PLANE:70:cursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->    4,   4,   4,   2,   2,   2,   2,   2,   0,   0,    0
 [PLANE:70:cursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->   11,  11,  12,   7,   7,   7,   7,   7,  25,   0,    0
 [PLANE:70:cursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->   12,  12,  13,   8,   8,   8,   8,   8,  26,   0,    0
->
 [PLANE:70:cursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm -> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
 [PLANE:70:cursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->    4,   4,   4,   4,   4,   4,   4,   4,   0,   0,    0
 [PLANE:70:cursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->   11,  11,  12,  12,  12,  12,  12,  12,  25,   0,    0
 [PLANE:70:cursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->   12,  12,  13,  13,  13,  13,  13,  13,  26,   0,    0

Whether this actually helps on any display blinking issues is unclear.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8683
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 21 +++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a40113aa3f3e..6e268836f5c6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1878,18 +1878,21 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 			} else {
 				blocks++;
 			}
-
-			/*
-			 * Make sure result blocks for higher latency levels are
-			 * at least as high as level below the current level.
-			 * Assumption in DDB algorithm optimization for special
-			 * cases. Also covers Display WA #1125 for RC.
-			 */
-			if (result_prev->blocks > blocks)
-				blocks = result_prev->blocks;
 		}
 	}
 
+	/*
+	 * Make sure result blocks for higher latency levels are
+	 * at least as high as level below the current level.
+	 * Assumption in DDB algorithm optimization for special
+	 * cases. Also covers Display WA #1125 for RC.
+	 *
+	 * Let's always do this as the algorithm can give non
+	 * monotonic results on any platform.
+	 */
+	blocks = max_t(u32, blocks, result_prev->blocks);
+	lines = max_t(u32, lines, result_prev->lines);
+
 	if (DISPLAY_VER(display) >= 11) {
 		if (wp->y_tiled) {
 			int extra_lines;
-- 
2.49.1

