Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA15EA7809D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 18:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764FF10E621;
	Tue,  1 Apr 2025 16:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KWYoBlta";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2732210E621
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 16:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743525481; x=1775061481;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qVDqWFJ/OtREZINtUyl8MuuBuJAJ42OMru0gTxwsA6M=;
 b=KWYoBltaNVYeqxgf0b0ozLDh5Kmf03p77YoWK2ccVYL4KP4T0Qx6RFJJ
 BcWGK0gtJ4EZlPOwXSaMaiaCTOHUMnSXcm1rmKDduDOVYd8gCmXVCRDOh
 7a0cxqkutg+RqAwfquWOlTPj3TuFwJYlrX2u8K+yYyUggTMZ+WqogdS9+
 iV8he+dTUzR9QMHFPP73Ak91XvK5pa2QMaQJvuJcznL8LwbBtuxV52ilY
 s89GEbJm3IHBK3xnUr4kmu7fNKB7KhEzN7gh+4Ow1dYdo2m5BXxeefC9a
 GlayXq51WOIXZoc9PS2adP47mbljbCnPY0AjtCMXSadw8a+agaM3nVK3Q w==;
X-CSE-ConnectionGUID: sCEVKAdUT1SrTjGpfEFJvQ==
X-CSE-MsgGUID: 8bCuQWK4RvmB9flfazvoEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55520038"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="55520038"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 09:38:01 -0700
X-CSE-ConnectionGUID: qOGGmzhmSGq5OxaWcAQRjQ==
X-CSE-MsgGUID: PjN1I00QTZqcxBvrS7Xg5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="131638568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 09:37:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Apr 2025 19:37:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Simplify combo PLL frac w/a
Date: Tue,  1 Apr 2025 19:37:50 +0300
Message-ID: <20250401163752.6412-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
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

We are applying the combo PLL frac w/a to all TGL+ platforms, except
RKL. I *think* all RKL machines use a 24 MHz refclk (certainly all
machines in our CI do) and so technically never need the adjustment.
But let's assume the hardware is exactly the same anyway and simplify
the code by applying the w/a to all TGL+ platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 76ab55ee4b80..81ad6cbae6bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2604,11 +2604,7 @@ ehl_combo_pll_div_frac_wa_needed(struct intel_display *display)
 {
 	return ((display->platform.elkhartlake &&
 		 IS_DISPLAY_STEP(display, STEP_B0, STEP_FOREVER)) ||
-		 display->platform.dg1 ||
-		 display->platform.tigerlake ||
-		 display->platform.alderlake_s ||
-		 display->platform.alderlake_p) &&
-		 display->dpll.ref_clks.nssc == 38400;
+		DISPLAY_VER(display) >= 12);
 }
 
 struct icl_combo_pll_params {
-- 
2.45.3

