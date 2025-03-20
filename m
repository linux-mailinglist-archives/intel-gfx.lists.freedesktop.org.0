Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9DFA6A8F5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 15:46:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91EEA10E648;
	Thu, 20 Mar 2025 14:46:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dYxnsWNf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C60B10E647;
 Thu, 20 Mar 2025 14:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742482011; x=1774018011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tpvHxHF54/YM1i8UGEB77kbvG7rY3oYDrEwGb6foDGM=;
 b=dYxnsWNfO/PuhsdimesKtVF5jsYqI5rwroCIbRptOFp4Sv4ydRyMYCMP
 NBrxqeCpaFzZjHBLwSa4/OQ1yLzIk8Jlsn+BKulLKyz1dVR8uRj3ieBPo
 9UnBKOxJiOb+3D/IQXNHtJWs5uSVbNOngWA8gVij6QipS9y7r/yJ22vkM
 92W/f8IeNaQNPLAVwJr4pcwSNSNxHE7dDgnnWeHB+SX5UdWOlyHBacB2d
 OV1RVWOLLMNi9U/S7GBN0ngNLJMceC1BgawyKBaZ3r911Jte7czexzL7l
 NdJdU1G8H2A4mIHJK/yN0Gj3zrPrFNdgpizhwk4ikV2uqu/zGFQZKKnPp A==;
X-CSE-ConnectionGUID: G2BJM/Y3Q2G8yaVDZEEUuw==
X-CSE-MsgGUID: xioOFo8mQYqV3drMZ0wMKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43638706"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43638706"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:51 -0700
X-CSE-ConnectionGUID: PTFncKziQb+DLVOZU8zIVA==
X-CSE-MsgGUID: WnFf/GMpRba76wvxTVbkFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="154116217"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 07:46:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 9/9] drm/i915/display: rename I915_HAS_HOTPLUG() to HAS_HOTPLUG
Date: Thu, 20 Mar 2025 16:46:05 +0200
Message-Id: <c386ef007ae8bdda1bb9b1b353b1cd2957897842.1742481923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742481923.git.jani.nikula@intel.com>
References: <cover.1742481923.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Most of the other display feature check macros are just
HAS_<something>. Follow suit with hotplug check.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c            | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c           | 2 +-
 drivers/gpu/drm/i915/i915_irq.c                     | 4 ++--
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index a7f360f89410..cca22d2402e8 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -877,7 +877,7 @@ intel_crt_detect(struct drm_connector *connector,
 
 	wakeref = intel_display_power_get(display, encoder->power_domain);
 
-	if (I915_HAS_HOTPLUG(display)) {
+	if (HAS_HOTPLUG(display)) {
 		/* We can not rely on the HPD pin always being correctly wired
 		 * up, for example many KVM do not pass it through, and so
 		 * only trust an assertion that the monitor is connected.
@@ -901,7 +901,7 @@ intel_crt_detect(struct drm_connector *connector,
 	 * broken monitor (without edid) to work behind a broken kvm (that fails
 	 * to have the right resistors for HP detection) needs to fix this up.
 	 * For now just bail out. */
-	if (I915_HAS_HOTPLUG(display)) {
+	if (HAS_HOTPLUG(display)) {
 		status = connector_status_disconnected;
 		goto out;
 	}
@@ -1081,7 +1081,7 @@ void intel_crt_init(struct intel_display *display)
 
 	crt->base.power_domain = POWER_DOMAIN_PORT_CRT;
 
-	if (I915_HAS_HOTPLUG(display) &&
+	if (HAS_HOTPLUG(display) &&
 	    !dmi_check_system(intel_spurious_crt_detect)) {
 		crt->base.hpd_pin = HPD_CRT;
 		crt->base.hotplug = intel_encoder_hotplug;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4e9630f65af6..368b0d3417c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -171,6 +171,7 @@ struct intel_display_platforms {
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
 #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
+#define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
 #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
 #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
 #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
@@ -192,7 +193,6 @@ struct intel_display_platforms {
 					 HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
-#define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6f78fe6de06a..d9f9b9f78abb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1900,7 +1900,7 @@ void vlv_display_irq_reset(struct intel_display *display)
 
 void i9xx_display_irq_reset(struct intel_display *display)
 {
-	if (I915_HAS_HOTPLUG(display)) {
+	if (HAS_HOTPLUG(display)) {
 		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
 		intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 1bcff3a47745..2463e61e7802 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1481,7 +1481,7 @@ void intel_hotplug_irq_init(struct intel_display *display)
 	intel_hpd_init_early(display);
 
 	if (HAS_GMCH(display)) {
-		if (I915_HAS_HOTPLUG(display))
+		if (HAS_HOTPLUG(display))
 			display->funcs.hotplug = &i915_hpd_funcs;
 	} else {
 		if (HAS_PCH_DG2(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6e2d9929b4d7..757b9ce7e3b1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2036,7 +2036,7 @@ static u16 intel_sdvo_get_hotplug_support(struct intel_sdvo *intel_sdvo)
 	struct intel_display *display = to_intel_display(&intel_sdvo->base);
 	u16 hotplug;
 
-	if (!I915_HAS_HOTPLUG(display))
+	if (!HAS_HOTPLUG(display))
 		return 0;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ba3afc7e38ac..c1f938a1da44 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -954,7 +954,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		enable_mask |= I915_ASLE_INTERRUPT;
 	}
 
-	if (I915_HAS_HOTPLUG(dev_priv)) {
+	if (HAS_HOTPLUG(dev_priv)) {
 		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
@@ -995,7 +995,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 		ret = IRQ_HANDLED;
 
-		if (I915_HAS_HOTPLUG(dev_priv) &&
+		if (HAS_HOTPLUG(dev_priv) &&
 		    iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(display);
 
-- 
2.39.5

