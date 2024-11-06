Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A209BF8D0
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D1D10E782;
	Wed,  6 Nov 2024 22:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BzNvX2rf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328A110E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930654; x=1762466654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rjHTE9LVa8CILlg7Xsh1CGDTaot/RQ4MrRIgeJ47bb4=;
 b=BzNvX2rf/DDl/g6OcUBUGubxym6feytXFsJtyHBBzPLAGcwEL/bdjONc
 3e5kBoxQkf+6AHKXbniarcOLxWGrjYAjGbBusYe0TgGx9W1jmEWfhV45d
 W81gZKc3rjuKpm6lUQNK3wbSux98Fs1jTTyc/aRN0H+rG2yZ4s1NLx+Ud
 Ho05H+kz6EZ36xW0U53s2DwLJKgnj0Cml+Bjp3V0nCHoI5H4RZmVIkfpD
 k1+U/lqEoqed35tVhiRSNOdCEZUKP6o7ZskXLnrc2p58AfIBNlRlsRUOU
 JRDoGSFqXGEt/O+JATQqr1UetjtjniiXsba7UsVOi3hDnd6RSv6sm9bMy g==;
X-CSE-ConnectionGUID: 4D40HhCAT1esE2m4VizZZw==
X-CSE-MsgGUID: J436XOvuRBeP2R/5c4ckIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157318"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157318"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:08 -0800
X-CSE-ConnectionGUID: qog8WpCARb23kNUyccI0JQ==
X-CSE-MsgGUID: h5aKz5WxR26IeYiHHNbO+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879554"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/8] drm/i915/lvds: Use struct intel_pps_delays for LVDS power
 sequencing
Date: Wed,  6 Nov 2024 23:58:55 +0200
Message-ID: <20241106215859.25446-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
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

Reuse struct intel_pps_delays for the LVDS power
sequencing delays insteda of hand rolling it all.
Perhaps in the future we could reuse some of the
same PPS code for both LVDS and eDP (assuming we
can decouple the PPS code from intel_dp...).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 10 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c     | 49 ++++++++++---------
 2 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4af40315b410..961c81681d6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -303,11 +303,11 @@ struct intel_panel_bl_funcs {
 
 /* in 100us units */
 struct intel_pps_delays {
-	u16 power_up;      /* eDP: T1+T3 */
-	u16 backlight_on;  /* eDP: T8 */
-	u16 backlight_off; /* eDP: T9 */
-	u16 power_down;    /* eDP: T10 */
-	u16 power_cycle;   /* eDP: T11+T12 */
+	u16 power_up;      /* eDP: T1+T3,   LVDS: T1+T2 */
+	u16 backlight_on;  /* eDP: T8,      LVDS: T5 */
+	u16 backlight_off; /* eDP: T9,      LVDS: T6/TX */
+	u16 power_down;    /* eDP: T10,     LVDS: T3 */
+	u16 power_cycle;   /* eDP: T11+T12, LVDS: T7+T4 */
 };
 
 enum drrs_type {
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 6d7637ad980a..6ffd55c17445 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -57,12 +57,7 @@
 
 /* Private structure for the integrated LVDS support */
 struct intel_lvds_pps {
-	/* 100us units */
-	int t1_t2;
-	int t3;
-	int t4;
-	int t5;
-	int tx;
+	struct intel_pps_delays delays;
 
 	int divider;
 
@@ -168,12 +163,12 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 
 	val = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0));
 	pps->port = REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
-	pps->t1_t2 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
-	pps->t5 = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
+	pps->delays.power_up = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
+	pps->delays.backlight_on = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
 
 	val = intel_de_read(dev_priv, PP_OFF_DELAYS(dev_priv, 0));
-	pps->t3 = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
-	pps->tx = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
+	pps->delays.power_down = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
+	pps->delays.backlight_off = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
 
 	val = intel_de_read(dev_priv, PP_DIVISOR(dev_priv, 0));
 	pps->divider = REG_FIELD_GET(PP_REFERENCE_DIVIDER_MASK, val);
@@ -186,25 +181,30 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	if (val)
 		val--;
 	/* Convert from 100ms to 100us units */
-	pps->t4 = val * 1000;
+	pps->delays.power_cycle = val * 1000;
 
 	if (DISPLAY_VER(dev_priv) < 5 &&
-	    pps->t1_t2 == 0 && pps->t5 == 0 && pps->t3 == 0 && pps->tx == 0) {
+	    pps->delays.power_up == 0 &&
+	    pps->delays.backlight_on == 0 &&
+	    pps->delays.power_down == 0 &&
+	    pps->delays.backlight_off == 0) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Panel power timings uninitialized, "
 			    "setting defaults\n");
 		/* Set T2 to 40ms and T5 to 200ms in 100 usec units */
-		pps->t1_t2 = 40 * 10;
-		pps->t5 = 200 * 10;
+		pps->delays.power_up = 40 * 10;
+		pps->delays.backlight_on = 200 * 10;
 		/* Set T3 to 35ms and Tx to 200ms in 100 usec units */
-		pps->t3 = 35 * 10;
-		pps->tx = 200 * 10;
+		pps->delays.power_down = 35 * 10;
+		pps->delays.backlight_off = 200 * 10;
 	}
 
-	drm_dbg(&dev_priv->drm, "LVDS PPS:t1+t2 %d t3 %d t4 %d t5 %d tx %d "
+	drm_dbg(&dev_priv->drm, "LVDS PPS:power_up %d power_down %d power_cycle %d backlight_on %d backlight_off %d "
 		"divider %d port %d powerdown_on_reset %d\n",
-		pps->t1_t2, pps->t3, pps->t4, pps->t5, pps->tx,
-		pps->divider, pps->port, pps->powerdown_on_reset);
+		pps->delays.power_up, pps->delays.power_down,
+		pps->delays.power_cycle, pps->delays.backlight_on,
+		pps->delays.backlight_off, pps->divider,
+		pps->port, pps->powerdown_on_reset);
 }
 
 static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
@@ -221,16 +221,17 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 
 	intel_de_write(dev_priv, PP_ON_DELAYS(dev_priv, 0),
 		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
-		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
-		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
+		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->delays.power_up) |
+		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->delays.backlight_on));
 
 	intel_de_write(dev_priv, PP_OFF_DELAYS(dev_priv, 0),
-		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
-		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
+		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->delays.power_down) |
+		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->delays.backlight_off));
 
 	intel_de_write(dev_priv, PP_DIVISOR(dev_priv, 0),
 		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
-		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));
+		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
+				      DIV_ROUND_UP(pps->delays.power_cycle, 1000) + 1));
 }
 
 static void intel_pre_enable_lvds(struct intel_atomic_state *state,
-- 
2.45.2

