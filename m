Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 747E21ED7F0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 23:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B842A89F2D;
	Wed,  3 Jun 2020 21:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0906A89ECB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 21:15:49 +0000 (UTC)
IronPort-SDR: PViY5b3C472yzE9y+BfZ9Eloao8jtKljSVFm4GujWrMJDFz2K3Scps9RYUtMTs07tK8KUtAefe
 4piLG+XuQ1eQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:15:48 -0700
IronPort-SDR: QpIstonPUKCyS0fkGb33FJyuC8BFg+7c9gUtNzoMuXMmQAwPjugitu2IlEVCaiIs6EsQ8S7fFR
 o5PlVLtcynaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="258715097"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 14:15:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 14:15:22 -0700
Message-Id: <20200603211529.3005059-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/15] drm/i915/rkl: Add DDC pin mapping
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
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
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
