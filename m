Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E679C4D9
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ABCD10E379;
	Tue, 12 Sep 2023 04:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D372610E350;
 Tue, 12 Sep 2023 04:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494115; x=1726030115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BCfFcplIfu7E4BwgrlcVWNFbT+X+Q5CneihKMfjaHS0=;
 b=R4PIRRPM8u4f45LOCo7ErBHbBu3mXmcGfiQKiRXo5iuwxi5UbRIPAh7C
 WUuoa4rElKMc88OpBg2sBIB4LeGe1YjRU8lm1PgU5ZTHqGBx4OOXOpaVW
 vMqsY7oyfJGnDvHMEZyGegYKWx5jiH84F/QGEYq1zclyaWdhVy2MjO9Bs
 T5Wcx3oEOlrhj9NOW6eIs5v7rPbWHDO0LAkJTPqkZ/HyRi1m2QETZDRQ+
 094imTuuBMOVfzykecTpGCCwsritJcwP9dUZsWHYvOn8UURd/Cqwihepr
 sFohsMi0EsiI76E5fEdtmnZDarC6O/0hYKUbA+8WVvnPEXkiqzN+LeW+S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182335"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182335"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419962"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419962"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:35 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:26 -0700
Message-Id: <20230912044837.1672060-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/29] drm/i915/xe2lpd: Handle port AUX
 interrupts
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

Differently from previous version, Xe2_LPD groups all port AUX interrupt
bits into PICA interrupt registers.

While at it, drop some trailing newlines.

BSpec: 68958, 69697
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h                  | 5 ++---
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 62ce55475554..bff4a76310c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -792,7 +792,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(dev_priv) >= 20)
+		return 0;
+	else if (DISPLAY_VER(dev_priv) >= 14)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB;
 	else if (DISPLAY_VER(dev_priv) >= 13)
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 95a7ea94f417..3398cc21bd26 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -514,6 +514,9 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
 	u32 pin_mask = 0, long_mask = 0;
 
+	if (DISPLAY_VER(i915) >= 20)
+		trigger_aux |= iir & XE2LPD_AUX_DDI_MASK;
+
 	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
 		u32 val;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2f5dd5361263..2f115d339913 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4467,13 +4467,12 @@
 #define PICAINTERRUPT_IMR			_MMIO(0x16FE54)
 #define PICAINTERRUPT_IIR			_MMIO(0x16FE58)
 #define PICAINTERRUPT_IER			_MMIO(0x16FE5C)
-
 #define  XELPDP_DP_ALT_HOTPLUG(hpd_pin)		REG_BIT(16 + _HPD_PIN_TC(hpd_pin))
 #define  XELPDP_DP_ALT_HOTPLUG_MASK		REG_GENMASK(19, 16)
-
 #define  XELPDP_AUX_TC(hpd_pin)			REG_BIT(8 + _HPD_PIN_TC(hpd_pin))
 #define  XELPDP_AUX_TC_MASK			REG_GENMASK(11, 8)
-
+#define  XE2LPD_AUX_DDI(hpd_pin)		REG_BIT(6 + _HPD_PIN_DDI(hpd_pin))
+#define  XE2LPD_AUX_DDI_MASK			REG_GENMASK(7, 6)
 #define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
 #define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
 
-- 
2.40.1

