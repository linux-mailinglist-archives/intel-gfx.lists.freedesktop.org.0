Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8049AB16F31
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1624A10E768;
	Thu, 31 Jul 2025 10:05:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEgRumro";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A0D10E768;
 Thu, 31 Jul 2025 10:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956349; x=1785492349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aGD8BvBdOWTnuRw2NRKYSTP1dWSHF/HPYs+6IGx5HT4=;
 b=MEgRumroIs2aGZMyjpGCMNJFUbHpTiQBNO6b0anG9AQYsORhhkVcot63
 yhmINUNmrV7e4JeF8qxlAngF9b6tUVNeel4sPrODoiI+kmhnWWZLQCebx
 Q8Ykryt7+PcDRGN8XBe178RMfQQdiApmegevIENm+CCvrUEQJD/JpHaQp
 VtNrk/8RHUcAKGtrUNL3cgzfm+Gu7bcwSrFedY9fH+V3NumPS8r/ezFLO
 Ltat3AhjRq7P11bcXJTbf2/X0S2xQswE+P2kERFvAJCpBjyAEjuoWdSIi
 mfx721No55EQQ2OOmuHKRWmpCpIwnihNccjgq/ztZN1SKzMwNaQiG6P4s g==;
X-CSE-ConnectionGUID: +58xi7CSTrOiPWP7ifnv7w==
X-CSE-MsgGUID: tnbpLujeQOKlKHMBM/ADzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="59923032"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="59923032"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:49 -0700
X-CSE-ConnectionGUID: 7/7k3kKuRgi6XEP2S6ItTw==
X-CSE-MsgGUID: apWNa454RuqkLNNdBw1JcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167456371"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 6/7] drm/i915/pch: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 31 Jul 2025 13:05:13 +0300
Message-Id: <67e0afa2c0c5ad39b9108af15d0496394e674518.1753956266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
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

