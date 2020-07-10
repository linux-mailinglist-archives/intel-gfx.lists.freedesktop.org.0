Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E6F21B470
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2F76EBF3;
	Fri, 10 Jul 2020 11:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D655D6EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:52 +0000 (UTC)
IronPort-SDR: 8163WEqqHy2GoWJvrZZ/qHyFAaQXMkoa7E5SZnT32zkrgTRZ1r5H17r5FIrWf/GcUpWuScJBGV
 JRG9TTHWl2LA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653699"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653699"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:52 -0700
IronPort-SDR: 9+v+LEAMr/3O8hohLd+zim4LrFBjnekmn8FH3OO6NysfLi0GbhBcAYJQ4pHnV5nYTo8pCe4ETE
 k88WeKJ8JKUQ==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257491"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:50 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:17 +0100
Message-Id: <20200710115757.290984-21-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 20/60] drm/i915/dg1: Update comp master/slave
 relationships for PHYs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

As with RKL, DG1's PHY C acts as a comp master for PHY D.

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index f6d7f807b884..f10c96d1ec39 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -243,14 +243,14 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 	 *
 	 * ICL,TGL:
 	 *   A(master) -> B(slave), C(slave)
-	 * RKL:
+	 * RKL,DG1:
 	 *   A(master) -> B(slave)
 	 *   C(master) -> D(slave)
 	 *
 	 * We must set the IREFGEN bit for any PHY acting as a master
 	 * to another PHY.
 	 */
-	if (IS_ROCKETLAKE(dev_priv) && phy == PHY_C)
+	if ((IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) && phy == PHY_C)
 		return true;
 
 	return phy == PHY_A;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
