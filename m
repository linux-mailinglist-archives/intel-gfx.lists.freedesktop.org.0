Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB04B37B4E2
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 06:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3366E0C2;
	Wed, 12 May 2021 04:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59E566E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 04:21:54 +0000 (UTC)
IronPort-SDR: y+6wYgfsNPZrFkvloWZRtxPEPLfLvv5inrFeD5XsDRsQrKv3D+gbPxIebcyIQLH347KUeRddHW
 BnZCCmt+6wNg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260869173"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="260869173"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:53 -0700
IronPort-SDR: EJuIR3rB5VXEUU6ggZk2427CPFqazgwCaoBO2XoN5ypdJEm6cOx3TjRthJ14M4D6yRa5hXR05G
 fkHm3uq/B2eg==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="409096205"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 21:21:43 -0700
Message-Id: <20210512042144.2089071-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210512042144.2089071-1-matthew.d.roper@intel.com>
References: <20210512042144.2089071-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/7] drm/i915/adl_p: Add PCH support
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

From: Clinton Taylor <Clinton.A.Taylor@intel.com>

Add ADP-P PCH device ID and assign as ADL PCH if found. Previously we
would assign the DDC pin map based on the PCH, but it can also change
based on the CPU. From Bspec 20124: "The physical port to pin pair
mapping are defined in the Bspec per PCH. Mapping can further change
based on CPU Si used as CPU and PCH can be mixed and matched".

Bspec: 20124
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/intel_pch.c          | 6 ++++--
 drivers/gpu/drm/i915/intel_pch.h          | 1 +
 4 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a783c5a40934..9785dfc2de0b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1651,7 +1651,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int n_entries;
 
-	if (HAS_PCH_ADP(i915)) {
+	if (IS_ALDERLAKE_S(i915)) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e9b646f81af0..4a1b2d863b0c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2746,7 +2746,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		return ddc_pin;
 	}
 
-	if (HAS_PCH_ADP(dev_priv))
+	if (IS_ALDERLAKE_S(dev_priv))
 		ddc_pin = adls_port_to_ddc_pin(dev_priv, port);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 7476f0e063c6..98a17dd1bda4 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -130,8 +130,10 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
 		return PCH_JSP;
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
+	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
+			    !IS_ALDERLAKE_P(dev_priv));
 		return PCH_ADP;
 	default:
 		return PCH_NONE;
@@ -161,7 +163,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 	 * make an educated guess as to which PCH is really there.
 	 */
 
-	if (IS_ALDERLAKE_S(dev_priv))
+	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
 		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
 	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 7318377503b0..e2f3f30c6445 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -55,6 +55,7 @@ enum intel_pch {
 #define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
 #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
 #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
+#define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
 #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
