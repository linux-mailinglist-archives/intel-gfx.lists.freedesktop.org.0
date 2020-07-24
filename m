Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6282B22D133
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E8F6EA20;
	Fri, 24 Jul 2020 21:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18F186EA14
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:25 +0000 (UTC)
IronPort-SDR: cRqZ0dfeDgdSlOsWToFu2bFji50ln9qba3T9tQ+10Cn5CTcBYikqFPMIkJdkipF0z2eJDsJ2Um
 i/T4kDQElh4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="148697259"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="148697259"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:24 -0700
IronPort-SDR: Fm15431V3UZZiUWzgFIifUhiEosuvrMbqXTWuCj4n9iATGfPAfbsnFMWlNXhTQUTllIk7H/CwC
 yj+qePohTImA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041975"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:39:10 -0700
Message-Id: <20200724213918.27424-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 14/22] drm/i915/dg1: Update comp master/slave
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
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 68137d4500b9..d44109ba6603 100644
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
