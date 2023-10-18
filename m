Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B357CEB24
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96BFB10E45D;
	Wed, 18 Oct 2023 22:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6364A10E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697667984; x=1729203984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FQMBrxoAXfbO4R/8Op3yNfqfQAvTH/Dk48J7O8PkmMU=;
 b=f0nmwQoflBh9shM0Rac5aDyUkaQrJopnmk/+bnSOibAFBjXWzZPJ2nlz
 G3AdaRSeHjPu0HTZ30rRuWN1XiryQz/c9owGQPnJy3liGMRPmSTpNO0WU
 rrOpHyQ+3OHUIU3kbeb7n2/RyoeUZuMUEUsxktpax2xGaAdUZA5kidAzL
 aFl5wTSpwRn50QpYr3zs6OuQw15q5NzOCBCK8x9JZn3Xs+UTv7Ly9qdxg
 qCTHwyCUM1KTezVOOSB3mU852NAROoInZvva40Nzws5AIdcgzjwDzwpNB
 wkkjUYOI4uYtLAmLZwRJwnBXlXPQW1kKyxFtqQWOtoKkm05D19jyDUVun w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="452598206"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="452598206"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="750272584"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="750272584"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:24:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 15:24:41 -0700
Message-Id: <20231018222441.4131237-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231018222441.4131237-1-lucas.demarchi@intel.com>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28d85e1e858e..0797ace31417 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1784,31 +1784,32 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
+	/* DG2's "TC1" output uses a SNPS PHY and is handled separately */
 	if (IS_DG2(dev_priv))
-		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
+
+	/*
+	 * TODO: This should mostly match intel_port_to_phy(), considering the
+	 * ports already encode if they are connected to a TC phy in their name.
+	 */
+	if (IS_LUNARLAKE(dev_priv) || IS_METEORLAKE(dev_priv) ||
+	    IS_ALDERLAKE_P(dev_priv))
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
+	 * (PHY E) use Synopsis PHYs.
+	 */
+	return IS_DG2(dev_priv) && phy > PHY_NONE && phy <= PHY_E;
 }
 
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
-- 
2.40.1

