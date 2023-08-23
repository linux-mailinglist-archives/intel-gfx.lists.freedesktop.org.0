Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B106785E2D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E5910E4A4;
	Wed, 23 Aug 2023 17:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86AA010E487;
 Wed, 23 Aug 2023 17:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810560; x=1724346560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FBMR6rwfb2AiwM284yQe9becQl0ExC8ekOO5190i18M=;
 b=TvaBBFKub4ks7mu+MOzqk3E8TlQrI21MHN++9uTuwxRh3JJAdHpJAWhk
 ML6LeGK/jmW9B5K8QfnTzVpPwq4bnt4Y97PVGhGrCeq3aAH6m+4L7rsiE
 USnY9iBD8NvDFmNuEze8GsYag8Va52kdldvhU5lxNIMcYrjvpnt6+k1OO
 UOJMOFmSvhBRbSlUSjI4dJQRzO6x1+JPJMVOAMaVnZ/VyJGV9J5PadHj/
 /TAIcw2qLPX6HYHbwabhOzT1PwKE2qm7MXwfjxKR0HCQCQ9vl9h0HsuwL
 z2CwdhPxCkeHlXgez6bvh2E+87WXf+mQOb8RlO6HjYMIVc0ZD1BBtkdGW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147496"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147496"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204843"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204843"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:24 -0700
Message-Id: <20230823170740.1180212-27-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 26/42] drm/i915/xe2lpd: Handle port AUX
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

Differently from previous version, Xe2_LPD groups all port AUX interrupt
bits into PICA interrupt registers.

BSpec: 68958, 69697
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h                  | 3 +++
 3 files changed, 9 insertions(+), 1 deletion(-)

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
index f95fa793fabb..f76b9deb64b4 100644
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
index 84c5a76065a0..e31a985b02d5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4520,6 +4520,9 @@
 #define  XELPDP_AUX_TC(hpd_pin)			REG_BIT(8 + _HPD_PIN_TC(hpd_pin))
 #define  XELPDP_AUX_TC_MASK			REG_GENMASK(11, 8)
 
+#define  XE2LPD_AUX_DDI(hpd_pin)		REG_BIT(6 + _HPD_PIN_DDI(hpd_pin))
+#define  XE2LPD_AUX_DDI_MASK			REG_GENMASK(7, 6)
+
 #define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
 #define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
 
-- 
2.40.1

