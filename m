Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D643F5F6BCC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 18:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D334D10E470;
	Thu,  6 Oct 2022 16:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D5E10E470
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 16:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665073943; x=1696609943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L9ZyTcC1BlO7GhKxXPhwCT3XWRMPZgCsi5MmJj9QlAo=;
 b=Ey74MUNdPHwr+u+JyCElD9sCSfMcFMEfnLT1hmJryEodCldXcaHeEv5e
 xo5EL+0/ZphCJxDPnDYJF+C5pk6lqEw8iBHYilBJOcIGgGLps4q+EO247
 cmhnscMqXRy0M7/iMn4kGLwC+H5MzNR2SZEKQUPgV0VoxAbTSO1QCIRpG
 DMtWkpX9YESxKbmLKaVtM8Ks61jaXflh/jlMtEer6CSWPPE9og5Iz2skF
 OQ+fKFrm2r+xoVSfhNDmYkZe1j+UDSFzUWHc+deee+YeD32Z8+IQ8dGm0
 SBOBYtTA3ZHtMU+ViF+TPu77xlYZe8Nl3I2aCrpMpu/5RodUsvIt+dQw0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="303473870"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="303473870"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:32:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="799951461"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="799951461"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:32:21 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Oct 2022 18:31:58 +0200
Message-Id: <20221006163200.2803722-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006163200.2803722-1-andrzej.hajda@intel.com>
References: <20221006163200.2803722-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: Use intel_uncore alias
 if defined
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
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 87cb05b3b6ceab..6cbdefadd09180 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3020,7 +3020,7 @@ static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
 
 	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
-	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
+	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -3118,7 +3118,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	gen8_master_intr_disable(dev_priv->uncore.regs);
+	gen8_master_intr_disable(uncore->regs);
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(dev_priv);
@@ -3250,7 +3250,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
+	intel_uncore_write(uncore, GEN8_MASTER_IRQ, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
@@ -4110,8 +4110,8 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	intel_uncore_write(&dev_priv->uncore, EMR, ~(I915_ERROR_PAGE_TABLE |
-			  I915_ERROR_MEMORY_REFRESH));
+	intel_uncore_write(uncore, EMR, ~(I915_ERROR_PAGE_TABLE |
+					  I915_ERROR_MEMORY_REFRESH));
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
@@ -4206,7 +4206,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
+	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
 
 	i9xx_pipestat_irq_reset(dev_priv);
 
@@ -4233,7 +4233,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 		error_mask = ~(I915_ERROR_PAGE_TABLE |
 			       I915_ERROR_MEMORY_REFRESH);
 	}
-	intel_uncore_write(&dev_priv->uncore, EMR, error_mask);
+	intel_uncore_write(uncore, EMR, error_mask);
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
-- 
2.34.1

