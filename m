Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3CDA9CA02
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 15:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F9010E2DC;
	Fri, 25 Apr 2025 13:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGoixlwX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB7310E2E7;
 Fri, 25 Apr 2025 13:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745587186; x=1777123186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fudm+M2xFHqFGSSkQd8DancqqDg3kMGleNTW4CbeNf0=;
 b=hGoixlwXYW7dw+fhvHg4es2mmTwUybiwIes0o7Pj3rV2UrdZBuAjB1U3
 SPwr8IVqDE9Qf1ZLPJ6jMy58y75Vnm8ajc+INvaKfgSxcqLFCagCF+xes
 OSLhRnJSJL6miI1+S4aml96e/U+gNQYyfBCnBoEjNsX8St432fNwTCZcj
 BDSNnyCUBL9Yx5K1WgzEkWZonaCZYLo1dih5zI0WYN1uIuBkeV6OBvzPj
 l+MrJA2AV0C7hZsJkcVawR814rAGUmWAPEeMe4VGWYs8EXGIADOyOcOJN
 NkxSwctQ6ZJRaG9tnDKxshG//wbMuvYpcMACtWPNbTAELDTF+AJR8MYFa Q==;
X-CSE-ConnectionGUID: HHOjwhTtRdiHAWvgYvC5CA==
X-CSE-MsgGUID: iydxmFv7TiWuIvyv1eHGfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="46479501"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="46479501"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 06:19:45 -0700
X-CSE-ConnectionGUID: cizuTYNCQvW1LGeZ3kHRbw==
X-CSE-MsgGUID: ndv/Xv+CRXehZLuM4w1uZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132777991"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 06:19:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/6] drm/i915: rewrite VLV IOSF SB unit specific read/write
 functions
Date: Fri, 25 Apr 2025 16:19:21 +0300
Message-Id: <7d6e26538b02ae922398bd1b5112c3ca8bb25cfb.1745587049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745587049.git.jani.nikula@intel.com>
References: <cover.1745587049.git.jani.nikula@intel.com>
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

Rewrite the VLV IOSF SB unit specific helpers in terms of the new
generic read/write functions. They become even simpler than they were.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/vlv_iosf_sb.c | 73 ++++++++----------------------
 1 file changed, 20 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index 33c282adfff6..24567f7bf4ce 100644
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
-- 
2.39.5

