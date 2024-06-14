Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41FF908312
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 06:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A6110E0CE;
	Fri, 14 Jun 2024 04:42:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNlF6QPL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3939210E0CE;
 Fri, 14 Jun 2024 04:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718340123; x=1749876123;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BN2t7hVGUOt+WdRTUMNRrTg6DsemgXOONZ/6ImIgNro=;
 b=cNlF6QPL3M4Z3mShRRG5c5433eOT9hJZcOLQ0XmIF2qdi9UgJnHy9h6o
 kBmGp2La0X7socnI5ej/gZkFIMW4hZYBwqPBc6eNbAgdT//NfTjkJrP76
 4SqfAg0r1alWhqzqSdqXfx4ScXGGFy3XvZMCsypIP1z175H06iz058hhR
 QJNWtaQBUcpmnxTeyyY4Q4g6YEYXsQyHwZxqosp6n0mrCivWAzPo3ZYj1
 T2GxpNgvxSk5Tj/oD7yNvLKxvS2S4AURHvAbBjsMgoTYUZoFW7GSMJ5/a
 HR3MthfOD3Zpl1TyaoWhRU4z+aR2Jm6IWkx0yb8kASr1CuD5sf+DCsNFn Q==;
X-CSE-ConnectionGUID: lyotX3ckTHGwh+9QlaXZ9g==
X-CSE-MsgGUID: Z73f0DTKQ2K771FIw09B3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="18994098"
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="18994098"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 21:42:02 -0700
X-CSE-ConnectionGUID: bF6XhcIFS7m5AikCkXfs6g==
X-CSE-MsgGUID: CX3uSRfNSp2kqLUp7G08nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="44759994"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 13 Jun 2024 21:42:01 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/display: Update calculation to avoid overflow
Date: Fri, 14 Jun 2024 10:12:13 +0530
Message-ID: <20240614044213.377710-1-mitulkumar.ajitkumar.golani@intel.com>
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

Update calculation to avoid overflow.

-v2:
Remove extra line between cc and signed-off.

Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index eb5b62b54d32..6430da25957d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -147,10 +147,11 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 		multiplier_n = 1000;
 	}
 
-	crtc_state->cmrr.cmrr_n =
-		desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n;
-	vtotal = (adjusted_mode->crtc_clock * 1000 * multiplier_n) / crtc_state->cmrr.cmrr_n;
-	adjusted_pixel_rate = adjusted_mode->crtc_clock * 1000 * multiplier_m;
+	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
+					      multiplier_n);
+	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
+				  crtc_state->cmrr.cmrr_n);
+	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
 	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
 
 	return vtotal;
-- 
2.45.2

