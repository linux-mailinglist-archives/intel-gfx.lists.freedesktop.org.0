Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9C9AB3B75
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469B110E42A;
	Mon, 12 May 2025 14:57:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UWFjIfyn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D78610E42F;
 Mon, 12 May 2025 14:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061840; x=1778597840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OtLdlqRQL2BNIabnXoTJEyNjVaPhIlmwXN3rH59gYeU=;
 b=UWFjIfyn3DaUbUSc6+QrD2PLA5FKuaHKK+0xBDuoybDxFnBzkdSOVq13
 S4+QwR93G/RA/Yv/lqVrpjLN9uJvnnAkhPfJn8GYfH3m8vPsLTsUbh6+5
 XUhF0KXoWfTeOVB0G8lTHAsXClpQ1gt2gw9I1arb6448vdUDY+T06KV2T
 fzUHLfyvJKFBKfvIAPp7mLMZ6iqmcPiEvqdXBeta463QWF9dynSTE6PnI
 V/X1FNZaBvIfjf2qYYX7Pt6z4KBDg2huRta1GVNsHNhZUbaLU75Yy/DC7
 eK6ZqVzqY+5B6XnZ7VqXSOoFSScslStQD0BZny+nJLc2VhdRJSkzuRBld Q==;
X-CSE-ConnectionGUID: YPgAJsMVTWuIKumBrtgRRA==
X-CSE-MsgGUID: epyWyMTlRECwYZAPr0J/6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60264668"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="60264668"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:20 -0700
X-CSE-ConnectionGUID: BK0SYKYtSfuEnF3ZFXSxCA==
X-CSE-MsgGUID: QtWyuxi4Rp6rBrsisp6A0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137857475"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 3/8] drm/i915: rewrite VLV IOSF SB unit specific read/write
 functions
Date: Mon, 12 May 2025 17:56:54 +0300
Message-Id: <df97dafa0f7b665e2078c392f0dc3edc59655b0a.1747061743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
References: <cover.1747061743.git.jani.nikula@intel.com>
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

Rewrite the VLV IOSF SB unit specific helpers in terms of the new
generic read/write functions. They become even simpler than they were.

The DPIO get/put helpers need to get/put both DPIO units.

v2: get/put both DPIO units

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/vlv_iosf_sb.c | 73 ++++++++----------------------
 drivers/gpu/drm/i915/vlv_iosf_sb.h |  4 +-
 2 files changed, 22 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index aaed876a1f2e..efb5ee39dbbb 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -198,96 +198,68 @@ int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit,
 
 u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
 {
-	u32 val = 0;
-
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
-			SB_CRRDDA_NP, addr, &val);
-
-	return val;
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, addr);
 }
 
 int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
 {
-	return vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
-			       SB_CRWRDA_NP, addr, &val);
+	return vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, addr, val);
 }
 
 u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
 {
-	u32 val = 0;
-
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_BUNIT,
-			SB_CRRDDA_NP, reg, &val);
-
-	return val;
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_BUNIT, reg);
 }
 
 void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
 {
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_BUNIT,
-			SB_CRWRDA_NP, reg, &val);
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_BUNIT, reg, val);
 }
 
 u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
 {
-	u32 val = 0;
-
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_NC,
-			SB_CRRDDA_NP, addr, &val);
-
-	return val;
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, addr);
 }
 
 u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
 {
-	u32 val = 0;
-
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCK,
-			SB_CRRDDA_NP, reg, &val);
-
-	return val;
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, reg);
 }
 
 void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
 {
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCK,
-			SB_CRWRDA_NP, reg, &val);
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCK, reg, val);
 }
 
 u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
 {
-	u32 val = 0;
-
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCU,
-			SB_CRRDDA_NP, reg, &val);
-
-	return val;
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCU, reg);
 }
 
 void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
 {
-	vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_CCU,
-			SB_CRWRDA_NP, reg, &val);
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCU, reg, val);
 }
 
-static u32 vlv_dpio_phy_iosf_port(struct drm_i915_private *i915, enum dpio_phy phy)
+static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct drm_i915_private *i915,
+						  enum dpio_phy phy)
 {
 	/*
 	 * IOSF_PORT_DPIO: VLV x2 PHY (DP/HDMI B and C), CHV x1 PHY (DP/HDMI D)
 	 * IOSF_PORT_DPIO_2: CHV x2 PHY (DP/HDMI B and C)
 	 */
 	if (IS_CHERRYVIEW(i915))
-		return phy == DPIO_PHY0 ? IOSF_PORT_DPIO_2 : IOSF_PORT_DPIO;
+		return phy == DPIO_PHY0 ? VLV_IOSF_SB_DPIO_2 : VLV_IOSF_SB_DPIO;
 	else
-		return IOSF_PORT_DPIO;
+		return VLV_IOSF_SB_DPIO;
 }
 
 u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg)
 {
-	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
-	u32 val = 0;
+	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
+	u32 val;
 
-	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);
+	val = vlv_iosf_sb_read(i915, unit, reg);
 
 	/*
 	 * FIXME: There might be some registers where all 1's is a valid value,
@@ -303,24 +275,19 @@ u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg)
 void vlv_dpio_write(struct drm_i915_private *i915,
 		    enum dpio_phy phy, int reg, u32 val)
 {
-	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
+	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
 
-	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
+	vlv_iosf_sb_write(i915, unit, reg, val);
 }
 
 u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
 {
-	u32 val = 0;
-
-	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRRDDA_NP,
-			reg, &val);
-	return val;
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_FLISDSI, reg);
 }
 
 void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
 {
-	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRWRDA_NP,
-			reg, &val);
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_FLISDSI, reg, val);
 }
 
 void vlv_iosf_sb_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index 26af3aa973f8..66f8918d4974 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -76,7 +76,7 @@ static inline void vlv_ccu_put(struct drm_i915_private *i915)
 
 static inline void vlv_dpio_get(struct drm_i915_private *i915)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO));
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
 u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg);
@@ -85,7 +85,7 @@ void vlv_dpio_write(struct drm_i915_private *i915,
 
 static inline void vlv_dpio_put(struct drm_i915_private *i915)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO));
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
 static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
-- 
2.39.5

