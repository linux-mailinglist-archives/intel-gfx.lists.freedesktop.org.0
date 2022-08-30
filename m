Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C842D5A60C4
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0534410E048;
	Tue, 30 Aug 2022 10:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B701E10E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855311; x=1693391311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GzqUEjhb8VrUwBQVFGelBuHvpIrNoF3ehnpoIzUhSUQ=;
 b=fxPMh2Ne/2LlFX8naTbJQBMFYXjbk3RWgOE6m2URmXhIEj1lNVrskRlK
 hLYb5Hg9P0w0ak5NmShnmUKluRqMdlKBGHAZo970BMerLHnvHaCNKfSZQ
 LFjd9b/4sRf1eQysN24GRGR0xxd2/qpOw4Ljx3SPUG3bFJQZljMKQGwV+
 oLzLxtSPwOuMxzLJCR67nq8fjyAmc7mHeqlK5JvHBeiZhkLWgR7al3b5D
 XjTt0qaUDkfmAKmR3Fbgz5Pp3QifibilHVDkFZVXA+aFqaT6SN3D01Oed
 uwq6sFUBWWvHqN326G5CJSNfIa1rPKbc9DzRCoJUzT3PTuo/aR8xLmYqX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="296418153"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="296418153"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="644782497"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:28:01 +0300
Message-Id: <41ca83573ca2d94bea568058f8cb8c35e814f8b1.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/reg: stop using implicit dev_priv
 in DSPCLK_GATE_D
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the implicit dev_priv usage in DSPCLK_GATE_D register, and pass
it as parameter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_gmbus.c              | 4 ++--
 drivers/gpu/drm/i915/display/intel_overlay.c            | 4 ++--
 drivers/gpu/drm/i915/display/vlv_dsi.c                  | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h                         | 2 +-
 drivers/gpu/drm/i915/intel_pm.c                         | 4 ++--
 6 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e442055f1d6c..9b8b03fcd456 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1157,10 +1157,10 @@ static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 	 * (and never recovering) in this case. intel_dsi_post_disable() will
 	 * clear it when we turn off the display.
 	 */
-	val = intel_de_read(dev_priv, DSPCLK_GATE_D);
+	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
 	val &= DPOUNIT_CLOCK_GATE_DISABLE;
 	val |= VRHUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(dev_priv, DSPCLK_GATE_D, val);
+	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
 
 	/*
 	 * Disable trickle feed and enable pnd deadline calculation
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 9e9691e2a45a..0656d1b92493 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -183,12 +183,12 @@ static void pnv_gmbus_clock_gating(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	val = intel_de_read(dev_priv, DSPCLK_GATE_D);
+	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
 	if (!enable)
 		val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
 	else
 		val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(dev_priv, DSPCLK_GATE_D, val);
+	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
 }
 
 static void pch_gmbus_clock_gating(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 6f26f7f91925..c12bdca8da9b 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -211,9 +211,9 @@ static void i830_overlay_clock_gating(struct drm_i915_private *dev_priv,
 
 	/* WA_OVERLAY_CLKGATE:alm */
 	if (enable)
-		intel_de_write(dev_priv, DSPCLK_GATE_D, 0);
+		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), 0);
 	else
-		intel_de_write(dev_priv, DSPCLK_GATE_D,
+		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv),
 			       OVRUNIT_CLOCK_GATE_DISABLE);
 
 	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 784ae52059d1..55993cd9678f 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -822,9 +822,9 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 		u32 val;
 
 		/* Disable DPOunit clock gating, can stall pipe */
-		val = intel_de_read(dev_priv, DSPCLK_GATE_D);
+		val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
 		val |= DPOUNIT_CLOCK_GATE_DISABLE;
-		intel_de_write(dev_priv, DSPCLK_GATE_D, val);
+		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
 	}
 
 	if (!IS_GEMINILAKE(dev_priv))
@@ -998,9 +998,9 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 
 		vlv_dsi_pll_disable(encoder);
 
-		val = intel_de_read(dev_priv, DSPCLK_GATE_D);
+		val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
 		val &= ~DPOUNIT_CLOCK_GATE_DISABLE;
-		intel_de_write(dev_priv, DSPCLK_GATE_D, val);
+		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
 	}
 
 	/* Assert reset */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e8739abcc90e..5e6239864c35 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1637,7 +1637,7 @@
 #define  DSTATE_PLL_D3_OFF			(1 << 3)
 #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
 #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
-#define DSPCLK_GATE_D	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x6200)
+#define DSPCLK_GATE_D(__i915)		_MMIO(DISPLAY_MMIO_BASE(__i915) + 0x6200)
 # define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
 # define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
 # define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index a7bfa063447c..51a946994fd0 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7993,7 +7993,7 @@ static void g4x_init_clock_gating(struct drm_i915_private *dev_priv)
 		OVCUNIT_CLOCK_GATE_DISABLE;
 	if (IS_GM45(dev_priv))
 		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
-	intel_uncore_write(&dev_priv->uncore, DSPCLK_GATE_D, dspclk_gate);
+	intel_uncore_write(&dev_priv->uncore, DSPCLK_GATE_D(dev_priv), dspclk_gate);
 
 	g4x_disable_trickle_feed(dev_priv);
 }
@@ -8004,7 +8004,7 @@ static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
-	intel_uncore_write(uncore, DSPCLK_GATE_D, 0);
+	intel_uncore_write(uncore, DSPCLK_GATE_D(dev_priv), 0);
 	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
 	intel_uncore_write16(uncore, DEUC, 0);
 	intel_uncore_write(uncore,
-- 
2.34.1

