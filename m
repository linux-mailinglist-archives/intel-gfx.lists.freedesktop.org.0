Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A903CA5512E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18FF510EA08;
	Thu,  6 Mar 2025 16:35:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftXhF8px";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910AF10EA0B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278905; x=1772814905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hjbL3Bw51mQ8mQWzzF66K4tmATdU6BNxjN3qAmX5JKI=;
 b=ftXhF8pxJM9j8x8jkdXxQf7bJ/OmVwftPCZEyNFgGClSn/Ez7u8L6MNM
 mVqZUyAYCOb+Esz/fPPCaNzPPkturTHnT8Xeih/8sZv5xWJc2XL3IgsZV
 FshWO3FG09VMMba6JM02VsuVEXrrbt+VgbuPpqYa7obsa4JIgwdZHWBh+
 Rr9UZPZL4UoMF9RikpBrO9Y1BV/X2lQiEzC5JCfkOU9pRWZaP+z0DSnDv
 V/SLWrl6dPuWGWKr/WboWhv4RBCemm2lvCubWcs3JyS7yMCO9zf/sT/c+
 V4MjAxOEUPjCZFCutWwY8bwynCIEIqJcn33PD++ZjFKPxTnJQwmy1hTpA Q==;
X-CSE-ConnectionGUID: bxBheKaHSw6fV587mRc12A==
X-CSE-MsgGUID: fJ6PcF3SQqSrE1B9SDjBpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704378"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704378"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:35:04 -0800
X-CSE-ConnectionGUID: dCsrRYUVSvuZuxugFeECIQ==
X-CSE-MsgGUID: 2R/gQ7UYRWKJW2vIfxRIHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:35:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:35:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 13/18] sem/i915: Simplify intel_cdclk_update_hw_state()
Date: Thu,  6 Mar 2025 18:34:15 +0200
Message-ID: <20250306163420.3961-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

intel_crtc_calculate_min_cdclk() can't return an error
(since commit 5ac860cc5254 ("drm/i915: Fix DBUF bandwidth vs.
cdclk handling")) so there is no point in checking for one.

Also we can just call it unconditionally since it itself
checks crtc_state->hw.enabled. We are currently checking
crtc_state->hw.active in the readout path, but active==enabled
during readout, and arguably enabled is the more correct thing
to check anyway.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 947833a96ab7..62caee4a8b64 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3352,17 +3352,11 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
-		int min_cdclk = 0;
 
-		if (crtc_state->hw.active) {
+		if (crtc_state->hw.active)
 			cdclk_state->active_pipes |= BIT(pipe);
 
-			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
-			if (drm_WARN_ON(display->drm, min_cdclk < 0))
-				min_cdclk = 0;
-		}
-
-		cdclk_state->min_cdclk[pipe] = min_cdclk;
+		cdclk_state->min_cdclk[pipe] = intel_crtc_compute_min_cdclk(crtc_state);
 		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
 	}
 }
-- 
2.45.3

