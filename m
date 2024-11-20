Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667519D3986
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2C710E715;
	Wed, 20 Nov 2024 11:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EHUimwn0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF02610E715;
 Wed, 20 Nov 2024 11:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102264; x=1763638264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EKyqmMuUla1IlMDQ1T+KnElig4p6umKx0c8yijIGTpw=;
 b=EHUimwn0xo97McmZiVCx2Rv4/iykNUI88Ia5XxQ4jNDR3tQDcmucj2LT
 +F5HY+W0nj9DukYZG57rvsStwsWxA+mRrV3JmrW2YsYTa3YjFD+4Rjfis
 wqgctzvKbTp7JKKsIQbUCocqLrWh1FfTLYti2eB1xe4+a05n7o1LQRQTK
 u89+yDab7ZYXN5V29CtH0rTJlz8Je2Uq4AsL7NCichhOc7ua9gz9qhBwP
 +G3x1xSFIw+vDKA7VtP74GN8BPbWeEO6N1LLTfd8Znkm8yD4XPcryGI/T
 lxAGhSstkkf2tZmuWk5Damptbgm055ThYsegJwzaI6MDsRuJzdN7eVUT6 g==;
X-CSE-ConnectionGUID: SajbK0tiQFu4qRP/GAZ75g==
X-CSE-MsgGUID: 7O+rTmgcStyQ5EfeOa5+HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32266699"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32266699"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:31:04 -0800
X-CSE-ConnectionGUID: TEouYn8cR8i06Pe4AhinWA==
X-CSE-MsgGUID: otmHzPn7R1upbJUpZpBR1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94951549"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:31:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 5/5] drm/i915/irq: emphasize display_irqs_enabled is only about
 VLV/CHV
Date: Wed, 20 Nov 2024 13:30:33 +0200
Message-Id: <f60104ea59687cb8c65b18b4f9ddd832a643407d.1732102179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732102179.git.jani.nikula@intel.com>
References: <cover.1732102179.git.jani.nikula@intel.com>
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

Use display_irqs_enabled only on VLV/CHV where it's relevant. Rename to
vlv_display_irqs_enabled, to emphasize it's really only about VLV/CHV.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  9 ++++++-
 .../gpu/drm/i915/display/intel_display_irq.c  | 26 ++++++-------------
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  6 ++++-
 3 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index f6c1bedf1c31..62b0597aa91e 100644
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
index 6467a208184e..cb79c2796e3a 100644
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
@@ -1501,7 +1502,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->display.irq.display_irqs_enabled)
+	if (dev_priv->display.irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_reset(dev_priv);
 }
 
@@ -1524,7 +1525,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 	u32 enable_mask;
 	enum pipe pipe;
 
-	if (!dev_priv->display.irq.display_irqs_enabled)
+	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
@@ -1699,10 +1700,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (dev_priv->display.irq.display_irqs_enabled)
+	if (dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.display_irqs_enabled = true;
+	dev_priv->display.irq.vlv_display_irqs_enabled = true;
 
 	if (intel_irqs_enabled(dev_priv)) {
 		_vlv_display_irq_reset(dev_priv);
@@ -1714,10 +1715,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (!dev_priv->display.irq.display_irqs_enabled)
+	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.display_irqs_enabled = false;
+	dev_priv->display.irq.vlv_display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
 		_vlv_display_irq_reset(dev_priv);
@@ -1913,17 +1914,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
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

