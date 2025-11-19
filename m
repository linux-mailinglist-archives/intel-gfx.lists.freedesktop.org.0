Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37A6C70B52
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7467610E67D;
	Wed, 19 Nov 2025 18:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m12EV5Ai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1123110E67D;
 Wed, 19 Nov 2025 18:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578400; x=1795114400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BHfUtpOZKG/IC7WF7lQXQyqXh7Q6r7aPT15o1QM+IIg=;
 b=m12EV5AiFHtg8QOEegPgt9oGEQ6RVoNjxVWaYan2aaHaURhXPK7Gmtjg
 q19r5zHx7DunwsJtmL0ygtUT5wGRz/7IBwGKbuvb/NdqvcD7+e/hqh2/j
 BZAChBDxZhB0rQEmBku5X7mVXegxnSgXCGu8CZiaCG2XiJkPXH6ylS+zL
 /PTzq12v8nk9lN7Ktx8lLTVJ6ZJ1fuofVIcz216GZHp514BnAEJvf0Ivm
 6+3rvgNaLftwVKcm8kmUkQhcAgLUC9xJ7VfX81sOHtGJAAEubglWhYRNy
 l+fpwSoY7LBgYb4gM5phtmSj3wjCSuXf2Vjqz6fCM25btEl17S75iR+4v w==;
X-CSE-ConnectionGUID: AqTuEdKXQJOasCS3lUtnpg==
X-CSE-MsgGUID: 9zbaUOHcSJWms/eUYn44vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="53205178"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="53205178"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:20 -0800
X-CSE-ConnectionGUID: 05Xy/XhhRM2dOArO8/URQg==
X-CSE-MsgGUID: /czu8/79SUGI61bfHJNcRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190387666"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:19 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915: Enable DDI A/B AUX interrupts on LNL+
Date: Wed, 19 Nov 2025 20:53:09 +0200
Message-ID: <20251119185310.10428-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently the DDI A/B AUX interrupts move onto the PICA side
on LNL. Unmask them properly so that we actually get the
interrupts. The interrupt handler was already trying to handle
them despite the interrupts remaining masked.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 12 +++++++++++-
 drivers/gpu/drm/i915/display/intel_display_irq.h |  2 ++
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  5 +----
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d2933ac3acb4..9adeebb376b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2410,10 +2410,20 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 	}
 }
 
+u32 xelpdp_pica_aux_mask(struct intel_display *display)
+{
+	u32 mask = XELPDP_AUX_TC_MASK;
+
+	if (DISPLAY_VER(display) >= 20)
+		mask |= XE2LPD_AUX_DDI_MASK;
+
+	return mask;
+}
+
 static void mtp_irq_postinstall(struct intel_display *display)
 {
 	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
-	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
+	u32 de_hpd_mask = xelpdp_pica_aux_mask(display);
 	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
 			     XELPDP_TBT_HOTPLUG_MASK;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 84acd31948cf..b25d180254d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -16,6 +16,8 @@ struct drm_printer;
 struct intel_display;
 struct intel_display_irq_snapshot;
 
+u32 xelpdp_pica_aux_mask(struct intel_display *display);
+
 void valleyview_enable_display_irqs(struct intel_display *display);
 void valleyview_disable_display_irqs(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 46c47b3d6f42..82c39e4ffa37 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -519,12 +519,9 @@ void xelpdp_pica_irq_handler(struct intel_display *display, u32 iir)
 {
 	enum hpd_pin pin;
 	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
-	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
+	u32 trigger_aux = iir & xelpdp_pica_aux_mask(display);
 	u32 pin_mask = 0, long_mask = 0;
 
-	if (DISPLAY_VER(display) >= 20)
-		trigger_aux |= iir & XE2LPD_AUX_DDI_MASK;
-
 	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
 		u32 val;
 
-- 
2.49.1

