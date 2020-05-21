Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7269C1DC3D0
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58B06E8CB;
	Thu, 21 May 2020 00:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0316E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:07 +0000 (UTC)
IronPort-SDR: asmjAoyGmmPeVEJI6YXu8YvfVQ/WhmTPwCz5PyuY6qjJ7bbc4EEHF8xoBy6QgN7H0E1neTv9GC
 VB8+ijyXcQkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:07 -0700
IronPort-SDR: 1IExdj4OmNbtRxh+Kbzjrtjy0id0iReTPmkfTbQx0LdQ5gSqu4sLn4sWul+f6DtFn7SnsvrV3S
 FvfjLkz00NdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720854"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:28 -0700
Message-Id: <20200521003803.18936-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/37] drm/i915/rkl: Add DDC pin mapping
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

The pin mapping for the final two outputs varies according to which PCH
is present on the platform:  with TGP the pins are remapped into the TC
range, whereas with CMP they stay in the traditional combo output range.

Bspec: 49181
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20200504225227.464666-16-matthew.d.roper@intel.com
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
