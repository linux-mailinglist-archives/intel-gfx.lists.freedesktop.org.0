Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEE269EAE0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DC410E6D0;
	Tue, 21 Feb 2023 23:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2EE10E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020580; x=1708556580;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yJSCYWnk6nxB5cfAdzMSGnHaPROx2SRs5MImYDOGL9U=;
 b=e6uCnEKBFkvfdGfAIbt23C9bhwYMyBdz1igala+fYvo4snCQ1AT4mP+7
 VdWLtwozD2GEGWpVwgqmI0AdwY41N+jkHty6ZbEKbgyYNEpMgXEDUfXNB
 +xqCant3s2ytHdYAUax7mvRaa30N9tdvb9bhSrWIKcOTVQ1zw2qS9+Qmf
 f5PE62yJtvcoQFqwhEeClMKuhdauGD0ffuTlQtyAuZjWYifqcou/yS4Js
 v4DdyX86R/jUhnj469S1hNoiVGonL3FC56LuRXG1IMLfDjTzX6nPafzRR
 ekN5GSgmv4GjFM8uRKY4x29ruhaCjsjuXVwV4wH981fti7KAdsPQViUgO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501764"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501764"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690143"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690143"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:02:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:02:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:13 +0200
Message-Id: <20230221230227.6244-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/22] drm/i915: Split map_aux_ch() into
 per-platform arrays
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

The big switch+if statement mess in map_aux_ch() is
illegible. Split up into cleaner per-platform arrays
like we already have for the gmbus pins.

We use enum aux_ch as the index and the VBT thing as
the value. Slightly non-intuitive perhaps but if we
did it the other way around we'd have problems with
AUX_CH_A being zero, and thus any non-populated
element would look like AUX_CH_A.

v2: flip the index vs. value around

TODO: Didn't bother with the platform variants beyond the
      ones that really need remapping, which means if the
      VBT is bogus we end up with a nonexistent aux ch.
      Might be nice to check this a bit better.
      Yet another bitmask in device info?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 144 +++++++++++-----------
 1 file changed, 71 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 19be8862261b..5eae34295d4e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3584,86 +3584,84 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 
 	return false;
 }
 
+static const u8 xelpd_aux_ch_map[] = {
+	[AUX_CH_A] = DP_AUX_A,
+	[AUX_CH_B] = DP_AUX_B,
+	[AUX_CH_C] = DP_AUX_C,
+	[AUX_CH_D_XELPD] = DP_AUX_D,
+	[AUX_CH_E_XELPD] = DP_AUX_E,
+	[AUX_CH_USBC1] = DP_AUX_F,
+	[AUX_CH_USBC2] = DP_AUX_G,
+	[AUX_CH_USBC3] = DP_AUX_H,
+	[AUX_CH_USBC4] = DP_AUX_I,
+};
+
+/*
+ * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
+ * map to DDI A,TC1,TC2,TC3,TC4 respectively.
+ */
+static const u8 adls_aux_ch_map[] = {
+	[AUX_CH_A] = DP_AUX_A,
+	[AUX_CH_USBC1] = DP_AUX_B,
+	[AUX_CH_USBC2] = DP_AUX_C,
+	[AUX_CH_USBC3] = DP_AUX_D,
+	[AUX_CH_USBC4] = DP_AUX_E,
+};
+
+/*
+ * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
+ * map to DDI A,B,TC1,TC2 respectively.
+ */
+static const u8 rkl_aux_ch_map[] = {
+	[AUX_CH_A] = DP_AUX_A,
+	[AUX_CH_B] = DP_AUX_B,
+	[AUX_CH_USBC1] = DP_AUX_C,
+	[AUX_CH_USBC2] = DP_AUX_D,
+};
+
+static const u8 direct_aux_ch_map[] = {
+	[AUX_CH_A] = DP_AUX_A,
+	[AUX_CH_B] = DP_AUX_B,
+	[AUX_CH_C] = DP_AUX_C,
+	[AUX_CH_D] = DP_AUX_D, /* aka AUX_CH_USBC1 */
+	[AUX_CH_E] = DP_AUX_E, /* aka AUX_CH_USBC2 */
+	[AUX_CH_F] = DP_AUX_F, /* aka AUX_CH_USBC3 */
+	[AUX_CH_G] = DP_AUX_G, /* aka AUX_CH_USBC4 */
+	[AUX_CH_H] = DP_AUX_H, /* aka AUX_CH_USBC5 */
+	[AUX_CH_I] = DP_AUX_I, /* aka AUX_CH_USBC6 */
+};
+
 static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_channel)
 {
-	enum aux_ch aux_ch;
+	const u8 *aux_ch_map;
+	int i, n_entries;
 
-	/*
-	 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
-	 * map to DDI A,B,TC1,TC2 respectively.
-	 *
-	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
-	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
-	 */
-	switch (aux_channel) {
-	case DP_AUX_A:
-		aux_ch = AUX_CH_A;
-		break;
-	case DP_AUX_B:
-		if (IS_ALDERLAKE_S(i915))
-			aux_ch = AUX_CH_USBC1;
-		else
-			aux_ch = AUX_CH_B;
-		break;
-	case DP_AUX_C:
-		if (IS_ALDERLAKE_S(i915))
-			aux_ch = AUX_CH_USBC2;
-		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
-			aux_ch = AUX_CH_USBC1;
-		else
-			aux_ch = AUX_CH_C;
-		break;
-	case DP_AUX_D:
-		if (DISPLAY_VER(i915) >= 13)
-			aux_ch = AUX_CH_D_XELPD;
-		else if (IS_ALDERLAKE_S(i915))
-			aux_ch = AUX_CH_USBC3;
-		else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
-			aux_ch = AUX_CH_USBC2;
-		else
-			aux_ch = AUX_CH_D;
-		break;
-	case DP_AUX_E:
-		if (DISPLAY_VER(i915) >= 13)
-			aux_ch = AUX_CH_E_XELPD;
-		else if (IS_ALDERLAKE_S(i915))
-			aux_ch = AUX_CH_USBC4;
-		else
-			aux_ch = AUX_CH_E;
-		break;
-	case DP_AUX_F:
-		if (DISPLAY_VER(i915) >= 13)
-			aux_ch = AUX_CH_USBC1;
-		else
-			aux_ch = AUX_CH_F;
-		break;
-	case DP_AUX_G:
-		if (DISPLAY_VER(i915) >= 13)
-			aux_ch = AUX_CH_USBC2;
-		else
-			aux_ch = AUX_CH_G;
-		break;
-	case DP_AUX_H:
-		if (DISPLAY_VER(i915) >= 13)
-			aux_ch = AUX_CH_USBC3;
-		else
-			aux_ch = AUX_CH_H;
-		break;
-	case DP_AUX_I:
-		if (DISPLAY_VER(i915) >= 13)
-			aux_ch = AUX_CH_USBC4;
-		else
-			aux_ch = AUX_CH_I;
-		break;
-	default:
-		MISSING_CASE(aux_channel);
-		aux_ch = AUX_CH_A;
-		break;
+	if (DISPLAY_VER(i915) >= 13) {
+		aux_ch_map = xelpd_aux_ch_map;
+		n_entries = ARRAY_SIZE(xelpd_aux_ch_map);
+	} else if (IS_ALDERLAKE_S(i915)) {
+		aux_ch_map = adls_aux_ch_map;
+		n_entries = ARRAY_SIZE(adls_aux_ch_map);
+	} else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
+		aux_ch_map = rkl_aux_ch_map;
+		n_entries = ARRAY_SIZE(rkl_aux_ch_map);
+	} else {
+		aux_ch_map = direct_aux_ch_map;
+		n_entries = ARRAY_SIZE(direct_aux_ch_map);
 	}
 
-	return aux_ch;
+	for (i = 0; i < n_entries; i++) {
+		if (aux_ch_map[i] == aux_channel)
+			return i;
+	}
+
+	drm_dbg_kms(&i915->drm,
+		    "Ignoring alternate AUX CH: VBT claims AUX 0x%x, which is not valid for this platform\n",
+		    aux_channel);
+
+	return AUX_CH_NONE;
 }
 
 enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata)
 {
-- 
2.39.2

