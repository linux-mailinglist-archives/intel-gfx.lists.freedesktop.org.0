Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A72DF58FF1A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B818FB3E79;
	Thu, 11 Aug 2022 15:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E90AB3E60
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660231000; x=1691767000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AHLTKWx+AG8iDuA+jKmg4bz/6d9arCFkzx/ayem0Gc0=;
 b=lw/uigFkmxyUGsyM2Yh3emPA0HhIoV9D3M3PeRZ4bPaODXZ7S1r2dLcF
 YlsF1mSRJ1eIBaTxJ9i9bvhekU3TUyQpnNq2ePadFfl6nGFLoqzva/wpc
 XAmKr++TGpnEXFbz783OUMd5wBv/uFFoabyNU882xKMKjx9Aexiq7W11n
 kvFZHqLmMk1JBVAdmVgLojLNzgdvx/ChOlpXs04Pl+0F1qdDlJuiXOHMA
 TgBhnIidBvzikl/lVTTLOMUbY8XSWeWo8R8G2OGzj1Zz1EI12sl+o1uVE
 oS61ExdvBzHBmXAVUUdqzxsnqz2CPrrFLjc6ZvUS0E1R1FA9RkaaAuPEC w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292167760"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292167760"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="634260161"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:47 +0300
Message-Id: <422c73feda8229c3b74a7b0a47b645a433d10bcf.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 36/39] drm/i915/quirks: abstract quirks further
 by making quirk ids an enum
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Turn the quirk ids to enums instead of bits, and hide the masking inside
intel_quirks.c. Define the enums in intel_quirks.h to declutter
i915_drv.h while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 21 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_quirks.h | 11 ++++++++++-
 drivers/gpu/drm/i915/i915_drv.h             |  7 -------
 3 files changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 9b5db1193a00..22e0df9d9dba 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -9,12 +9,17 @@
 #include "intel_display_types.h"
 #include "intel_quirks.h"
 
+static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
+{
+	i915->quirks |= BIT(quirk);
+}
+
 /*
  * Some machines (Lenovo U160) do not work with SSC on LVDS for some reason
  */
 static void quirk_ssc_force_disable(struct drm_i915_private *i915)
 {
-	i915->quirks |= QUIRK_LVDS_SSC_DISABLE;
+	intel_set_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
 	drm_info(&i915->drm, "applying lvds SSC disable quirk\n");
 }
 
@@ -24,14 +29,14 @@ static void quirk_ssc_force_disable(struct drm_i915_private *i915)
  */
 static void quirk_invert_brightness(struct drm_i915_private *i915)
 {
-	i915->quirks |= QUIRK_INVERT_BRIGHTNESS;
+	intel_set_quirk(i915, QUIRK_INVERT_BRIGHTNESS);
 	drm_info(&i915->drm, "applying inverted panel brightness quirk\n");
 }
 
 /* Some VBT's incorrectly indicate no backlight is present */
 static void quirk_backlight_present(struct drm_i915_private *i915)
 {
-	i915->quirks |= QUIRK_BACKLIGHT_PRESENT;
+	intel_set_quirk(i915, QUIRK_BACKLIGHT_PRESENT);
 	drm_info(&i915->drm, "applying backlight present quirk\n");
 }
 
@@ -40,7 +45,7 @@ static void quirk_backlight_present(struct drm_i915_private *i915)
  */
 static void quirk_increase_t12_delay(struct drm_i915_private *i915)
 {
-	i915->quirks |= QUIRK_INCREASE_T12_DELAY;
+	intel_set_quirk(i915, QUIRK_INCREASE_T12_DELAY);
 	drm_info(&i915->drm, "Applying T12 delay quirk\n");
 }
 
@@ -50,13 +55,13 @@ static void quirk_increase_t12_delay(struct drm_i915_private *i915)
  */
 static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
 {
-	i915->quirks |= QUIRK_INCREASE_DDI_DISABLED_TIME;
+	intel_set_quirk(i915, QUIRK_INCREASE_DDI_DISABLED_TIME);
 	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
 }
 
 static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
 {
-	i915->quirks |= QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK;
+	intel_set_quirk(i915, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK);
 	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
 }
 
@@ -214,7 +219,7 @@ void intel_init_quirks(struct drm_i915_private *i915)
 	}
 }
 
-bool intel_has_quirk(struct drm_i915_private *i915, unsigned long quirk)
+bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
 {
-	return i915->quirks & quirk;
+	return i915->quirks & BIT(quirk);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index f5e399a6e7d3..10a4d163149f 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -10,7 +10,16 @@
 
 struct drm_i915_private;
 
+enum intel_quirk_id {
+	QUIRK_BACKLIGHT_PRESENT,
+	QUIRK_INCREASE_DDI_DISABLED_TIME,
+	QUIRK_INCREASE_T12_DELAY,
+	QUIRK_INVERT_BRIGHTNESS,
+	QUIRK_LVDS_SSC_DISABLE,
+	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+};
+
 void intel_init_quirks(struct drm_i915_private *i915);
-bool intel_has_quirk(struct drm_i915_private *i915, unsigned long quirk);
+bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk);
 
 #endif /* __INTEL_QUIRKS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 22571f77dc71..60f654db7819 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -89,13 +89,6 @@ struct vlv_s0ix_state;
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
-#define QUIRK_LVDS_SSC_DISABLE (1<<1)
-#define QUIRK_INVERT_BRIGHTNESS (1<<2)
-#define QUIRK_BACKLIGHT_PRESENT (1<<3)
-#define QUIRK_INCREASE_T12_DELAY (1<<6)
-#define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
-#define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
-
 struct i915_suspend_saved_registers {
 	u32 saveDSPARB;
 	u32 saveSWF0[16];
-- 
2.34.1

