Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E92217D8879
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5A410E859;
	Thu, 26 Oct 2023 18:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECCC10E851
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345614; x=1729881614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0kfvUvuFVxKwlF7tocSNL2RbweeijUsXxFNQhjTJO90=;
 b=ThnCia7OCqxoXSUDsuHbYnuyalPhOPvcTUykYwgyLx1g54jyupLmdovL
 OHVU3Aw+vfNxMjPlurcbFejv9e3KnoXp1YbFjcLdEVEiVQ+AaNWjMLe/h
 nq+Cp0NwlXPwqEofOaGo6jrBnr0KpXxKd3CGtekLJVylQE3uBKnnbn2gX
 SC0TBHZ1y9c9+h8ScchBHhkNkVI1ER0Nx4Df71Yr18I3S1bORjwvCUMgU
 VDarCJuL221ItdXhgVM8RbdfHblsJg/d+Jdg+lUjOVjT/QHT2TRChDr7f
 SrTxsxPEuAGMiDGIhVjw5dAy6CVUy8C7gaM8iRATIIEKpghDc7EZhY2K9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="431869"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; 
   d="scan'208";a="431869"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="788597404"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="788597404"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:40:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 11:40:45 -0700
Message-Id: <20231026184045.1015655-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231026184045.1015655-1-lucas.demarchi@intel.com>
References: <20231026184045.1015655-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With MTL adding PICA between the port and the real phy, the path
add for DG2 stopped being followed and newer platforms are simply using
the older path for TC phys. LNL is no different than MTL in this aspect,
so just add it to the mess. In future the phy and port designation and
deciding if it's TC should better be cleaned up.

To make it just a bit better, also change intel_phy_is_snps() to show
this is DG2-only.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28d85e1e858e..1caf46e3e569 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1784,31 +1784,31 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
+	/*
+	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
+	 * as other platforms on the display engine side and rather rely on the
+	 * SNPS PHY, that is programmed separately
+	 */
 	if (IS_DG2(dev_priv))
-		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
+
+	if (DISPLAY_VER(dev_priv) >= 13)
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
 	else if (IS_ICELAKE(dev_priv))
 		return phy >= PHY_C && phy <= PHY_F;
-	else
-		return false;
+
+	return false;
 }
 
 bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	if (phy == PHY_NONE)
-		return false;
-	else if (IS_DG2(dev_priv))
-		/*
-		 * All four "combo" ports and the TC1 port (PHY E) use
-		 * Synopsis PHYs.
-		 */
-		return phy <= PHY_E;
-
-	return false;
+	/*
+	 * For DG2, and for DG2 only, all four "combo" ports and the TC1 port
+	 * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
+	 */
+	return IS_DG2(dev_priv) && phy > PHY_NONE && phy <= PHY_E;
 }
 
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
-- 
2.40.1

