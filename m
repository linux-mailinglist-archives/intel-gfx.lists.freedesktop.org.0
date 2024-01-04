Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7A1823B14
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 04:22:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF0710E379;
	Thu,  4 Jan 2024 03:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE3410E373
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 03:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704338555; x=1735874555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+UTXE9JEF/VmXpToL0iM83ifKJsdnMU2g8w2no4AZgE=;
 b=FKj4OpQ6FyCIcYdXPz4erjUNa5opKCTWcT+EUC2TwXfzuFDdskJp/WxV
 UlZdg8E7sBvO/86bUatvQQY3cQwuY0U8R2V06emwHe0R6Plo6q3khFNQn
 04rZYX+miy2JDjB+1Dm3VaxCjcJQVqPB8FzOtf/pkl2jFxmvdDkWKq+KF
 9o3I/X3Kyw1n2JAQzEzoRBxzQv97MpReDSPqOY7wJOx+/AgxPku69JtWb
 EgyUs4JYpb+On/66PlvzCb/oKLfOgmbccmDn2DwsHaGN/DQ9z8qrc2fLf
 VzEvDtRnadbMU5tnTDbgLd0nYO0T7znYr1BcKOHD1Siby7WEMOFiNU2zt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="483295289"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="483295289"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="850623670"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="850623670"
Received: from rpasham-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.176.66])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:29 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/xe2lpd: Update bxt_sanitize_cdclk()
Date: Thu,  4 Jan 2024 00:21:47 -0300
Message-ID: <20240104032150.118954-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104032150.118954-1-gustavo.sousa@intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
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

With Xe2_LPD, there were changes to the way CDCLK_CTL must be
programmed. Those were reflected on _bxt_set_cdclk() with commit
3d3696c0fed1 ("drm/i915/lnl: Start using CDCLK through PLL"), but
bxt_sanitize_cdclk() was left out.

This was causing some issues when loading the driver with a pre-existing
active display configuration: the driver would mistakenly take the
current value of CDCLK_CTL as wrong and the sanitization would be
triggered.

In a scenario where the display was already configured with a high
CDCLKC and had plane(s) enabled, FIFO underrun errors were reported,
because the current sanitization code selects the minimum possible
CDCLK.

Fix that by updating bxt_sanitize_cdclk() to match the changes made in
_bxt_set_cdclk(). Ideally, we would have a common function to derive the
value for CDCLK_CTL, but that can be done in a future change.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c5fecde7afa8..0012e3171f3f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2071,7 +2071,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	if (vco != dev_priv->display.cdclk.hw.vco)
 		goto sanitize;
 
-	expected = skl_cdclk_decimal(cdclk);
+	if (DISPLAY_VER(dev_priv) >= 20)
+		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
+	else
+		expected = skl_cdclk_decimal(cdclk);
 
 	/* Figure out what CD2X divider we should be using for this cdclk */
 	if (HAS_CDCLK_SQUASH(dev_priv))
-- 
2.43.0

