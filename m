Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4093FB1CA16
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB16E10E7B7;
	Wed,  6 Aug 2025 16:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G86tlkKN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8C810E7B1;
 Wed,  6 Aug 2025 16:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499350; x=1786035350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0bRttDbN2MwXmEQxCvQErtx2U92Jf2QoZrubaEqDlAw=;
 b=G86tlkKNG/T4/bawA71zJxd5qD9ec3x9mjLzBV+Ya1Xo6IvUDFQJxINY
 6NBMCWoiYYrvKvNFZjAkP8NomqzoWpKDE2qL5Y9v5QPppiKTwiesdzgnp
 7MVLzzD/yfh0ebguc8yKS8OYm5ud/HbrV0V+ckzNvUndR1Gar4X7uoJCV
 OQxTCOXhXSk+y5DcGpbq6Q+N9LtD3OVbp70C1KVXwgB1i4JmKf4MQlKE+
 DlFqQLb+Y/ICNb8mP3dSTLi8u5pgb6lyqmI4u0u4thGRWTvv8A0khrxsY
 eKQOkLJWbEVurokKB5jNFx0m3CwRSJHmjnVpwec8SuzakzUadAdMBbtG7 A==;
X-CSE-ConnectionGUID: U0oHpZvNTHORqxR/A7MKZQ==
X-CSE-MsgGUID: f6jql+TCSwqGcm1+fSxAsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199692"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199692"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:50 -0700
X-CSE-ConnectionGUID: XptFu2EBSZK0OZdylndGQw==
X-CSE-MsgGUID: SAxeewQeQL6vEtq1t2DYNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659332"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/15] drm/i915/irq: pass display to macros that expect display
Date: Wed,  6 Aug 2025 19:55:07 +0300
Message-Id: <de3302dd9ebc21226a9dadcbcdeeaf01e57186be.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

Underneath, the HAS_PCH_NOP(), DISPLAY_VER(), HAS_FBC(), and
HAS_HOTPLUG() macros really expect a struct intel_display. Switch to it
in preparation for removing the transitional __to_intel_display() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 191ed8bb1d9c..a5fa40ab5de2 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -439,7 +439,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	 * able to process them after we restore SDEIER (as soon as we restore
 	 * it, we'll get an interrupt if SDEIIR still has something to process
 	 * due to its back queue). */
-	if (!HAS_PCH_NOP(i915)) {
+	if (!HAS_PCH_NOP(display)) {
 		sde_ier = raw_reg_read(regs, SDEIER);
 		raw_reg_write(regs, SDEIER, 0);
 	}
@@ -459,7 +459,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	de_iir = raw_reg_read(regs, DEIIR);
 	if (de_iir) {
 		raw_reg_write(regs, DEIIR, de_iir);
-		if (DISPLAY_VER(i915) >= 7)
+		if (DISPLAY_VER(display) >= 7)
 			ivb_display_irq_handler(display, de_iir);
 		else
 			ilk_display_irq_handler(display, de_iir);
@@ -834,6 +834,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static u32 i9xx_error_mask(struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
 	/*
 	 * On gen2/3 FBC generates (seemingly spurious)
 	 * display INVALID_GTT/INVALID_GTT_PTE table errors.
@@ -846,7 +847,7 @@ static u32 i9xx_error_mask(struct drm_i915_private *i915)
 	 * Unfortunately we can't mask off individual PGTBL_ER bits,
 	 * so we just have to mask off all page table errors via EMR.
 	 */
-	if (HAS_FBC(i915))
+	if (HAS_FBC(display))
 		return I915_ERROR_MEMORY_REFRESH;
 	else
 		return I915_ERROR_PAGE_TABLE |
@@ -924,12 +925,12 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_MASTER_ERROR_INTERRUPT |
 		I915_USER_INTERRUPT;
 
-	if (DISPLAY_VER(dev_priv) >= 3) {
+	if (DISPLAY_VER(display) >= 3) {
 		dev_priv->irq_mask &= ~I915_ASLE_INTERRUPT;
 		enable_mask |= I915_ASLE_INTERRUPT;
 	}
 
-	if (HAS_HOTPLUG(dev_priv)) {
+	if (HAS_HOTPLUG(display)) {
 		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
@@ -963,7 +964,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 		ret = IRQ_HANDLED;
 
-		if (HAS_HOTPLUG(dev_priv) &&
+		if (HAS_HOTPLUG(display) &&
 		    iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(display);
 
-- 
2.39.5

