Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7591C49E2
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9214A6E4E3;
	Mon,  4 May 2020 22:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D216E4C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:42 +0000 (UTC)
IronPort-SDR: 5K7ANQ4Qngqb/+C2cjpXL5Ou3JH6v9itxd5XDy1y+UayyyF+8m8g6g27RwkUJq1QnVsmmrFkrj
 frkH/m078Kiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:42 -0700
IronPort-SDR: X8azJ8U8OIl3OCv6eFOzt77kZT173QryPaJAPdzEFszNa9ZKI5hlNLt1j2yJdLvgzg3HyQDVus
 vICb5AGYy5nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646728"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:15 -0700
Message-Id: <20200504225227.464666-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses PHY_MISC
 for PHY's A and B
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
