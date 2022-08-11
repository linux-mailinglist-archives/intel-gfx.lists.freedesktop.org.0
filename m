Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117CA58FF0A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA8AB3DF1;
	Thu, 11 Aug 2022 15:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACD5B3DE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230900; x=1691766900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2pyOgysQO6w7Atemp269lFh4ZFotTB77vV0wwNM5vfg=;
 b=CUNmfYrreu8HmNU6Ee73hGJiDw5EIyaMjN7g0/3Pweo/noxps8elCtXY
 ixmamliKMslPEjM+caUscTFp3hEsFl36d5CLFM07y/NJP3xjcb/GYjlst
 /DLXbqDhj04vnZYS/wM2XZIKH3k7QhBfW9ZC8MTpwG/07XZGgF92MroIK
 HEFg+mIeXjqOcMbB8KCyTVHowzFIG/1uSFeQtaM600F9Zyrzso/aacGej
 g663hmvJID/Zzvij5Y2d/m/mI6rGx1hwbSXdxvjY6TU2blyxHBQOGVUoi
 o6YJa1FsJte7xlwZI31sFqhRQYOQ0pUvLfgCn7123YC0X3oRWr3JPydtB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="271757998"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="271757998"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="851231901"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:39 +0300
Message-Id: <47ed350de67fda6120778f7159b305068df1ad30.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 28/39] drm/i915: move and group power related
 members under display.power
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

Move display related members under drm_i915_private display sub-struct.

Arguably chv_phy_control and chv_phy_assert could be placed in a phy
substruct, but they are only used in the power code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  11 ++
 .../drm/i915/display/intel_display_power.c    | 112 +++++++++---------
 .../i915/display/intel_display_power_map.c    |   4 +-
 .../i915/display/intel_display_power_well.c   |  56 ++++-----
 .../i915/display/intel_display_power_well.h   |  12 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  20 +---
 8 files changed, 110 insertions(+), 109 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 066e7ee0b8df..19abdd05d413 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -16,6 +16,7 @@
 
 #include "intel_cdclk.h"
 #include "intel_display.h"
+#include "intel_display_power.h"
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fbc.h"
@@ -326,6 +327,16 @@ struct intel_display {
 		struct mutex comp_mutex;
 	} hdcp;
 
+	struct {
+		struct i915_power_domains domains;
+
+		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
+		u32 chv_phy_control;
+
+		/* perform PHY state sanity checks? */
+		bool chv_phy_assert[2];
+	} power;
+
 	struct {
 		u32 mmio_base;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a25e632c726f..9960b7f59146 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -243,7 +243,7 @@ bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 	struct i915_power_domains *power_domains;
 	bool ret;
 
-	power_domains = &dev_priv->power_domains;
+	power_domains = &dev_priv->display.power.domains;
 
 	mutex_lock(&power_domains->lock);
 	ret = __intel_display_power_is_enabled(dev_priv, domain);
@@ -291,7 +291,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 {
 	struct i915_power_well *power_well;
 	bool dc_off_enabled;
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 
 	mutex_lock(&power_domains->lock);
 	power_well = lookup_power_well(dev_priv, SKL_DISP_DC_OFF);
@@ -339,7 +339,7 @@ assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 
 	return !drm_WARN_ON(&i915->drm,
 			    bitmap_intersects(power_domains->async_put_domains[0].bits,
@@ -352,7 +352,7 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 	struct intel_power_domain_mask async_put_mask;
 	enum intel_display_power_domain domain;
 	bool err = false;
@@ -375,7 +375,7 @@ static void print_power_domains(struct i915_power_domains *power_domains,
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 	enum intel_display_power_domain domain;
 
 	drm_dbg(&i915->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));
@@ -390,7 +390,7 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 
 	drm_dbg(&i915->drm, "async_put_wakeref %u\n",
 		power_domains->async_put_wakeref);
@@ -445,7 +445,7 @@ static bool
 intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
 				       enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	bool ret = false;
 
@@ -474,7 +474,7 @@ static void
 __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 				 enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *power_well;
 
 	if (intel_display_power_grab_async_put_ref(dev_priv, domain))
@@ -501,7 +501,7 @@ __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
 					enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	intel_wakeref_t wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
 	mutex_lock(&power_domains->lock);
@@ -527,7 +527,7 @@ intel_wakeref_t
 intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 				   enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	intel_wakeref_t wakeref;
 	bool is_enabled;
 
@@ -563,7 +563,7 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 	const char *name = intel_display_power_domain_str(domain);
 	struct intel_power_domain_mask async_put_mask;
 
-	power_domains = &dev_priv->power_domains;
+	power_domains = &dev_priv->display.power.domains;
 
 	drm_WARN(&dev_priv->drm, !power_domains->domain_use_count[domain],
 		 "Use count on domain %s is already zero\n",
@@ -583,7 +583,7 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 static void __intel_display_power_put(struct drm_i915_private *dev_priv,
 				      enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 
 	mutex_lock(&power_domains->lock);
 	__intel_display_power_put_domain(dev_priv, domain);
@@ -596,7 +596,7 @@ queue_async_put_domains_work(struct i915_power_domains *power_domains,
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
 	power_domains->async_put_wakeref = wakeref;
 	drm_WARN_ON(&i915->drm, !queue_delayed_work(system_unbound_wq,
@@ -610,7 +610,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 {
 	struct drm_i915_private *dev_priv =
 		container_of(power_domains, struct drm_i915_private,
-			     power_domains);
+			     display.power.domains);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	enum intel_display_power_domain domain;
 	intel_wakeref_t wakeref;
@@ -637,8 +637,8 @@ intel_display_power_put_async_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, struct drm_i915_private,
-			     power_domains.async_put_work.work);
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+			     display.power.domains.async_put_work.work);
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t new_work_wakeref = intel_runtime_pm_get_raw(rpm);
 	intel_wakeref_t old_work_wakeref = 0;
@@ -698,7 +698,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 				     enum intel_display_power_domain domain,
 				     intel_wakeref_t wakeref)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	intel_wakeref_t work_wakeref = intel_runtime_pm_get_raw(rpm);
 
@@ -746,7 +746,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
  */
 void intel_display_power_flush_work(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	intel_wakeref_t work_wakeref;
 
@@ -779,7 +779,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
 static void
 intel_display_power_flush_work_sync(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 
 	intel_display_power_flush_work(i915);
 	cancel_delayed_work_sync(&power_domains->async_put_work);
@@ -976,7 +976,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
  */
 int intel_power_domains_init(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 
 	dev_priv->params.disable_power_well =
 		sanitize_disable_power_well_option(dev_priv,
@@ -1003,12 +1003,12 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
  */
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
 {
-	intel_display_power_map_cleanup(&dev_priv->power_domains);
+	intel_display_power_map_cleanup(&dev_priv->display.power.domains);
 }
 
 static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
@@ -1037,7 +1037,7 @@ static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,
 void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 			     u8 req_slices)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	u8 slice_mask = INTEL_INFO(dev_priv)->display.dbuf.slice_mask;
 	enum dbuf_slice slice;
 
@@ -1394,7 +1394,7 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 static void skl_display_core_init(struct drm_i915_private *dev_priv,
 				  bool resume)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
@@ -1426,7 +1426,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -1460,7 +1460,7 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 
 static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
@@ -1494,7 +1494,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -1603,7 +1603,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 static void icl_display_core_init(struct drm_i915_private *dev_priv,
 				  bool resume)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
 	u32 val;
 
@@ -1678,7 +1678,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -1723,7 +1723,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * power well state and lane status to reconstruct the
 	 * expected initial value.
 	 */
-	dev_priv->chv_phy_control =
+	dev_priv->display.power.chv_phy_control =
 		PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY0) |
 		PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY1) |
 		PHY_CH_POWER_MODE(PHY_CH_DEEP_PSR, DPIO_PHY0, DPIO_CH0) |
@@ -1745,27 +1745,27 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 		if (mask == 0xf)
 			mask = 0x0;
 		else
-			dev_priv->chv_phy_control |=
+			dev_priv->display.power.chv_phy_control |=
 				PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH0);
 
-		dev_priv->chv_phy_control |=
+		dev_priv->display.power.chv_phy_control |=
 			PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH0);
 
 		mask = (status & DPLL_PORTC_READY_MASK) >> 4;
 		if (mask == 0xf)
 			mask = 0x0;
 		else
-			dev_priv->chv_phy_control |=
+			dev_priv->display.power.chv_phy_control |=
 				PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH1);
 
-		dev_priv->chv_phy_control |=
+		dev_priv->display.power.chv_phy_control |=
 			PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH1);
 
-		dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY0);
+		dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY0);
 
-		dev_priv->chv_phy_assert[DPIO_PHY0] = false;
+		dev_priv->display.power.chv_phy_assert[DPIO_PHY0] = false;
 	} else {
-		dev_priv->chv_phy_assert[DPIO_PHY0] = true;
+		dev_priv->display.power.chv_phy_assert[DPIO_PHY0] = true;
 	}
 
 	if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
@@ -1777,21 +1777,21 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 		if (mask == 0xf)
 			mask = 0x0;
 		else
-			dev_priv->chv_phy_control |=
+			dev_priv->display.power.chv_phy_control |=
 				PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1, DPIO_CH0);
 
-		dev_priv->chv_phy_control |=
+		dev_priv->display.power.chv_phy_control |=
 			PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY1, DPIO_CH0);
 
-		dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY1);
+		dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY1);
 
-		dev_priv->chv_phy_assert[DPIO_PHY1] = false;
+		dev_priv->display.power.chv_phy_assert[DPIO_PHY1] = false;
 	} else {
-		dev_priv->chv_phy_assert[DPIO_PHY1] = true;
+		dev_priv->display.power.chv_phy_assert[DPIO_PHY1] = true;
 	}
 
 	drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=0x%08x\n",
-		    dev_priv->chv_phy_control);
+		    dev_priv->display.power.chv_phy_control);
 
 	/* Defer application of initial phy_control to enabling the powerwell */
 }
@@ -1875,7 +1875,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *dev_priv);
  */
 void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 
 	power_domains->initializing = true;
 
@@ -1916,7 +1916,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 	/* Disable power support if the user asked so. */
 	if (!i915->params.disable_power_well) {
 		drm_WARN_ON(&i915->drm, power_domains->disable_wakeref);
-		i915->power_domains.disable_wakeref = intel_display_power_get(i915,
+		i915->display.power.domains.disable_wakeref = intel_display_power_get(i915,
 									      POWER_DOMAIN_INIT);
 	}
 	intel_power_domains_sync_hw(i915);
@@ -1938,12 +1938,12 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->power_domains.init_wakeref);
+		fetch_and_zero(&i915->display.power.domains.init_wakeref);
 
 	/* Remove the refcount we took to keep power well support disabled. */
 	if (!i915->params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
-					fetch_and_zero(&i915->power_domains.disable_wakeref));
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
 
 	intel_display_power_flush_work_sync(i915);
 
@@ -1965,7 +1965,7 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
  */
 void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
@@ -1999,7 +1999,7 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 void intel_power_domains_enable(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->power_domains.init_wakeref);
+		fetch_and_zero(&i915->display.power.domains.init_wakeref);
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 	intel_power_domains_verify_state(i915);
@@ -2014,7 +2014,7 @@ void intel_power_domains_enable(struct drm_i915_private *i915)
  */
 void intel_power_domains_disable(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 
 	drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
 	power_domains->init_wakeref =
@@ -2037,7 +2037,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
 void intel_power_domains_suspend(struct drm_i915_private *i915,
 				 enum i915_drm_suspend_mode suspend_mode)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&power_domains->init_wakeref);
 
@@ -2064,7 +2064,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 */
 	if (!i915->params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
-					fetch_and_zero(&i915->power_domains.disable_wakeref));
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
 
 	intel_display_power_flush_work(i915);
 	intel_power_domains_verify_state(i915);
@@ -2091,7 +2091,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
  */
 void intel_power_domains_resume(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 
 	if (power_domains->display_core_suspended) {
 		intel_power_domains_init_hw(i915, true);
@@ -2109,7 +2109,7 @@ void intel_power_domains_resume(struct drm_i915_private *i915)
 
 static void intel_power_domains_dump_info(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 
 	for_each_power_well(i915, power_well) {
@@ -2137,7 +2137,7 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
  */
 static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct i915_power_well *power_well;
 	bool dump_domain_info;
 
@@ -2263,7 +2263,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 
 void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m)
 {
-	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	int i;
 
 	mutex_lock(&power_domains->lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 97b367f39f35..5ddd1b93751c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1388,7 +1388,7 @@ __set_power_wells(struct i915_power_domains *power_domains,
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 	u64 power_well_ids = 0;
 	const struct i915_power_well_desc_list *desc_list;
 	const struct i915_power_well_desc *desc;
@@ -1447,7 +1447,7 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
-						     power_domains);
+						     display.power.domains);
 	/*
 	 * The enabling order will be from lower to higher indexed wells,
 	 * the disabling order is reversed.
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index efeee2d47849..bc8cf0ae623b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -84,7 +84,7 @@ lookup_power_well(struct drm_i915_private *i915,
 	drm_WARN(&i915->drm, 1,
 		 "Power well %d not defined for this platform\n",
 		 power_well_id);
-	return &i915->power_domains.power_wells[0];
+	return &i915->display.power.domains.power_wells[0];
 }
 
 void intel_power_well_enable(struct drm_i915_private *i915,
@@ -1207,7 +1207,7 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 * During driver initialization/resume we can avoid restoring the
 	 * part of the HW/SW state that will be inited anyway explicitly.
 	 */
-	if (dev_priv->power_domains.initializing)
+	if (dev_priv->display.power.domains.initializing)
 		return;
 
 	intel_hpd_init(dev_priv);
@@ -1302,7 +1302,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *cmn_d =
 		lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
-	u32 phy_control = dev_priv->chv_phy_control;
+	u32 phy_control = dev_priv->display.power.chv_phy_control;
 	u32 phy_status = 0;
 	u32 phy_status_mask = 0xffffffff;
 
@@ -1313,7 +1313,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 	 * reset (ie. the power well has been disabled at
 	 * least once).
 	 */
-	if (!dev_priv->chv_phy_assert[DPIO_PHY0])
+	if (!dev_priv->display.power.chv_phy_assert[DPIO_PHY0])
 		phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 1) |
@@ -1321,7 +1321,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1));
 
-	if (!dev_priv->chv_phy_assert[DPIO_PHY1])
+	if (!dev_priv->display.power.chv_phy_assert[DPIO_PHY1])
 		phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY1, DPIO_CH0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));
@@ -1397,7 +1397,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		drm_err(&dev_priv->drm,
 			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
 			intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy_status_mask,
-			phy_status, dev_priv->chv_phy_control);
+			phy_status, dev_priv->display.power.chv_phy_control);
 }
 
 #undef BITS_SET
@@ -1457,13 +1457,13 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 
 	vlv_dpio_put(dev_priv);
 
-	dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
+	dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
 	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->chv_phy_control);
+		       dev_priv->display.power.chv_phy_control);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
-		    phy, dev_priv->chv_phy_control);
+		    phy, dev_priv->display.power.chv_phy_control);
 
 	assert_chv_phy_status(dev_priv);
 }
@@ -1487,18 +1487,18 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 		assert_pll_disabled(dev_priv, PIPE_C);
 	}
 
-	dev_priv->chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
+	dev_priv->display.power.chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
 	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->chv_phy_control);
+		       dev_priv->display.power.chv_phy_control);
 
 	vlv_set_power_well(dev_priv, power_well, false);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
-		    phy, dev_priv->chv_phy_control);
+		    phy, dev_priv->display.power.chv_phy_control);
 
 	/* PHY is fully reset now, so we can enable the PHY state asserts */
-	dev_priv->chv_phy_assert[phy] = true;
+	dev_priv->display.power.chv_phy_assert[phy] = true;
 
 	assert_chv_phy_status(dev_priv);
 }
@@ -1516,7 +1516,7 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 	 * reset (ie. the power well has been disabled at
 	 * least once).
 	 */
-	if (!dev_priv->chv_phy_assert[phy])
+	if (!dev_priv->display.power.chv_phy_assert[phy])
 		return;
 
 	if (ch == DPIO_CH0)
@@ -1570,27 +1570,27 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 			  enum dpio_channel ch, bool override)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	bool was_override;
 
 	mutex_lock(&power_domains->lock);
 
-	was_override = dev_priv->chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+	was_override = dev_priv->display.power.chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
 	if (override == was_override)
 		goto out;
 
 	if (override)
-		dev_priv->chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 	else
-		dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
 	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->chv_phy_control);
+		       dev_priv->display.power.chv_phy_control);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=0x%08x)\n",
-		    phy, ch, dev_priv->chv_phy_control);
+		    phy, ch, dev_priv->display.power.chv_phy_control);
 
 	assert_chv_phy_status(dev_priv);
 
@@ -1604,26 +1604,26 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 			     bool override, unsigned int mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
 	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
 
 	mutex_lock(&power_domains->lock);
 
-	dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
-	dev_priv->chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
+	dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
+	dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
 
 	if (override)
-		dev_priv->chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 	else
-		dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
 	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->chv_phy_control);
+		       dev_priv->display.power.chv_phy_control);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=0x%08x)\n",
-		    phy, ch, mask, dev_priv->chv_phy_control);
+		    phy, ch, mask, dev_priv->display.power.chv_phy_control);
 
 	assert_chv_phy_status(dev_priv);
 
@@ -1701,7 +1701,7 @@ static void chv_pipe_power_well_sync_hw(struct drm_i915_private *dev_priv,
 					struct i915_power_well *power_well)
 {
 	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->chv_phy_control);
+		       dev_priv->display.power.chv_phy_control);
 }
 
 static void chv_pipe_power_well_enable(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index d0624642dcb6..31a898176ebb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -14,15 +14,15 @@ struct drm_i915_private;
 struct i915_power_well;
 
 #define for_each_power_well(__dev_priv, __power_well)				\
-	for ((__power_well) = (__dev_priv)->power_domains.power_wells;	\
-	     (__power_well) - (__dev_priv)->power_domains.power_wells <	\
-		(__dev_priv)->power_domains.power_well_count;		\
+	for ((__power_well) = (__dev_priv)->display.power.domains.power_wells;	\
+	     (__power_well) - (__dev_priv)->display.power.domains.power_wells <	\
+		(__dev_priv)->display.power.domains.power_well_count;		\
 	     (__power_well)++)
 
 #define for_each_power_well_reverse(__dev_priv, __power_well)			\
-	for ((__power_well) = (__dev_priv)->power_domains.power_wells +		\
-			      (__dev_priv)->power_domains.power_well_count - 1;	\
-	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
+	for ((__power_well) = (__dev_priv)->display.power.domains.power_wells +		\
+			      (__dev_priv)->display.power.domains.power_well_count - 1;	\
+	     (__power_well) - (__dev_priv)->display.power.domains.power_wells >= 0;	\
 	     (__power_well)--)
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index cc6abe761f5e..8732b8722ed7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -484,7 +484,7 @@ void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 	enum dpio_phy rcomp_phy = phy_info->rcomp_phy;
 	bool was_enabled;
 
-	lockdep_assert_held(&dev_priv->power_domains.lock);
+	lockdep_assert_held(&dev_priv->display.power.domains.lock);
 
 	was_enabled = true;
 	if (rcomp_phy != -1)
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 94e5c29d2ee3..f5c6a0714d79 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -493,7 +493,7 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 		seq_puts(m, "Runtime power management not supported\n");
 
 	seq_printf(m, "Runtime power status: %s\n",
-		   str_enabled_disabled(!dev_priv->power_domains.init_wakeref));
+		   str_enabled_disabled(!dev_priv->display.power.domains.init_wakeref));
 
 	seq_printf(m, "GPU idle: %s\n", str_yes_no(!to_gt(dev_priv)->awake));
 	seq_printf(m, "IRQs disabled: %s\n",
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6fa5ab1f173f..bd15bb1efac5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -38,7 +38,6 @@
 
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
-#include "display/intel_display_power.h"
 #include "display/intel_dsb.h"
 #include "display/intel_frontbuffer.h"
 
@@ -354,8 +353,6 @@ struct drm_i915_private {
 	 */
 	u32 edram_size_mb;
 
-	struct i915_power_domains power_domains;
-
 	struct i915_gpu_error gpu_error;
 
 	struct drm_property *broadcast_rgb_property;
@@ -363,8 +360,6 @@ struct drm_i915_private {
 
 	u32 fdi_rx_config;
 
-	/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
-	u32 chv_phy_control;
 	/*
 	 * Shadows for CHV DPLL_MD regs to keep the state
 	 * checker somewhat working in the presence hardware
@@ -433,16 +428,11 @@ struct drm_i915_private {
 
 	bool irq_enabled;
 
-	union {
-		/* perform PHY state sanity checks? */
-		bool chv_phy_assert[2];
-
-		/*
-		 * DG2: Mask of PHYs that were not calibrated by the firmware
-		 * and should not be used.
-		 */
-		u8 snps_phy_failed_calibration;
-	};
+	/*
+	 * DG2: Mask of PHYs that were not calibrated by the firmware
+	 * and should not be used.
+	 */
+	u8 snps_phy_failed_calibration;
 
 	bool ipc_enabled;
 
-- 
2.34.1

