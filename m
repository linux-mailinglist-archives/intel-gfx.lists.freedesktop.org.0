Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF02BC089C
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444B710E592;
	Tue,  7 Oct 2025 07:57:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B64PK0CU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E9410E597
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823874; x=1791359874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZjPfSQqBN0MT98NuBCrP6RQhT60ffcFvyxn6BDNdPQ0=;
 b=B64PK0CUxob6tqEBpTdp3TYXZXYU+GxcFP4RpkC89kp/gkmjmGPXkSR6
 FWngQkLy8fhppe9f3GvgfcXJH1eKdELBjx0d319fFtzEPo9o8o3I7GNLU
 cedRnfheUM8WwOg7fsCOg+mg1I3mHBf2iv0Fuf/aECf9lt/flewynf+5v
 yzfm7if0FNWTApAp0e+VZ1QbwxZrs+HaBJZk+CubAYk5Cnrj4oI+PUnP1
 58hwRjfBuXvQmu+C2cSjZ18DmKq2TEeopiV8cI5HnM5aMY1u1iZSOAPoW
 50B/zFNyiYI/PpCGcpv2PAAZdGnzpRkBeZMaRkUg99SCyf9L12BEqqLJn Q==;
X-CSE-ConnectionGUID: mZhQGiHlRP6Mj6h9dzLHkg==
X-CSE-MsgGUID: 9PvXL0TpSUC87H1crB1liA==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104928"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104928"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:54 -0700
X-CSE-ConnectionGUID: 4dxUzu9nQt2oaRVUecK54A==
X-CSE-MsgGUID: yen9xIl7QTqIiRurK1kCxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017710"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:52 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/7] drm/i915/wm: convert tiling mode check in
 slk_compute_plane_wm() to a switch-case
Date: Tue,  7 Oct 2025 10:56:39 +0300
Message-ID: <20251007075729.468669-6-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
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

v2: - Remove useless comment (Gustavo)
    - Move the default case above linear as a fallthrough (Gustavo)

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index dc00b5cd3ff7..a9d1bc432f75 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1817,12 +1817,23 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 latency,
 				 wp->plane_blocks_per_line);
 
-	if (wp->tiling == WM_TILING_Y_FAMILY) {
+	switch (wp->tiling) {
+	case WM_TILING_Y_FAMILY:
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
-	} else {
+		break;
+
+	default:
+		MISSING_CASE(wp->tiling);
+		fallthrough;
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
 			if (DISPLAY_VER(display) == 9)
@@ -1830,8 +1841,11 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 			else
 				selected_result = method2;
 		} else {
+			/* everything else with linear/X-tiled uses method 1 */
 			selected_result = method1;
 		}
+		break;
+
 	}
 
 	blocks = fixed16_to_u32_round_up(selected_result);
-- 
2.51.0

