Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E714A793AE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 19:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE35010E856;
	Wed,  2 Apr 2025 17:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqRTg0Ga";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D449B10E856
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Apr 2025 17:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743614244; x=1775150244;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TFHWa1NL7JicP/6HgGe8lklssQHV0+N9LU5eBClnbG4=;
 b=GqRTg0GaDqzSJ3Y6SAPq16Qwn7WLz4fH3lgdQRuKAllBG2VqXemltuv4
 vcIFHxDzjVm/bXp23Rus+hUrUHQhYsnJAW6xSPFhbWytmj5iyGBJdnJkW
 RsZYoeTxQCwDdHLnOiiaDna5IzyqaQfPb4QPiQ+fJePqfk+uldr9DXt2/
 d9lZr0GdDYlI25lLZbhcSTVrXHhDAfeSrKx69ttLL3MwsKRF3zkTfF50w
 hz4Ba5K0iFhxFvEw0wsBwu7EnVyM8JLyxbiA9UUOCRv02UGP9KBcsB5Cy
 kOY8uRYds5ozRZzqD7bCaedKew3t5DGOD+PcGx545wfeZ1QbmhBrOz4k6 g==;
X-CSE-ConnectionGUID: is37OBt9QcSh85+frjh/eA==
X-CSE-MsgGUID: PSKHp0SxQauXy0VCm8x+EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44890612"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44890612"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 10:17:24 -0700
X-CSE-ConnectionGUID: pdatJnn6Tcm5HadqmrSQvQ==
X-CSE-MsgGUID: 7bV6qQb/RE+etOwQ4jCrSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="131963936"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 02 Apr 2025 10:17:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 20:17:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/4] drm/i915: Simplify combo PLL frac w/a
Date: Wed,  2 Apr 2025 20:17:20 +0300
Message-ID: <20250402171720.9350-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250401163752.6412-3-ville.syrjala@linux.intel.com>
References: <20250401163752.6412-3-ville.syrjala@linux.intel.com>
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

v2: Keep the 38.4 MHz check

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 76ab55ee4b80..84df41086a89 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2604,11 +2604,8 @@ ehl_combo_pll_div_frac_wa_needed(struct intel_display *display)
 {
 	return ((display->platform.elkhartlake &&
 		 IS_DISPLAY_STEP(display, STEP_B0, STEP_FOREVER)) ||
-		 display->platform.dg1 ||
-		 display->platform.tigerlake ||
-		 display->platform.alderlake_s ||
-		 display->platform.alderlake_p) &&
-		 display->dpll.ref_clks.nssc == 38400;
+		DISPLAY_VER(display) >= 12) &&
+		display->dpll.ref_clks.nssc == 38400;
 }
 
 struct icl_combo_pll_params {
-- 
2.45.3

