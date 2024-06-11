Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA09904399
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 20:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7800210E05B;
	Tue, 11 Jun 2024 18:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bPVJTlRN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4AB810E05B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 18:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718130644; x=1749666644;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I3yv0xGyB2KNXLiwp+WUyecrnT6vrRPKEUDyYdtR9CQ=;
 b=bPVJTlRN5G/6cE567MtAefzw2DRHxCzEtBCyOhXdirV/AkzM0QPPeraM
 0chA5uCTn2fOVGBJndIBB3/CFKYJMHngx9igyAPxT1Q8wphbWXZXYm4Df
 xx3PdO0EqM3+MZayXr2bneDOEcWRHvtc65yaraVsBYNHfBheloBV9ny5S
 vFfvQMbFCu19ZMe1LXtwH90uwSmi3ILZLa8IzkRAcTVIWNX8sEyEA1n4N
 Z+q4mkDJbaPguyvr2c/dJ2j+PAcPInaNmef3pBoFNMP9hWNmp5X9vLIVL
 6uP2rfFp11UdBN/PH/0d0Nvc7LmkQKIcZw/8rARs7Kvw68RAW46wUmpfD g==;
X-CSE-ConnectionGUID: EwGH0FALQ++tqQHZDbv7oQ==
X-CSE-MsgGUID: +K+6WV9iR9mMq530O37MYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="26265171"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="26265171"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 11:30:38 -0700
X-CSE-ConnectionGUID: 3nCO0+4gQj6rYLf89DdvSQ==
X-CSE-MsgGUID: lhc9wAeYQc2RYASUPcPEiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="70716383"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa001.fm.intel.com with ESMTP; 11 Jun 2024 11:30:37 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC] drm/i915/display: Update vtotal math to address 32b build
Date: Wed, 12 Jun 2024 00:00:47 +0530
Message-ID: <20240611183048.159826-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Fix few divisions which may not work on 32b builds.

Use DIV_ROUND_UP, with that expecting deviate params
from +/- 1 accuracy in value.

Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 05f67dc9d98d..5112961f6964 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -122,10 +122,11 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
 
 	actual_refresh_k =
 		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
-	pixel_clock_per_line =
-		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
+	pixel_clock_per_line = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+					    adjusted_mode->crtc_htotal);
 	calculated_refresh_k =
-		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
+		DIV_ROUND_UP(pixel_clock_per_line * FIXED_POINT_PRECISION,
+			     adjusted_mode->crtc_vtotal);
 
 	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
 		return false;
@@ -149,7 +150,8 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 
 	crtc_state->cmrr.cmrr_n =
 		desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n;
-	vtotal = (adjusted_mode->crtc_clock * 1000 * multiplier_n) / crtc_state->cmrr.cmrr_n;
+	vtotal = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000 * multiplier_n,
+			      crtc_state->cmrr.cmrr_n);
 	adjusted_pixel_rate = adjusted_mode->crtc_clock * 1000 * multiplier_m;
 	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
 
-- 
2.45.2

