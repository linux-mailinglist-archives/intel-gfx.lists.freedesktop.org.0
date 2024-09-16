Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0383097A30F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 15:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695E410E375;
	Mon, 16 Sep 2024 13:47:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GITNBsJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A5710E375
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 13:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726494447; x=1758030447;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gFzNNHAvQD/VxZHpkky52vGrmOvx7gdYNBidaa44d1c=;
 b=GITNBsJEMGwleVUKLsPV2fBCSoT/dVJmF0cS8bJODmBl0vfHusvnMCRC
 XADIfo+g816Pam+f5iE0LwEBCYNXCtmQV1acvOdU6vWXRqZl33GEljy0n
 WGnVLCGFYFcF2tB/n9HAtyoyGYU/Pyz+P6sHu/FLrJIyCJOg8b7zsxFLh
 J2n0CNl6kJnO3yR8VFczxxI9JYgcbXrE9Kl9FQ/J9lX7EUZ6gSqgbjTqk
 0Tfal7PEGQHjbR/EX1mJCDQOxfVRP13pe6XhGoOZetlJ+eToeoHbAzVcO
 /bv2V0iBGp7UDzBYIuenWYynOHYkqCNVttXgsg7dji73MY7Y2VqhC8Rt1 g==;
X-CSE-ConnectionGUID: YykVwnWcTcCz9PVA+HlfXg==
X-CSE-MsgGUID: 62z9GQSkS5uCOJhZLyyj/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="24801610"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="24801610"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 06:47:26 -0700
X-CSE-ConnectionGUID: X3v6hl4RSESMxcNng4Ns2Q==
X-CSE-MsgGUID: S/OqMjVMRouaFr59IfgFYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99721702"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 06:47:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: add i9xx_display_irq_reset()
Date: Mon, 16 Sep 2024 16:47:20 +0300
Message-Id: <20240916134720.501725-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add common i9xx_display_irq_reset() for display 2-4. The check for
I915_HAS_HOTPLUG() covers all the alternatives.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_display_irq.h |  2 +-
 drivers/gpu/drm/i915/i915_irq.c                  | 15 +++------------
 3 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8f13f148c73e..b830756124c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -405,7 +405,7 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     res1, res2);
 }
 
-void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
+static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 {
 	enum pipe pipe;
 
@@ -1466,6 +1466,17 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 	dev_priv->irq_mask = ~0u;
 }
 
+void i9xx_display_irq_reset(struct drm_i915_private *i915)
+{
+	if (I915_HAS_HOTPLUG(i915)) {
+		i915_hotplug_interrupt_update(i915, 0xffffffff, 0);
+		intel_uncore_rmw(&i915->uncore,
+				 PORT_HOTPLUG_STAT(i915), 0, 0);
+	}
+
+	i9xx_pipestat_irq_reset(i915);
+}
+
 void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 2a090dd6abd7..093e356a2894 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -54,6 +54,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915);
 u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir);
 
+void i9xx_display_irq_reset(struct drm_i915_private *i915);
 void vlv_display_irq_reset(struct drm_i915_private *i915);
 void gen8_display_irq_reset(struct drm_i915_private *i915);
 void gen11_display_irq_reset(struct drm_i915_private *i915);
@@ -68,7 +69,6 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
 void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
 void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
 void i915_enable_asle_pipestat(struct drm_i915_private *i915);
-void i9xx_pipestat_irq_reset(struct drm_i915_private *i915);
 
 void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2321de48d169..231592125934 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -849,7 +849,7 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	i9xx_pipestat_irq_reset(dev_priv);
+	i9xx_display_irq_reset(dev_priv);
 
 	gen2_irq_reset(uncore);
 	dev_priv->irq_mask = ~0u;
@@ -1037,13 +1037,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	if (I915_HAS_HOTPLUG(dev_priv)) {
-		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-		intel_uncore_rmw(&dev_priv->uncore,
-				 PORT_HOTPLUG_STAT(dev_priv), 0, 0);
-	}
-
-	i9xx_pipestat_irq_reset(dev_priv);
+	i9xx_display_irq_reset(dev_priv);
 
 	GEN3_IRQ_RESET(uncore, GEN2_);
 	dev_priv->irq_mask = ~0u;
@@ -1148,10 +1142,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
-	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
-
-	i9xx_pipestat_irq_reset(dev_priv);
+	i9xx_display_irq_reset(dev_priv);
 
 	GEN3_IRQ_RESET(uncore, GEN2_);
 	dev_priv->irq_mask = ~0u;
-- 
2.39.2

