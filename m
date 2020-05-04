Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9D21C49D7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D290A6E4C5;
	Mon,  4 May 2020 22:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6C56E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:42 +0000 (UTC)
IronPort-SDR: KSDjmH/EgIWqkyp+vy5090+CScDSOvt5smgyBmuj4cR/sX8dpA9UWcWCDHaNIP2Tt5TTFzcAFp
 +uvUWubNtZBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:42 -0700
IronPort-SDR: qtfP6+k8I8ojllkxoAIBCH46ZSkQZ3acfcUOapxPxzorcxUBiP5J5CzSuzTRmbs32JvH7hKavl
 C9/4R1tN4JVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646734"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:17 -0700
Message-Id: <20200504225227.464666-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/22] drm/i915/rkl: Check proper SDEISR bits
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
