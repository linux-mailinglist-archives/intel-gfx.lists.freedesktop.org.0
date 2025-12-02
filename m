Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7994C99B9A
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C14610E4FF;
	Tue,  2 Dec 2025 01:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="msEpqI7W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D7B10E4FA;
 Tue,  2 Dec 2025 01:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638594; x=1796174594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DUSYvOulrcrE0buUSfVYjcrz7Ua4AUkoRD7rKoJE0oI=;
 b=msEpqI7W+C/3O8psS+VqHKKx16s1XdhK6UpKuKdvccO57OqMMe42cz/i
 kx6+vFq8gS6JYpNdaGeh/kxBM0ksQX8Na2ILHFzVzXWsgcqxqWn+H6OBS
 41Kw9D2ed7FBaqL2ifRaewdXFjgyjuydm/B5+Q45kObG4EXMHwmAiMqm9
 QaGv/DShGgp6Twa9lZugOX7y8Ady9KItpjRY8S7FRWdi3RLiBFz867r/F
 BO/wn1sfnXAtVx8kjOnatrsuXBHfcdRaGGnypGZadpryQdXN+ZmRwRdh5
 wGcUaIL79eCCviQkxTACa01tfjRUNSjnPxEt+a4mNI4KiO01/Ugrl2NwS A==;
X-CSE-ConnectionGUID: v92v0V0cT0SnyH3wBUJx3g==
X-CSE-MsgGUID: 4L17SwUNStqRqgDipzhA2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186544"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186544"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:14 -0800
X-CSE-ConnectionGUID: /QO2hctmTLqVvyymh5KkGg==
X-CSE-MsgGUID: 2Ti5ESqES9K0G1oiQi8OeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927898"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:14 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 2/8] drm/i915/power: Use intel_encoder_is_tc()
Date: Mon,  1 Dec 2025 17:23:00 -0800
Message-ID: <20251202012306.9315-3-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

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
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 33 +++++++++++++------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 719f58e43269..3abfb17f8988 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -257,8 +257,9 @@ aux_ch_to_digital_port(struct intel_display *display,
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
@@ -270,7 +271,23 @@ static enum phy icl_aux_pw_to_phy(struct intel_display *display,
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
@@ -569,9 +586,7 @@ static void
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
@@ -584,9 +599,7 @@ static void
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
@@ -1845,7 +1858,7 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
-	if (intel_phy_is_tc(display, phy))
+	if (icl_aux_pw_is_tc_phy(display, power_well))
 		icl_tc_port_assert_ref_held(display, power_well,
 					    aux_ch_to_digital_port(display, aux_ch));
 
-- 
2.51.0

