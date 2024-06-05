Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4176E8FCA3A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6352610E751;
	Wed,  5 Jun 2024 11:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGh2IyBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E73C10E76D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586329; x=1749122329;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xNChSr1mhhzXHiTDZv+1BKeDXmQZcYYpAVeOUUwYy58=;
 b=JGh2IyBI+dLczJwh0Z+SUKkOUAcGwATjF3j26balfI61MgiM3ud0X5v1
 Hn83P1vsaA85iDjYV89KL+cCTzTzVcWmhqt2H+ClReYj0Aa4EOfXZG1ER
 beBAC6hAhwxTIsQJPJOziM62Hx0/m4xndKdzdtNQinuoN6CF6KGO7fAKM
 kijBc5c4iQa2z1ZFfAZ00XXBupGgXdQeo00I2UoxYA/2KqniJOaO261o4
 adVNnRGR7D6NZJcrYsGC0v4XVdj61F+KDDZ7R3Acq5RbADD4zjVkJuo/l
 dvgM8rey/MH8xzzPk8oWsTEdCSbcs36gS6aIdkgnCMrmszC/OTmdMAulz A==;
X-CSE-ConnectionGUID: NdIjX9cXR3+YAxIlLNmG7Q==
X-CSE-MsgGUID: w+OzEoA/SHCIGfiJ4NVX8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920182"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920182"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:49 -0700
X-CSE-ConnectionGUID: EQJZrYUpS3uXy+dcb9GVgw==
X-CSE-MsgGUID: qe7QmUScTtO/Ti6GPmEvrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566107"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915: Nuke the intermediate pipe fault bitmasks
Date: Wed,  5 Jun 2024 14:18:30 +0300
Message-ID: <20240605111832.21373-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

GEN8_DE_PIPE_IRQ_FAULT_ERRORS & co. don't really achieve anything.
Get rid of them and just declare all the bits directly in
gen8_de_pipe_fault_mask().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 26 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h               | 18 -------------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d2d70b81aef9..219f7693207d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -836,13 +836,31 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
-		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
+		return GEN9_PIPE_CURSOR_FAULT |
+			GEN11_PIPE_PLANE5_FAULT |
+			GEN9_PIPE_PLANE4_FAULT |
+			GEN9_PIPE_PLANE3_FAULT |
+			GEN9_PIPE_PLANE2_FAULT |
+			GEN9_PIPE_PLANE1_FAULT;
 	else if (DISPLAY_VER(dev_priv) >= 11)
-		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
+		return GEN9_PIPE_CURSOR_FAULT |
+			GEN11_PIPE_PLANE7_FAULT |
+			GEN11_PIPE_PLANE6_FAULT |
+			GEN11_PIPE_PLANE5_FAULT |
+			GEN9_PIPE_PLANE4_FAULT |
+			GEN9_PIPE_PLANE3_FAULT |
+			GEN9_PIPE_PLANE2_FAULT |
+			GEN9_PIPE_PLANE1_FAULT;
 	else if (DISPLAY_VER(dev_priv) >= 9)
-		return GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
+		return GEN9_PIPE_CURSOR_FAULT |
+			GEN9_PIPE_PLANE4_FAULT |
+			GEN9_PIPE_PLANE3_FAULT |
+			GEN9_PIPE_PLANE2_FAULT |
+			GEN9_PIPE_PLANE1_FAULT;
 	else
-		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
+		return GEN8_PIPE_CURSOR_FAULT |
+			GEN8_PIPE_SPRITE_FAULT |
+			GEN8_PIPE_PRIMARY_FAULT;
 }
 
 static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4d5438ce73a2..b85e12bb4781 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2653,24 +2653,6 @@
 #define  GEN8_PIPE_SCAN_LINE_EVENT	REG_BIT(2)
 #define  GEN8_PIPE_VSYNC		REG_BIT(1)
 #define  GEN8_PIPE_VBLANK		REG_BIT(0)
-#define GEN8_DE_PIPE_IRQ_FAULT_ERRORS \
-	(GEN8_PIPE_CURSOR_FAULT | \
-	 GEN8_PIPE_SPRITE_FAULT | \
-	 GEN8_PIPE_PRIMARY_FAULT)
-#define GEN9_DE_PIPE_IRQ_FAULT_ERRORS \
-	(GEN9_PIPE_CURSOR_FAULT | \
-	 GEN9_PIPE_PLANE4_FAULT | \
-	 GEN9_PIPE_PLANE3_FAULT | \
-	 GEN9_PIPE_PLANE2_FAULT | \
-	 GEN9_PIPE_PLANE1_FAULT)
-#define GEN11_DE_PIPE_IRQ_FAULT_ERRORS \
-	(GEN9_DE_PIPE_IRQ_FAULT_ERRORS | \
-	 GEN11_PIPE_PLANE7_FAULT | \
-	 GEN11_PIPE_PLANE6_FAULT | \
-	 GEN11_PIPE_PLANE5_FAULT)
-#define RKL_DE_PIPE_IRQ_FAULT_ERRORS \
-	(GEN9_DE_PIPE_IRQ_FAULT_ERRORS | \
-	 GEN11_PIPE_PLANE5_FAULT)
 
 #define _HPD_PIN_DDI(hpd_pin)	((hpd_pin) - HPD_PORT_A)
 #define _HPD_PIN_TC(hpd_pin)	((hpd_pin) - HPD_PORT_TC1)
-- 
2.44.1

