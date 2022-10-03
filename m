Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5F15F3921
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 00:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D6110E509;
	Mon,  3 Oct 2022 22:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D858E10E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 22:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664836401; x=1696372401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VQ7Yh6faciiNw7Sv3qpnr2Yv8A5L3rVVbzMqGfwoUFg=;
 b=dKa0Z03XX0Z/m0Q/lIDlu1qA0qN0Dus6nX1P+HfrgVkGClAYlYcLFAZ8
 JNoN0+kd1cZpJKOu5EGR4Iez/wNvrl/tXURWgonpA1u7jfhaKqw/NKxMc
 TvWQCBIJPdmKrP7zsufb+lXqzcdBH3u9xpQ2LqqQ0bpca0VTyo8Zb9Bx9
 V4BjCtd7aiD7BMFWnFQy29jdBaU1Yb/7jvSLa4m2a18O+mS9aVelxLmvJ
 JnNnuPigPgnCJO7MglSlRmZl5dPHuy52iOGELC2Xd0y1xepJMDXBotizS
 ATaTA/mdW9Dft8zdkkWCEA06RNB2ao6AfE1QnPKj9OzXzCtpd7uflyQRe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="285967349"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="285967349"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692262839"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692262839"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:19 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 00:32:56 +0200
Message-Id: <20221003223258.2650934-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003223258.2650934-1-andrzej.hajda@intel.com>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Use intel_uncore alias if
 defined
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
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Alias is shorter and more readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 87cb05b3b6ceab..a1217c7fe6efb0 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3020,7 +3020,8 @@ static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
-	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
+	intel_uncore_write(uncore, PORT_HOTPLUG_STAT,
+			   intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -3118,7 +3119,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	gen8_master_intr_disable(dev_priv->uncore.regs);
+	gen8_master_intr_disable(uncore->regs);
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(dev_priv);
@@ -3250,7 +3251,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
+	intel_uncore_write(uncore, GEN8_MASTER_IRQ, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
@@ -4110,8 +4111,8 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	intel_uncore_write(&dev_priv->uncore, EMR, ~(I915_ERROR_PAGE_TABLE |
-			  I915_ERROR_MEMORY_REFRESH));
+	intel_uncore_write(uncore, EMR, ~(I915_ERROR_PAGE_TABLE |
+					  I915_ERROR_MEMORY_REFRESH));
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
@@ -4206,7 +4207,8 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
+	intel_uncore_write(uncore, PORT_HOTPLUG_STAT,
+			   intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -4233,7 +4235,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 		error_mask = ~(I915_ERROR_PAGE_TABLE |
 			       I915_ERROR_MEMORY_REFRESH);
 	}
-	intel_uncore_write(&dev_priv->uncore, EMR, error_mask);
+	intel_uncore_write(uncore, EMR, error_mask);
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
-- 
2.34.1

