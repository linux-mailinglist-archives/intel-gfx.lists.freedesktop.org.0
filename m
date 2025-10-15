Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DBDBDC50E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174CF10E71A;
	Wed, 15 Oct 2025 03:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dK+oIxWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA6E10E71A;
 Wed, 15 Oct 2025 03:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498314; x=1792034314;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=rm+VxPJTu1Y/0TuJaK3n7gCbusyV89/MlMr+AofbtUU=;
 b=dK+oIxWQz1PXLdHTlc3vc2nDR/qUPuBzsIpkHJ2c0v0QL87xXufvqmyz
 VlMXtxAjf+qtpdDn3mh5iVI6tyYqjUYB8SAQKIByajfuTAOufpkhK4aI9
 ct3+jSf4nTbbTH8gsp/Rg6gkv4g3yX1HSYaP1GVmkcZyqbPHsi7Vtog/y
 a+98Ny/FUNq25/XfscfIpR6ro9vavzsiX01eoSovd4CVvXefAOoBqw8A9
 Oc30UVQCUTSF2XwlqrORqFBsRWmw0WujXedoca0DluEN4ApQ7yimBBGE3
 l+1eKJAZ8a931wZ36PIDXhR9Ny6tbona9Lem+/zhB3/zvvcXeJUAKJUjT Q==;
X-CSE-ConnectionGUID: b4/1bru3TbOF+gm1XYWy1g==
X-CSE-MsgGUID: 0/+wTilfQzyoy7UHKjgsJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702595"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702595"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:34 -0700
X-CSE-ConnectionGUID: wHg0fOcHS6aMu54WKzhYhQ==
X-CSE-MsgGUID: JeP3HpbkQXWm1sXRW+Dhuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303132"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:30 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:28 -0300
Subject: [PATCH 28/32] drm/i915/power: Use intel_encoder_is_tc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-28-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

Starting with Xe3p_LPD, when intel_phy_is_tc() returns true, it does
not necessarily mean that the port is connected to a PHY in the Type-C
subsystem.  The reason is that there is now a VBT field called
dedicated_external that will indicate that a Type-C capable port is
connected to a (most likely) combo/dedicated PHY.  When that's the case,
we must not do the extra programming required for Type-C connections.

In an upcoming change, we will modify intel_encoder_is_tc() to take the
VBT field dedicated_external into consideration.  Update
intel_display_power_well.c to use that function instead of
intel_phy_is_tc().

Note that, even though icl_aux_power_well_{enable,disable} are not part
of Xe3p_LPD's display paths, we modify them anyway for uniformity.

Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c    | 26 +++++++++++++++-------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index ba2552adb58b..e8200672dcf3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -256,8 +256,9 @@ aux_ch_to_digital_port(struct intel_display *display,
 	return NULL;
 }
 
-static enum phy icl_aux_pw_to_phy(struct intel_display *display,
-				  const struct i915_power_well *power_well)
+static struct intel_encoder *
+icl_aux_pw_to_encoder(struct intel_display *display,
+		      const struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
@@ -269,7 +270,15 @@ static enum phy icl_aux_pw_to_phy(struct intel_display *display,
 	 * as HDMI-only and routed to a combo PHY, the encoder either won't be
 	 * present at all or it will not have an aux_ch assigned.
 	 */
-	return dig_port ? intel_encoder_to_phy(&dig_port->base) : PHY_NONE;
+	return dig_port ? &dig_port->base : NULL;
+}
+
+static enum phy icl_aux_pw_to_phy(struct intel_display *display,
+				  const struct i915_power_well *power_well)
+{
+	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
+
+	return encoder ? intel_encoder_to_phy(encoder) : PHY_NONE;
 }
 
 static void hsw_wait_for_power_well_enable(struct intel_display *display,
@@ -568,9 +577,9 @@ static void
 icl_aux_power_well_enable(struct intel_display *display,
 			  struct i915_power_well *power_well)
 {
-	enum phy phy = icl_aux_pw_to_phy(display, power_well);
+	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
 
-	if (intel_phy_is_tc(display, phy))
+	if (encoder && intel_encoder_is_tc(encoder))
 		return icl_tc_phy_aux_power_well_enable(display, power_well);
 	else if (display->platform.icelake)
 		return icl_combo_phy_aux_power_well_enable(display,
@@ -583,9 +592,9 @@ static void
 icl_aux_power_well_disable(struct intel_display *display,
 			   struct i915_power_well *power_well)
 {
-	enum phy phy = icl_aux_pw_to_phy(display, power_well);
+	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
 
-	if (intel_phy_is_tc(display, phy))
+	if (encoder && intel_encoder_is_tc(encoder))
 		return hsw_power_well_disable(display, power_well);
 	else if (display->platform.icelake)
 		return icl_combo_phy_aux_power_well_disable(display,
@@ -1847,10 +1856,11 @@ tgl_tc_cold_off_power_well_is_enabled(struct intel_display *display,
 static void xelpdp_aux_power_well_enable(struct intel_display *display,
 					 struct i915_power_well *power_well)
 {
+	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
-	if (intel_phy_is_tc(display, phy))
+	if (encoder && intel_encoder_is_tc(encoder))
 		icl_tc_port_assert_ref_held(display, power_well,
 					    aux_ch_to_digital_port(display, aux_ch));
 

-- 
2.51.0

