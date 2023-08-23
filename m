Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7983D785E30
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A0E310E4A8;
	Wed, 23 Aug 2023 17:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F9310E47B;
 Wed, 23 Aug 2023 17:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810558; x=1724346558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cb338WUIBOlyFx/UNC9lO00xAvNVb5iSdB2LK/eQ3HY=;
 b=MU+g9bpSzXvRwvGPPV/5JuSvZKwFDo2kpKJ69UZ3Z36QrxvYlXr1ECv4
 HkXGH7mJsxKG28Ti8m60QCLIiwacPXWXhaWP2FrExENS3dT0bd8jnzXzS
 y300blBLtw1pAquWmA3uy/njxuK+HgW/9rL/Z+ZIgvo4Fs6xqhsZ5d48e
 U1z7QREi9GQvfjQ1eR5tGQ1Kre/MWlsvVpphxVaN934fCPcPnSequzJx8
 SXklYAh6jd42mvHCRu9PCPJMecJIUrVZLOFfSsYEym1WDetecuXDtt3jM
 lwagKpc9jWDDKhcmgWhtKHvqi+TAotfS09VvK0OAWPAMCqCzllP+Hfs1S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147481"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147481"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204810"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204810"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:14 -0700
Message-Id: <20230823170740.1180212-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/42] drm/i915/xe2lpd: Move D2D enable/disable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bits to enable/disable and check state for D2D moved from
XELPDP_PORT_BUF_CTL1 to DDI_BUF_CTL. Make the functions
mtl_ddi_disable_d2d() and mtl_ddi_enable_d2d generic to work with
multiple reg location and bitfield layout.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 38 +++++++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h          |  2 ++
 2 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 61722556bb47..a9440c0ecf61 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2356,13 +2356,22 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
+	i915_reg_t reg;
+	u32 set_bits, wait_bits;
 
-	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0,
-		     XELPDP_PORT_BUF_D2D_LINK_ENABLE);
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		reg = DDI_BUF_CTL(port);
+		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
+	} else {
+		reg = XELPDP_PORT_BUF_CTL1(port);
+		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
+		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
+	}
 
-	if (wait_for_us((intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
-			 XELPDP_PORT_BUF_D2D_LINK_STATE), 100)) {
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for PORT_BUF_CTL %c\n",
+	intel_de_rmw(dev_priv, reg, 0, set_bits);
+	if (wait_for_us(intel_de_read(dev_priv, reg) & wait_bits, 100)) {
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 	}
 }
@@ -2809,13 +2818,22 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
+	i915_reg_t reg;
+	u32 clr_bits, wait_bits;
 
-	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
-		     XELPDP_PORT_BUF_D2D_LINK_ENABLE, 0);
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		reg = DDI_BUF_CTL(port);
+		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
+	} else {
+		reg = XELPDP_PORT_BUF_CTL1(port);
+		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
+		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
+	}
 
-	if (wait_for_us(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
-			  XELPDP_PORT_BUF_D2D_LINK_STATE), 100))
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for PORT_BUF_CTL %c\n",
+	intel_de_rmw(dev_priv, reg, clr_bits, 0);
+	if (wait_for_us(!(intel_de_read(dev_priv, reg) & wait_bits), 100))
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dcf64e32cd54..84c5a76065a0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5723,6 +5723,8 @@ enum skl_power_gate {
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

