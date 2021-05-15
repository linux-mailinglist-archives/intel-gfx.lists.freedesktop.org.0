Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33B6381575
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66726F4ED;
	Sat, 15 May 2021 03:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D5B6F4D0
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:42 +0000 (UTC)
IronPort-SDR: As16NZpr8O2EAHP7AOoZd7USiUrHnv/UR4ovBZSkTQKEmQfe3CV/PpxO6eIhr2VfLqhlC68yA0
 FKPv0YJrkwPQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383697"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383697"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:41 -0700
IronPort-SDR: vEZCYvurET9pTG3xVmLJuK4v3xO4e69RLC3+WMMUORgwJh8mN1J4zLaVrTzMKfYBxPnV73MUFO
 MvOCpcKAuUOQ==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901179"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:19 -0700
Message-Id: <20210515031035.2561658-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 07/23] drm/i915/adl_p: Setup ports/phys
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

The SoC has 6 DDI ports(DDI A,DDI B and DDI TC1-4.
The first two are connected to combo phys while
the rest are connected to TC phys.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Clinton Taylor <clinton.a.taylor@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2c2c5676dc30..f7b25a723f87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3675,7 +3675,9 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	if (IS_TIGERLAKE(dev_priv))
+	if (IS_ALDERLAKE_P(dev_priv))
+		return phy >= PHY_F && phy <= PHY_I;
+	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
 	else if (IS_ICELAKE(dev_priv))
 		return phy >= PHY_C && phy <= PHY_F;
@@ -11253,7 +11255,14 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_ALDERLAKE_S(dev_priv)) {
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_TC1);
+		intel_ddi_init(dev_priv, PORT_TC2);
+		intel_ddi_init(dev_priv, PORT_TC3);
+		intel_ddi_init(dev_priv, PORT_TC4);
+	} else if (IS_ALDERLAKE_S(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_TC1);
 		intel_ddi_init(dev_priv, PORT_TC2);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
