Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8A9C5F4A3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E9210EB1E;
	Fri, 14 Nov 2025 20:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kb0PnSnO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D54A10EB1C;
 Fri, 14 Nov 2025 20:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763153604; x=1794689604;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=K2Exe390mjs50FQdbDiTEX5Nf9UoWW6o/xNpdvxYDD4=;
 b=Kb0PnSnO4JyhohZoCNdBJ4vZzMiDJOPcCcBM9TuV3c3mzZTefIPL1qll
 KrzK5CVXHJsj9TtqsE6/5BjlAT2wfSNVLZZeGeevxBBcF5sLUQ5vEj/LJ
 QTjVSutEfwlvtBzss9gXXKocJh38Pck7fgbhygJUSLe0vF3K7+yKewtyB
 jaBDrHUhuW5/cSMjv5eDTAwQgXFU2zgmtqgpltD3Fpg0TIWMVnmj6Vcfn
 zIFS/hOMUUSmip0wZDjGtWk8MtoEJzte3H8I1Ka7IzwEk2XwpQzw8H6ww
 YFFWAJYsLXaY2PYTISTX/qOsGReTbuDnB5hMR5yyRdcpx06VIUqXPmYQD Q==;
X-CSE-ConnectionGUID: VCbeGNM0RxaSIQSfY0t8lQ==
X-CSE-MsgGUID: c4VYCN8kQSKa3nljJAqvEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="67859847"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="67859847"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:24 -0800
X-CSE-ConnectionGUID: oHXQDn3nTnO+J0QY9uq08w==
X-CSE-MsgGUID: 3Olmrq+XSCuHbqSMjdExIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227214210"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.50])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:20 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 14 Nov 2025 17:52:09 -0300
Subject: [PATCH v5 2/8] drm/i915/power: Use intel_encoder_is_tc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-xe3p_lpd-basic-enabling-v5-2-c183388367f4@intel.com>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
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
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Imre Deak <imre.deak@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
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

v2:
  - Add and use icl_aux_pw_is_tc_phy() helper to avoid explicit encoder
    lookup. (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v1
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c    | 33 +++++++++++++++-------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f4f7e73acc87..40d6b44c0b74 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -258,8 +258,9 @@ aux_ch_to_digital_port(struct intel_display *display,
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
@@ -271,7 +272,23 @@ static enum phy icl_aux_pw_to_phy(struct intel_display *display,
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
+}
+
+static bool icl_aux_pw_is_tc_phy(struct intel_display *display,
+				 const struct i915_power_well *power_well)
+{
+	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
+
+	return encoder && intel_encoder_is_tc(encoder);
 }
 
 static void hsw_wait_for_power_well_enable(struct intel_display *display,
@@ -570,9 +587,7 @@ static void
 icl_aux_power_well_enable(struct intel_display *display,
 			  struct i915_power_well *power_well)
 {
-	enum phy phy = icl_aux_pw_to_phy(display, power_well);
-
-	if (intel_phy_is_tc(display, phy))
+	if (icl_aux_pw_is_tc_phy(display, power_well))
 		return icl_tc_phy_aux_power_well_enable(display, power_well);
 	else if (display->platform.icelake)
 		return icl_combo_phy_aux_power_well_enable(display,
@@ -585,9 +600,7 @@ static void
 icl_aux_power_well_disable(struct intel_display *display,
 			   struct i915_power_well *power_well)
 {
-	enum phy phy = icl_aux_pw_to_phy(display, power_well);
-
-	if (intel_phy_is_tc(display, phy))
+	if (icl_aux_pw_is_tc_phy(display, power_well))
 		return hsw_power_well_disable(display, power_well);
 	else if (display->platform.icelake)
 		return icl_combo_phy_aux_power_well_disable(display,
@@ -1852,7 +1865,7 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
-	if (intel_phy_is_tc(display, phy))
+	if (icl_aux_pw_is_tc_phy(display, power_well))
 		icl_tc_port_assert_ref_held(display, power_well,
 					    aux_ch_to_digital_port(display, aux_ch));
 

-- 
2.51.0

