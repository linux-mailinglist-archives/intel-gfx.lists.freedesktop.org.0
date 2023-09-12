Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BA679C4D3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA5810E35B;
	Tue, 12 Sep 2023 04:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA4310E03A;
 Tue, 12 Sep 2023 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494113; x=1726030113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fbLOC/wh/FFIOgbYT6Zx42jmlGjpu2RD3USnqIdD7Ws=;
 b=Er7ThoK4e9+nnAG9mCiamAlClDrgd7WF2UXHhyZOxYJzsDx2LXw2H1nD
 lyKzXO2/W/qj9pBdYi7P3QgGkdGlQsTA30t/PSPHfgVXMVru/Ax0MrWPx
 eZQ/4dRr84w1SuShI0BvY875UG+pGc3CTj9PC6WqK2dA/Gcph7qIKUwx0
 06T9d1bpDyniL/vXZ1xvuyHM41p4VJkZ+boQ9/tqBP3B3gdM0Dq13DOlh
 Y1clPxSbbfKCErRC0yp4S3aG1yJjr2Mvf1OhUsvN2kxC8zTGbeWebzZLh
 Iaa6fHCV4Rr/5O/MnMK0Ebu/DnymzMV8WokfbQXByk4asp2dEdIyUUwZm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182317"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182317"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419935"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419935"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:17 -0700
Message-Id: <20230912044837.1672060-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/29] drm/i915/xe2lpd: Move D2D
 enable/disable
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bits to enable/disable and check state for D2D moved from
XELPDP_PORT_BUF_CTL1 to DDI_BUF_CTL (now named DDI_CTL_DE in the spec).
Make the functions mtl_ddi_disable_d2d() and mtl_ddi_enable_d2d generic
to work with multiple reg location and bitfield layout.

v2: Set/Clear XE2LPD_DDI_BUF_D2D_LINK_ENABLE in saved_port_bits when
    enabling/disabling D2D so DDI_BUF_CTL is correctly programmed in
    other places without overriding these bits (Clint)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 46 +++++++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h          |  2 ++
 2 files changed, 36 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 75a2da5d0c9e..53d8f13f8471 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2355,14 +2355,25 @@ static void
 mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
+	i915_reg_t reg;
+	u32 set_bits, wait_bits;
+
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		reg = DDI_BUF_CTL(port);
+		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
+		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+	} else {
+		reg = XELPDP_PORT_BUF_CTL1(port);
+		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
+		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
+	}
 
-	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0,
-		     XELPDP_PORT_BUF_D2D_LINK_ENABLE);
-
-	if (wait_for_us((intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
-			 XELPDP_PORT_BUF_D2D_LINK_STATE), 100)) {
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for PORT_BUF_CTL %c\n",
+	intel_de_rmw(dev_priv, reg, 0, set_bits);
+	if (wait_for_us(intel_de_read(dev_priv, reg) & wait_bits, 100)) {
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 	}
 }
@@ -2808,14 +2819,25 @@ static void
 mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
+	i915_reg_t reg;
+	u32 clr_bits, wait_bits;
+
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		reg = DDI_BUF_CTL(port);
+		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
+		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+	} else {
+		reg = XELPDP_PORT_BUF_CTL1(port);
+		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
+		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
+	}
 
-	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
-		     XELPDP_PORT_BUF_D2D_LINK_ENABLE, 0);
-
-	if (wait_for_us(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
-			  XELPDP_PORT_BUF_D2D_LINK_STATE), 100))
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for PORT_BUF_CTL %c\n",
+	intel_de_rmw(dev_priv, reg, clr_bits, 0);
+	if (wait_for_us(!(intel_de_read(dev_priv, reg) & wait_bits), 100))
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e00e4d569ba9..2f5dd5361263 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5678,6 +5678,8 @@ enum skl_power_gate {
 /* Known as DDI_CTL_DE in MTL+ */
 #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
+#define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
+#define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
 #define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
-- 
2.40.1

