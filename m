Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 406AD773BA3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 17:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A806710E1DA;
	Tue,  8 Aug 2023 15:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1271A10E1DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 15:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691510025; x=1723046025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xpDD6SoaCO5qHe/GIG63/8klHYeUpfKhIlRD63xSk5o=;
 b=OIwJZvo0fXi8bBfYbjdhIPFHeZ8tsrOA8aNj9cA48PEgGt52NXPEk4+J
 zAWvRwcfSaOn622VbkzmcxpMcQQP/9IjOFcunUE+oQWLiiHFtX7pxn8dB
 xyH23r8V0gVwkDkhiG5nMY60wgeAyxu0INM8fNyUusJZnPJy8EJf39/NO
 9eWlc9nQzb56/KSeWPVnPk1UbNMwyhts2n+DrQX12sdMVs1Ups4UoZtX8
 82M7fkCC1ZgGcdC32GZzTAikvVf636cRE48aihxdj9KhuSe6w/90+vATA
 pbQtEnzIaHtfIF9VJOvN+MxKCl0yguj+8/+nWTWA6+kVe254+6ldLF00J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="457249950"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="457249950"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="1062069764"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="1062069764"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 18:53:29 +0300
Message-Id: <cb6bb860fb7596d6b37c3e1e4c7657064d2d747a.1691509966.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1691509966.git.jani.nikula@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/irq: add dg1_de_irq_postinstall()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a dedicated de postinstall function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c    | 17 ++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h    |  2 +-
 drivers/gpu/drm/i915/i915_irq.c                 | 11 +----------
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 168f6d4ce208..a706ba740dd6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1666,7 +1666,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	}
 }
 
-void mtp_irq_postinstall(struct drm_i915_private *i915)
+static void mtp_irq_postinstall(struct drm_i915_private *i915)
 {
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
@@ -1699,6 +1699,21 @@ void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			   GEN11_DISPLAY_IRQ_ENABLE);
 }
 
+void dg1_de_irq_postinstall(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	if (DISPLAY_VER(i915) >= 14)
+		mtp_irq_postinstall(i915);
+	else
+		icp_irq_postinstall(i915);
+
+	gen8_de_irq_postinstall(i915);
+	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
+			   GEN11_DISPLAY_IRQ_ENABLE);
+}
+
 void intel_display_irq_init(struct drm_i915_private *i915)
 {
 	i915->drm.vblank_disable_immediate = true;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 8a2d069d3aac..ce190557826b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -62,8 +62,8 @@ void ibx_irq_postinstall(struct drm_i915_private *i915);
 void vlv_display_irq_postinstall(struct drm_i915_private *i915);
 void icp_irq_postinstall(struct drm_i915_private *i915);
 void gen8_de_irq_postinstall(struct drm_i915_private *i915);
-void mtp_irq_postinstall(struct drm_i915_private *i915);
 void gen11_de_irq_postinstall(struct drm_i915_private *i915);
+void dg1_de_irq_postinstall(struct drm_i915_private *i915);
 
 u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
 void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 1723c215dcf6..8c074643b6d1 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -869,16 +869,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
 
-	if (HAS_DISPLAY(dev_priv)) {
-		if (DISPLAY_VER(dev_priv) >= 14)
-			mtp_irq_postinstall(dev_priv);
-		else
-			icp_irq_postinstall(dev_priv);
-
-		gen8_de_irq_postinstall(dev_priv);
-		intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
-				   GEN11_DISPLAY_IRQ_ENABLE);
-	}
+	dg1_de_irq_postinstall(dev_priv);
 
 	dg1_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
-- 
2.39.2

