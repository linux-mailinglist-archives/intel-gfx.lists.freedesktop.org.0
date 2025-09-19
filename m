Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71D4B88A7B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D512A10E978;
	Fri, 19 Sep 2025 09:52:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFgJ1eJK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA7A10E975;
 Fri, 19 Sep 2025 09:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275544; x=1789811544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0uVuUj+ivcyfXfXU5OQd9dthCCeIqbBb4oX1Rk2Z27c=;
 b=CFgJ1eJKOyA6+c2aVHeSzBlWmCDxty3qr1uXLN0irXn7Y6Dstseb7LGb
 Xe75HE00ztW6K6d2lVCzFyeXqtwRFwoJiucN3GWMggEy7hO9/UCwdzR28
 NeouvQq1b8yWNHuQT6n2/kTeqPBVtwSsyyuH1V+51Q5VMQhNNTNKhyjlb
 B+Z53RldTePnpElB6nBvVFfUPcRonIvQPIrjz7dBLuxUsITqs2h6npG81
 bgWsOgr0qGClWJe9kYBQSNcqPm/KJcz/UOW58WddYIMdahVH19A5q8nDG
 rh3COwn723x/APDzYy/89OjeUhWsbXV58SVWMw5CDB2k1l1r8RUORvI7g A==;
X-CSE-ConnectionGUID: uWq9rXX4QxS2mKm/Gj7agQ==
X-CSE-MsgGUID: +N3VPUBYRhKnoqCWvKT0mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60316176"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60316176"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:11 -0700
X-CSE-ConnectionGUID: Ey27WnKeTfW93n9exg/14g==
X-CSE-MsgGUID: IC7npTZQSsuM0uhAphdNLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="206554278"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/6] drm/i915/irq: abstract i9xx_display_irq_enable_mask()
Date: Fri, 19 Sep 2025 12:51:46 +0300
Message-ID: <c16a6d73ce63c9effc7dad16e773918e2227b350.1758275448.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758275448.git.jani.nikula@intel.com>
References: <cover.1758275448.git.jani.nikula@intel.com>
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

Figure out the enable mask for display things in display code. Reuse the
same function for both i915 and i965 code, the end result remains the
same.

This removes a pair of DISPLAY_VER() and HAS_HOTPLUG() checks from core
irq code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display_irq.h |  1 +
 drivers/gpu/drm/i915/i915_irq.c                  | 16 ++--------------
 3 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c6f367e6159e..4d51900123ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1900,6 +1900,22 @@ void i9xx_display_irq_reset(struct intel_display *display)
 	i9xx_pipestat_irq_reset(display);
 }
 
+u32 i9xx_display_irq_enable_mask(struct intel_display *display)
+{
+	u32 enable_mask;
+
+	enable_mask = I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
+		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT;
+
+	if (DISPLAY_VER(display) >= 3)
+		enable_mask |= I915_ASLE_INTERRUPT;
+
+	if (HAS_HOTPLUG(display))
+		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
+
+	return enable_mask;
+}
+
 void i915_display_irq_postinstall(struct intel_display *display)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index cee120347064..e44d88e0d7e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -61,6 +61,7 @@ void vlv_display_irq_reset(struct intel_display *display);
 void gen8_display_irq_reset(struct intel_display *display);
 void gen11_display_irq_reset(struct intel_display *display);
 
+u32 i9xx_display_irq_enable_mask(struct intel_display *display);
 void i915_display_irq_postinstall(struct intel_display *display);
 void i965_display_irq_postinstall(struct intel_display *display);
 void vlv_display_irq_postinstall(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 04de02fc08d9..f9fbb88b9e26 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -895,17 +895,9 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i9xx_error_mask(dev_priv));
 
-	enable_mask =
-		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
+	enable_mask = i9xx_display_irq_enable_mask(display) |
 		I915_MASTER_ERROR_INTERRUPT;
 
-	if (DISPLAY_VER(display) >= 3)
-		enable_mask |= I915_ASLE_INTERRUPT;
-
-	if (HAS_HOTPLUG(display))
-		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
-
 	dev_priv->gen2_imr_mask = ~enable_mask;
 
 	enable_mask |= I915_USER_INTERRUPT;
@@ -1010,11 +1002,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i965_error_mask(dev_priv));
 
-	enable_mask =
-		I915_ASLE_INTERRUPT |
-		I915_DISPLAY_PORT_INTERRUPT |
-		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
+	enable_mask = i9xx_display_irq_enable_mask(display) |
 		I915_MASTER_ERROR_INTERRUPT;
 
 	dev_priv->gen2_imr_mask = ~enable_mask;
-- 
2.47.3

