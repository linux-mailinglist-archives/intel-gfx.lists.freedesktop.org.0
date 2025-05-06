Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D72FAAC527
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D2B310E694;
	Tue,  6 May 2025 13:07:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eXPQEi7n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BC210E693;
 Tue,  6 May 2025 13:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536823; x=1778072823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aYVX4vW93UZbvoGYFwGg9ZwTLUl/DVRR+OtUBueQkpc=;
 b=eXPQEi7nMVRQiEPr7mk9wAFQq/4/Ng9xwOC4fz12J/emWD5gZu4IAY80
 NzIvPSh4gJP7RqFG/PbmTrVzIeS8sHTBQiZSauX9947T51Y5Of0lBcRYR
 Pa5dM4bwdMgq1Ce8tAMW0nlpqcNfiaU+y+frsR/lDsD0kWWKSShfNIqdE
 /PxdpZEvX6qiO3dbgDUBQk94KmzJWMKVX5jiTnK7CzibMpiLsAeEoJ2RE
 sjFEg3W9BqbrEwCwRLcekuJp510bVL9INW7KMAhxxjsHtOKhJjrkp1YnJ
 DFasRYJcz1daLO3fGW20JLmNi4tEM83DD2sUeJet3iWE1Ocq3revVdLmZ Q==;
X-CSE-ConnectionGUID: Whe73fPOTyqXXCDZbB+30Q==
X-CSE-MsgGUID: rc1+NBLaR5mKze4SLsc+ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112260"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112260"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:03 -0700
X-CSE-ConnectionGUID: G1539JhNQj2k0Nqb87tAcg==
X-CSE-MsgGUID: XkwAkZBzRYGF8rTfxVoAeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588261"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/8] drm/i915/irq: move locking inside valleyview_{enable,
 disable}_display_irqs()
Date: Tue,  6 May 2025 16:06:44 +0300
Message-Id: <bb6d941c47260aea11e4af5d52572b0e5f139929.1746536745.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
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

All users of valleyview_enable_display_irqs() and
valleyview_disable_display_irqs() have a lock/unlock pair. Move the
locking inside the functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 13 +++++++++----
 .../gpu/drm/i915/display/intel_display_power_well.c |  5 -----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 22bb0fc10736..3d2294a4d83d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2117,10 +2117,10 @@ void valleyview_enable_display_irqs(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	spin_lock_irq(&dev_priv->irq_lock);
 
 	if (display->irq.vlv_display_irqs_enabled)
-		return;
+		goto out;
 
 	display->irq.vlv_display_irqs_enabled = true;
 
@@ -2128,21 +2128,26 @@ void valleyview_enable_display_irqs(struct intel_display *display)
 		_vlv_display_irq_reset(display);
 		vlv_display_irq_postinstall(display);
 	}
+
+out:
+	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 void valleyview_disable_display_irqs(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	lockdep_assert_held(&dev_priv->irq_lock);
+	spin_lock_irq(&dev_priv->irq_lock);
 
 	if (!display->irq.vlv_display_irqs_enabled)
-		return;
+		goto out;
 
 	display->irq.vlv_display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
 		_vlv_display_irq_reset(display);
+out:
+	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 void ilk_de_irq_postinstall(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 6335fa909a7b..b104bce0e14d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1212,7 +1212,6 @@ static void vlv_init_display_clock_gating(struct intel_display *display)
 
 static void vlv_display_power_well_init(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	enum pipe pipe;
 
@@ -1236,9 +1235,7 @@ static void vlv_display_power_well_init(struct intel_display *display)
 
 	vlv_init_display_clock_gating(display);
 
-	spin_lock_irq(&dev_priv->irq_lock);
 	valleyview_enable_display_irqs(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/*
 	 * During driver initialization/resume we can avoid restoring the
@@ -1265,9 +1262,7 @@ static void vlv_display_power_well_deinit(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	spin_lock_irq(&dev_priv->irq_lock);
 	valleyview_disable_display_irqs(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* make sure we're done processing display irqs */
 	intel_synchronize_irq(dev_priv);
-- 
2.39.5

