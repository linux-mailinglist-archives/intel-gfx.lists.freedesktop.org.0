Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B329EA61469
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 16:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C37010EA07;
	Fri, 14 Mar 2025 15:01:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gZr3mf9q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE45810EA0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 15:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741964503; x=1773500503;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=E6Ly1CIhqhPLFAu2i4QjuMPI1M3XBiF5pl4s/FlUKxU=;
 b=gZr3mf9q3L+JsjtO3GOP63UVWCkeE0wADpQy3a1T1oEhKNWFQN+bQhBT
 rfLTeqcg6GpzJ8l+DmDWMj4hj0aL//Oz4X1+e+gyAUWW5EZviLM3m4rQ0
 xsTJ3cLJY2mTTD7OkMQ86fHygEqQVx8nO4lceUwIkIvlHSDRBKaxbPJt8
 VFHXCWA4rbNVJnX0JW2oLYUJKHiKymbA4trXwe+g8DVZYF3k/f2DEzQ9p
 TTYvGaWe304fo5OKPiIUt1TJH+aRnnZTTp2NYcGPGEkdM5EEo/UkBp/Sy
 vTFbOBwUbwGY2ro0EVeqXQU7Fr0qeoi7q2M0Xr1YndXMqLkfOLM9xiS09 A==;
X-CSE-ConnectionGUID: YHaF2iOYSCqvaQeNwuYs2A==
X-CSE-MsgGUID: OEKDfmsaR/eANp/sO8nNVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60657578"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60657578"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 08:01:43 -0700
X-CSE-ConnectionGUID: MGM3K4mfTLicaKZyGBNOnA==
X-CSE-MsgGUID: ogyfx7SLSE6XBWxwcDg0pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126515065"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 14 Mar 2025 08:01:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Mar 2025 17:01:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/dsi: Don't set/read the DSI C clock divider on
 GLK
Date: Fri, 14 Mar 2025 17:01:35 +0200
Message-ID: <20250314150136.22564-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
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

GLK doesn't use the DSI C clock at all, no need to program
the divider for it. Bspec even says: "Do not program this field".

However looks like some firmware versions program this and
some do not. In order to avoid bogus fastset mismatches
we should also filter it out during readout.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 2ed47e7d1051..0c88924bc2cd 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -356,6 +356,8 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 	u32 pclk;
 
 	config->dsi_pll.ctrl = intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
+	if (IS_GEMINILAKE(dev_priv))
+		config->dsi_pll.ctrl &= ~BXT_DSIC_16X_BY2;
 
 	pclk = bxt_dsi_pclk(encoder, config);
 
@@ -514,7 +516,9 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	 * Spec says both have to be programmed, even if one is not getting
 	 * used. Configure MIPI_CLOCK_CTL dividers in modeset
 	 */
-	config->dsi_pll.ctrl = dsi_ratio | BXT_DSIA_16X_BY2 | BXT_DSIC_16X_BY2;
+	config->dsi_pll.ctrl = dsi_ratio | BXT_DSIA_16X_BY2;
+	if (!IS_GEMINILAKE(dev_priv))
+		config->dsi_pll.ctrl |= BXT_DSIC_16X_BY2;
 
 	/* As per recommendation from hardware team,
 	 * Prog PVD ratio =1 if dsi ratio <= 50
-- 
2.45.3

