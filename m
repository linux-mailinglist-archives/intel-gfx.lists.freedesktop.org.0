Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D2C1C1B35
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A2E6ED0D;
	Fri,  1 May 2020 17:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B7B6ECFC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:01 +0000 (UTC)
IronPort-SDR: dRV2aTlAY3IQI7UtaiD9iq6Ke7KzMcpG1xOY146ukvrL6EaIaQQnXx5WiEn7TXTdKyXRHVqdZH
 pwB2WxniH8JQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:08:00 -0700
IronPort-SDR: jP4J/+zsj+Klh9cDt8ywOFv7VmwcqfWTFgDR+REdIBf4K/MITDk2EsV0wdu4romaUqugohXROy
 jhLMAX+LNppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062140"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:38 -0700
Message-Id: <20200501170748.358135-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/23] drm/i915/rkl: Check proper SDEISR bits
 for TC1 and TC2 outputs
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

When Rocket Lake is paired with a TGP PCH, the last two outputs utilize
the TC1 and TC2 hpd pins, even though these are combo outputs.

Bspec: 49181
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6952b0295096..d32bbcd99b8a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6172,8 +6172,12 @@ static bool bxt_digital_port_connected(struct intel_encoder *encoder)
 static bool intel_combo_phy_connected(struct drm_i915_private *dev_priv,
 				      enum phy phy)
 {
-	if (HAS_PCH_MCC(dev_priv) && phy == PHY_C)
-		return intel_de_read(dev_priv, SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_TC1);
+	if (IS_ROCKETLAKE(dev_priv) && phy >= PHY_C)
+		return intel_de_read(dev_priv, SDEISR) &
+			SDE_TC_HOTPLUG_ICP(phy - PHY_C);
+	else if (HAS_PCH_MCC(dev_priv) && phy == PHY_C)
+		return intel_de_read(dev_priv, SDEISR) &
+			SDE_TC_HOTPLUG_ICP(PORT_TC1);
 
 	return intel_de_read(dev_priv, SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
