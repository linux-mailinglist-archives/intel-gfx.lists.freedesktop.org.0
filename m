Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2FB1C1B26
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46EEE6ECF4;
	Fri,  1 May 2020 17:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4566ECEB
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:00 +0000 (UTC)
IronPort-SDR: AJ459fr7qRKpcuJrAE+gSsv8n1HQuyH0Ex1Ac+Mdritu2DRzrMAp9dG6ZHPMrQasKiwgPrMLCB
 9p4RAVSF88fw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:08:00 -0700
IronPort-SDR: cQMy8YV/sqRr4mqp08G8ULh68gWBOTRHcmYfC6v0sc8NedgGXh+xTGKoF2ggnl/Ct3VDNr7HYX
 wmfjBn+XWpDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062130"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:35 -0700
Message-Id: <20200501170748.358135-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/23] drm/i915/rkl: RKL only uses PHY_MISC for
 PHY's A and B
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the number of platforms with this restriction are growing, let's
separate out the platform logic into a has_phy_misc() function.

Bspec: 50107
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 30 +++++++++++--------
 1 file changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 9ff05ec12115..43d8784f6fa0 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -181,11 +181,25 @@ static void cnl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 	intel_de_write(dev_priv, CHICKEN_MISC_2, val);
 }
 
+static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy)
+{
+	/*
+	 * Some platforms only expect PHY_MISC to be programmed for PHY-A and
+	 * PHY-B and may not even have instances of the register for the
+	 * other combo PHY's.
+	 */
+	if (IS_ELKHARTLAKE(i915) ||
+	    IS_ROCKETLAKE(i915))
+		return phy < PHY_C;
+
+	return true;
+}
+
 static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
 				  enum phy phy)
 {
 	/* The PHY C added by EHL has no PHY_MISC register */
-	if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
+	if (!has_phy_misc(dev_priv, phy))
 		return intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy)) & COMP_INIT;
 	else
 		return !(intel_de_read(dev_priv, ICL_PHY_MISC(phy)) &
@@ -317,12 +331,7 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 			continue;
 		}
 
-		/*
-		 * Although EHL adds a combo PHY C, there's no PHY_MISC
-		 * register for it and no need to program the
-		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
-		 */
-		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
+		if (!has_phy_misc(dev_priv, phy))
 			goto skip_phy_misc;
 
 		/*
@@ -376,12 +385,7 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 				 "Combo PHY %c HW state changed unexpectedly\n",
 				 phy_name(phy));
 
-		/*
-		 * Although EHL adds a combo PHY C, there's no PHY_MISC
-		 * register for it and no need to program the
-		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
-		 */
-		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
+		if (!has_phy_misc(dev_priv, phy))
 			goto skip_phy_misc;
 
 		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
