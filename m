Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A84B59FB2A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA9BB551A;
	Wed, 24 Aug 2022 13:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0885B53D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347194; x=1692883194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hp82xW71wlYcEkuI1MkXkcdoqP8Xx3FmBgPr/W3jPbI=;
 b=Q65TxjvC0F9NbJFGpnKjuYndJxMzrdJjYvuZ4cvKIGiEiL78vrwAcBzD
 JQxQ3fR8QZR0Hmgc9iqi2augyBn9a9kcbUVTWgUegjeGBzfO9pcF2n1Ch
 JxJttnebU5CAbHYEXfSvRP1QX2C9rEibcUwCU4SwBD9yVmeT5yMG8PMjF
 Nz7uIZVhRk8TEBXlwQqxb/wq98ixPfiBy8fHhkVAjI+nvV29pru7vtTH1
 NH5SBMnPBKpKdL0++qO82DRhMXYESzhv+AMROdEwoXIklvJiteaTLb3hx
 YKfbTt4U7egDCK+N75IE8q5SWggOkqm8/pPVurvi1ZsIuRyfEQg4Qgzl7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="274350989"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="274350989"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="678042372"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:16:01 +0300
Message-Id: <3976516e3b35f0f1dba0138c7fccc19e211dd055.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 35/38] drm/i915/quirks: abstract quirks
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
index 1899d07df647..f272f299d85b 100644
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

