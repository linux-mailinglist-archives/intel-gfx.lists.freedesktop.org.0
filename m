Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5099C4437
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071C610E503;
	Mon, 11 Nov 2024 17:54:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SrYgXlPT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF8010E501;
 Mon, 11 Nov 2024 17:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731347645; x=1762883645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BskREQttOwFsVhHGnneXurSO1kPQ8EZH3DfrZIZ8+fQ=;
 b=SrYgXlPT9sikuNh5RDbUX2DTJIH3f+b559L08ES07tObeajtzjFpVw5V
 Zh0BpT8tu0HB7zLUxrCoc6FrkEFVP9rOPZgc3uFoO/s3cLGH60mqgLa/Y
 HIfVOq8Bm5Xsx6tfeOCc8HY3JzkYTuEukh59U9o7fDlvEiGnmLckwMvaZ
 sIAx0dimQ5CBVHvMEhF8BbDf7spqvrn5YygX5T5xe0jbUwBxI7xPLlxtq
 zH0NhKxSvrLJE2XpQCNLCDpfhDaPWg+KHl5h0Gec2xVcon3qs+2DhqQwT
 PiMC2ETnjcvHePjiBbQl7Lsa1IDTtKLy/qtZmU1PhaYDQM+mhszE7Dzgc g==;
X-CSE-ConnectionGUID: VpwlXLWiQ5uyMptvxUFboQ==
X-CSE-MsgGUID: PbuxChX4T5KbOYeTXVgjtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31317379"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31317379"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:54:05 -0800
X-CSE-ConnectionGUID: za+6/fPxQ7iDA4FvKvhSqg==
X-CSE-MsgGUID: TaEHexMHSjyT9kwDWezmBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86985907"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:54:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915/irq: emphasize display_irqs_enabled is only
 about VLV/CHV
Date: Mon, 11 Nov 2024 19:53:34 +0200
Message-Id: <3540e31869bbb68abd6cae88375d214d3aa1f5e5.1731347547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731347547.git.jani.nikula@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
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

Rename display_irqs_enabled to vlv_display_irqs_enabled, to emphasize
it's really only about VLV/CHV. Only access it when running on VLV/CHV.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  9 ++++++-
 .../gpu/drm/i915/display/intel_display_irq.c  | 26 ++++++-------------
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  6 ++++-
 3 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 45b7c6900adc..5ad66df1a85e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -453,7 +453,14 @@ struct intel_display {
 	} ips;
 
 	struct {
-		bool display_irqs_enabled;
+		/*
+		 * Most platforms treat the display irq block as an always-on
+		 * power domain. vlv/chv can disable it at runtime and need
+		 * special care to avoid writing any of the display block
+		 * registers outside of the power domain. We defer setting up
+		 * the display irqs in this case to the runtime pm.
+		 */
+		bool vlv_display_irqs_enabled;
 
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d5458b0d976b..50c1ca062b80 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -434,7 +434,8 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 
 	spin_lock(&dev_priv->irq_lock);
 
-	if (!dev_priv->display.irq.display_irqs_enabled) {
+	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
 		spin_unlock(&dev_priv->irq_lock);
 		return;
 	}
@@ -1499,7 +1500,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->display.irq.display_irqs_enabled)
+	if (dev_priv->display.irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_reset(dev_priv);
 }
 
@@ -1522,7 +1523,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 	u32 enable_mask;
 	enum pipe pipe;
 
-	if (!dev_priv->display.irq.display_irqs_enabled)
+	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
@@ -1697,10 +1698,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (dev_priv->display.irq.display_irqs_enabled)
+	if (dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.display_irqs_enabled = true;
+	dev_priv->display.irq.vlv_display_irqs_enabled = true;
 
 	if (intel_irqs_enabled(dev_priv)) {
 		_vlv_display_irq_reset(dev_priv);
@@ -1712,10 +1713,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (!dev_priv->display.irq.display_irqs_enabled)
+	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.display_irqs_enabled = false;
+	dev_priv->display.irq.vlv_display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
 		_vlv_display_irq_reset(dev_priv);
@@ -1911,17 +1912,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 {
 	i915->drm.vblank_disable_immediate = true;
 
-	/*
-	 * Most platforms treat the display irq block as an always-on power
-	 * domain. vlv/chv can disable it at runtime and need special care to
-	 * avoid writing any of the display block registers outside of the power
-	 * domain. We defer setting up the display irqs in this case to the
-	 * runtime pm.
-	 */
-	i915->display.irq.display_irqs_enabled = true;
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		i915->display.irq.display_irqs_enabled = false;
-
 	intel_hotplug_irq_init(i915);
 
 	INIT_WORK(&i915->display.irq.vblank_dc_work,
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index cb64c6f0ad1b..476ac88087e0 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1457,7 +1457,11 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
 
 void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-	if (i915->display.irq.display_irqs_enabled && i915->display.funcs.hotplug)
+	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
+	    !i915->display.irq.vlv_display_irqs_enabled)
+		return;
+
+	if (i915->display.funcs.hotplug)
 		i915->display.funcs.hotplug->hpd_irq_setup(i915);
 }
 
-- 
2.39.5

