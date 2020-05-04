Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 467BB1C49DB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64A36E4E8;
	Mon,  4 May 2020 22:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC0E6E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:43 +0000 (UTC)
IronPort-SDR: xqqEKWi1g06k1DZESRAzK46FID/Bexj80BTOrh3C/77SZBw78B0SBVLTTek4knVUX7g4BOEdkq
 CNUjLxN/cZNw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:43 -0700
IronPort-SDR: hsJxxUzgh9P0O5+HaSHXM4c3AafZoqL2clSO4xn5PJLRcAPvlzwWxlRY2stvj1Vi4pQZJzznHb
 GKrS0MTUGBGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646743"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:20 -0700
Message-Id: <20200504225227.464666-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 15/22] drm/i915/rkl: Add DDC pin mapping
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

The pin mapping for the final two outputs varies according to which PCH
is present on the platform:  with TGP the pins are remapped into the TC
range, whereas with CMP they stay in the traditional combo output range.

Bspec: 49181
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 010f37240710..a31a98d26882 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3082,6 +3082,24 @@ static u8 mcc_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return ddc_pin;
 }
 
+static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+{
+	enum phy phy = intel_port_to_phy(dev_priv, port);
+
+	WARN_ON(port == PORT_C);
+
+	/*
+	 * Pin mapping for RKL depends on which PCH is present.  With TGP, the
+	 * final two outputs use type-c pins, even though they're actually
+	 * combo outputs.  With CMP, the traditional DDI A-D pins are used for
+	 * all outputs.
+	 */
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && phy >= PHY_C)
+		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
+
+	return GMBUS_PIN_1_BXT + phy;
+}
+
 static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
 			      enum port port)
 {
@@ -3119,7 +3137,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		return ddc_pin;
 	}
 
-	if (HAS_PCH_MCC(dev_priv))
+	if (IS_ROCKETLAKE(dev_priv))
+		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
+	else if (HAS_PCH_MCC(dev_priv))
 		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		ddc_pin = icl_port_to_ddc_pin(dev_priv, port);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
