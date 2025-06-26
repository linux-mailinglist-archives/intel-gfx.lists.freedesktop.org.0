Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B4FAEA4A7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 19:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4721910E8E1;
	Thu, 26 Jun 2025 17:44:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e5a2YPfi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA3E10E8D4;
 Thu, 26 Jun 2025 17:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750959847; x=1782495847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aGD8BvBdOWTnuRw2NRKYSTP1dWSHF/HPYs+6IGx5HT4=;
 b=e5a2YPfiYhsW+6/sd/1mwT+cJHY8wslRi3Jx3CYkniKT/VvXmNE4lxuU
 YC73MiRsIxr18DFJbC53fDsLtFm0cL+SCymaVO+PcIh/6COBMcajmch82
 1jGF5mJtes1TitYhmEk1OOJm+z87WZXV4dVKyP+bBFhmW0TfWdB0HagOn
 jC8M2HfT9oN9vRKFsMtDAbQHvLs+D04PYHsspj5+dl9c32/nLR3a76vSm
 jNsaePteKvfQ+1aax37vBqp609lQbtGIW+lpr9qaAYHUC021Pol6lBynY
 ei5QsCYFdp4fRRZ6WxUfzhV4Qr6ScjfPt65LzKiI5J7N3J7JW5FcgKZ5H w==;
X-CSE-ConnectionGUID: AtUHvGbXRz63QOMb5TaMfg==
X-CSE-MsgGUID: fWw2x31hRU2y/q7I/MBfMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="52387811"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="52387811"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:44:07 -0700
X-CSE-ConnectionGUID: XTeDRke/S+CmNHiDZHs2pA==
X-CSE-MsgGUID: paxjW+zNRQegfyKUnuHytQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152869102"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:44:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/8] drm/i915/pch: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 26 Jun 2025 20:43:05 +0300
Message-Id: <0dc9e49ce1d4bb8a807b127642b3e7c038f7244e.1750959689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750959689.git.jani.nikula@intel.com>
References: <cover.1750959689.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Prefer the register read specific wait function over i915 wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch_refclk.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index d3c5255bf1a8..9ae53679a041 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -17,16 +17,22 @@
 
 static void lpt_fdi_reset_mphy(struct intel_display *display)
 {
+	int ret;
+
 	intel_de_rmw(display, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
 
-	if (wait_for_us(intel_de_read(display, SOUTH_CHICKEN2) &
-			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
+	ret = intel_de_wait_custom(display, SOUTH_CHICKEN2,
+				   FDI_MPHY_IOSFSB_RESET_STATUS, FDI_MPHY_IOSFSB_RESET_STATUS,
+				   100, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "FDI mPHY reset assert timeout\n");
 
 	intel_de_rmw(display, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
 
-	if (wait_for_us((intel_de_read(display, SOUTH_CHICKEN2) &
-			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
+	ret = intel_de_wait_custom(display, SOUTH_CHICKEN2,
+				   FDI_MPHY_IOSFSB_RESET_STATUS, 0,
+				   100, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "FDI mPHY reset de-assert timeout\n");
 }
 
-- 
2.39.5

