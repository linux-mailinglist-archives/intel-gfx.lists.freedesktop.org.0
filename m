Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA34B8B165
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D5F10EA88;
	Fri, 19 Sep 2025 19:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYYYvsCL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D0310EA87;
 Fri, 19 Sep 2025 19:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310262; x=1789846262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1pCBUFcCq4w+P+OruGvs00cn8Td5rWbB9YUhuSs/eFw=;
 b=LYYYvsCLPAxEOUFSPgll5YH+UkhmdBzhzBu28dovo3YjxZ/ZW84pyz2Z
 TqBydvgpSVNEHANZucJRKJsd8tolS3wqqfSH1VtuDcsuvfwZlDLoo9B9E
 /CLpBDNg6T1b7rMWbZLU/TIDXN/aL2xhXW3+z9pQFsFGUiv9urkMCQcH0
 sNXs4yG6h6rrteyRC9v4YCjNsDVG5g8yW+k7kZsr3YB1iuTVBeW972b97
 Xa/mb6z+7w5TSrHB1hUWGbWoMSLQHzk3jYjulJwm7To1P0wHEbdMuKxMg
 EASOR5ADcnE5ZiJoHRZ43ryXV+lQpWsvJP8vBcGeBgM+9FbDSbVy6Kv4l w==;
X-CSE-ConnectionGUID: VLyi4SSSQtWe6I9PlKfp8Q==
X-CSE-MsgGUID: U3OCkkC2TnGr9iBkTy8O2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240346"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:31:01 -0700
X-CSE-ConnectionGUID: 0ga6VWf7S2ujfctIsnVzSw==
X-CSE-MsgGUID: FzNnIi+tS+Wa62aqe55DKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175037344"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:31:00 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 13/13] drm/i915: Make sure wm block/lines are non-decreasing
Date: Fri, 19 Sep 2025 22:30:00 +0300
Message-ID: <20250919193000.17665-14-ville.syrjala@linux.intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
References: https://gitlab.freedesktop.org/drm/intel/-/issues/8683
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 21 +++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9d58c28d3bdf..9eb28d935757 100644
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

