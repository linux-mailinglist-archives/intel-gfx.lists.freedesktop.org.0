Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C08785E35
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993D210E4AA;
	Wed, 23 Aug 2023 17:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504EB10E485;
 Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810561; x=1724346561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+1bDbtWSxTnhF17qhXhOOYz0UdeLkljY4YGyXcBKMWg=;
 b=PCIHH7r5+exA6vFHjHjW/jO4PjbfKxQ+V1p3PtDuekZX6OhR+JSgQK1X
 87KWZhhzXoUbx0iMVO+AGx0rLOTHn6FquWwOrXhEbOcfOnR/B2ou7fCvi
 nL6qybTY/vkmCvunAw6xBu72YVnQtfmJ4kgtjvFcnc0UlEqxq6WVe3PDV
 NFmjuGoTNKYlvHhL3LQIv05x5n5A4v4NZn9j5sJUvvxjlavkOElRSac0b
 gIrU1S98aAvv8MIwaj93MkQX5XsJvRpQTRtzNhk4xzGq9SZxaZT8VaSBX
 0sO423GBhVSifdwuii2JiCi0oQKuUbRenT1yEecS3vzZr00oQRCGYv1kE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147501"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147501"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204854"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204854"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:27 -0700
Message-Id: <20230823170740.1180212-30-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 29/42] drm/i915/xe2lpd: Add support for HPD
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

Hotplug setup for Xe2_LPD differs from Xe_LPD+ by the fact that the
extra programming for hotplug inversion and DDI HPD filter duration is
not necessary anymore. As mtp_hpd_irq_setup() is reasonably small,
prefer to fork it into a new function for Xe2_LPD instead of adding a
platform check.

BSpec: 68970
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index f76b9deb64b4..74aea0d8d9ae 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -163,7 +163,9 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
 		return;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
+		hpd->pch_hpd = hpd_mtp;
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		hpd->pch_hpd = hpd_sde_dg1;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
 		hpd->pch_hpd = hpd_mtp;
@@ -1061,6 +1063,19 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 	mtp_tc_hpd_detection_setup(i915);
 }
 
+static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+
+	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
+
+	mtp_ddi_hpd_detection_setup(i915);
+	mtp_tc_hpd_detection_setup(i915);
+}
+
 static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
 {
 	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
@@ -1120,6 +1135,8 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 
 	xelpdp_pica_hpd_detection_setup(i915);
 
+	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
+		xe2lpd_sde_hpd_irq_setup(i915);
 	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
 		mtp_hpd_irq_setup(i915);
 }
-- 
2.40.1

