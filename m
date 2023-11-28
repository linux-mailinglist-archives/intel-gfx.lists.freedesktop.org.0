Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5245D7FB9AE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FDC10E4E6;
	Tue, 28 Nov 2023 11:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABCC10E4E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172304; x=1732708304;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=f9jDwvBP0V4MNvoOrDs0xEGu4ChK6dTGynxKSeSiObA=;
 b=SEeFHz/m8CcQSKY6XbnUaEdp65/VbUwcszqz/4MKF/d+QDt8cjTJ2pDF
 +j1sFS9yyCalDBjcqbm1LRhb/lAXRCySjnpl7swLt1pXCv76QKA4mQkm8
 MdQG+CeLN1d23vo4SoGuFRwaGtkx1forivGS1iqhTfAGcIh9qYTrDcjia
 akmC/jQvw7AZmXqXPyjTn/w6Gt242XvSvTaoE0Ig8fucbz/Wi4QfoyLzr
 LkJZbZRy7EWgWJmJO47ENw+1ck4lNV6UT6VeU0K7/XbSxntZYWzmBvnsj
 wWCzZUtTjMn+gfRLe5o3qqWsSf0k7NiA/hynzKb4Tx+81B7/KzyFrguNr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411585"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411585"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:51:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907418"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907418"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:51:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:51:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:31 +0200
Message-ID: <20231128115138.13238-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/cdclk: s/-1/~0/ when dealing with
 unsigned values
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

cdclk_pll_is_unknown() used ~0 when checking for the "VCO is
unknown" value, but the assignment uses -1. They are the same
in the end, but let's use the same ~0 form on both sides for
consistency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b93d1ad7936d..0dca29ec799b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1180,7 +1180,7 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	/* force cdclk programming */
 	dev_priv->display.cdclk.hw.cdclk = 0;
 	/* force full PLL disable + enable */
-	dev_priv->display.cdclk.hw.vco = -1;
+	dev_priv->display.cdclk.hw.vco = ~0;
 }
 
 static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
@@ -2075,7 +2075,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	dev_priv->display.cdclk.hw.cdclk = 0;
 
 	/* force full PLL disable + enable */
-	dev_priv->display.cdclk.hw.vco = -1;
+	dev_priv->display.cdclk.hw.vco = ~0;
 }
 
 static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
-- 
2.41.0

