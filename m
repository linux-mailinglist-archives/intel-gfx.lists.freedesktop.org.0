Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9455A4DB7
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B53D10F2A8;
	Mon, 29 Aug 2022 13:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C281D10F298
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779176; x=1693315176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T7RCtBxK/PCI7aaeRl8n8kfe4XIXIF9TLG/cM5B8eeo=;
 b=GxvlnXjDK2/xn1KwalNghiIxTzjtQkhmZE0kDHkyGLHWwV5WKGzYhcvw
 +j7oADx2uGKXkwknTjwoNPW56EhQukbtevsuJ5OHiREwHR/c1RS6qk8uR
 Aq/Wc8DTzaQ7qdZ9LqON/7poeoGo9MnD5qAocwffAIYXgtzFPOLH397E0
 tcsNZTPanuFQIaOQSjYqtMB6JpX8vOJ9MY0/7MoIFAuRCIaMBzTih7GIe
 3E+8kFb50H1twydCR6v3VU1lGsu9/C8ERSGkPzDWOoHX2Q+d/l1kor2r1
 8y+L6056moGrM3GGf+Vpd+fiqRbQtrLucadj84x2N4chHPqzHpNqyT0PL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381193128"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="381193128"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="700576960"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:22 +0300
Message-Id: <60d8a20e1f8845b0bef53c2e32d524be888e426d.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/18] drm/i915/quirks: abstract quirks
 further by making quirk ids an enum
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Turn the quirk ids to enums instead of bits, and hide the masking inside
intel_quirks.c. Define the enums in intel_quirks.h to declutter
i915_drv.h while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 21 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_quirks.h | 11 ++++++++++-
 drivers/gpu/drm/i915/i915_drv.h             |  7 -------
 3 files changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index edc82d115434..41caeda795cb 100644
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
 
@@ -217,7 +222,7 @@ void intel_init_quirks(struct drm_i915_private *i915)
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
index 5aac06da3cc7..c486a1dcfb07 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -90,13 +90,6 @@ struct vlv_s0ix_state;
 
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

