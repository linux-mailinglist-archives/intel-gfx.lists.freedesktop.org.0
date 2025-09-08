Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CD5B48587
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E653510E482;
	Mon,  8 Sep 2025 07:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3qMmNe1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFBA10E482
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317076; x=1788853076;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Xl+fQCT6vqmO4Loq/0k/xGS1ZCYKjq7ibKYCbv97T7Y=;
 b=B3qMmNe1Xu7k0x/4x8dA0dvYsXlrKZ+4LCFOITlBsGhv41wtwUS9lkB1
 UnQ/qTCCfc/oQ3EyVQPTI3HpqIbPRIkZSKa10KcNEtz/vSZS11u/pjJH7
 X7ripU0J8UHKoPwlMHbm+IF8qUIrRlMWQWWWCR2iReUWdsXHeW8av32Gy
 zmrW8LOsoYurrFBNncckXGMvEHtqLd1awAkbsl6wuYy4F4BSRvmstw4V0
 7fJi0Fy0g+uq6U8svLBPKIW9y9fbieM539U8Ou5w+N4HhY3qYkj0rR/xc
 YDgMA0n07Sw6W7Y75OnmGmtBDDkir4QlXsx1JrUDCM5iCd2RVgLUOSXZe A==;
X-CSE-ConnectionGUID: DeO/HnI2SUePgP48cb2NbQ==
X-CSE-MsgGUID: rSS2fn1mRfOYbHXe8dBypw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506309"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506309"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:56 -0700
X-CSE-ConnectionGUID: NxaT9m3CRMeX4oaWIFMOeQ==
X-CSE-MsgGUID: eKk5dileSlaSiIQv+OysBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171987003"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:55 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/wm: convert tiling mode check in
 slk_compute_plane_wm() to a switch-case
Date: Mon,  8 Sep 2025 10:35:34 +0300
Message-ID: <20250908073734.1180687-6-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908073734.1180687-1-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
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

Make the code a bit clearer by using a switch-case to check the tiling
mode in skl_compute_plane_wm(), because all the possible states and
the calculations they use are explicitly handled.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 24 +++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index dd4bed02c3c0..21f8d52ec1d2 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1833,21 +1833,39 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 latency,
 				 wp->plane_blocks_per_line);
 
-	if (wp->tiling == WM_TILING_Y_FAMILY) {
+	switch (wp->tiling) {
+	case WM_TILING_Y_FAMILY:
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
-	} else {
+		break;
+
+	case WM_TILING_LINEAR:
+	case WM_TILING_X_TILED:
+		/*
+		 * Special case for unrealistically small horizontal
+		 * total with plane downscaling.
+		 */
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&
-		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
+		    (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
 			selected_result = method2;
 		} else if (latency >= wp->linetime_us) {
+			/*
+			 * With display version 9, we use the minimum
+			 * of both methods.
+			 */
 			if (DISPLAY_VER(display) == 9)
 				selected_result = min_fixed16(method1, method2);
 			else
 				selected_result = method2;
 		} else {
+			/* everything else with linear/X-tiled uses method 1 */
 			selected_result = method1;
 		}
+		break;
+
+	default:
+		drm_err(display->drm, "Invalid tiling mode\n", wp->tiling);
+		break;
 	}
 
 	blocks = fixed16_to_u32_round_up(selected_result);
-- 
2.50.1

