Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04686896D3B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B4B1129DA;
	Wed,  3 Apr 2024 10:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPfutzgN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F129112642;
 Wed,  3 Apr 2024 10:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141524; x=1743677524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=covl09Hpcqu9WKIB4A3Hrrei1Pqv6zHu6aNl1eE+XAU=;
 b=KPfutzgNKDdToPZyIlF6nK3YOw6Wf3U3ZobWXlkUrgJ4dDtowEAANfLv
 +oEuqxV/LvdJs2NslH1nAtOd1b29LYL6ei7gyaYhvE1FLk+Cz39ul2q0p
 WHMXcKxCCfivhF4V5/aEBn7ZtLEDBIG5/ITf2r7ryXOuRcDAHtsajw8v1
 MNbie8VigcCJX2mpQ2Xwsg36GAaiKniDpDOu1Uf+O74BT/y1Yxz5W/Iy1
 AcTBIdoIY5H2L/GMt+O9Ko2K18vV8cmJ2m14Rjza3KoFNE/INe448Lpl3
 +T0QXbl3Tl/IfKzk5zCk5+rYyi0PsEBvP30MKsk4iV3KxrCsqRc1NEtsu w==;
X-CSE-ConnectionGUID: BCt6yUBJTv+HIoxVBSTWZw==
X-CSE-MsgGUID: +ifimZhgSrG3Ew5XZ6sXtw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212169"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212169"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:38 -0700
X-CSE-ConnectionGUID: oUx+bBygSkOwOfOaqMqjLA==
X-CSE-MsgGUID: f24fI0xERIOOwutc4WbqxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493379"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:36 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 12/25] drm/i915/xe2hpd: update pll values in sync with Bspec
Date: Wed,  3 Apr 2024 16:21:10 +0530
Message-Id: <20240403105123.1327669-13-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

DP/eDP and HDMI pll values are updated for Xe2_HPD platform

Bspec: 74165
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 47 +++++++++++++++++++-
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d948035f07ad..20035be015c3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1109,6 +1109,42 @@ static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
 	NULL,
 };
 
+static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
+	.clock = 1350000, /* 13.5 Gbps */
+	.tx = {	0xbea0, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x015f,	/* mpllb cfg0 */
+		0x2205,		/* mpllb cfg1 */
+		0x1b17,		/* mpllb cfg2 */
+		0xffc1,		/* mpllb cfg3 */
+		0xbd00,		/* mpllb cfg4 */
+		0x9ec3,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x4800,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
+	&mtl_c20_dp_rbr,
+	&mtl_c20_dp_hbr1,
+	&mtl_c20_dp_hbr2,
+	&mtl_c20_dp_hbr3,
+	&mtl_c20_dp_uhbr10,
+	&xe2hpd_c20_dp_uhbr13_5,
+	&mtl_c20_dp_uhbr20,
+	NULL,
+};
+
 /*
  * HDMI link rates with 38.4 MHz reference clock.
  */
@@ -2225,13 +2261,20 @@ static const struct intel_c20pll_state * const *
 intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
-	if (intel_crtc_has_dp_encoder(crtc_state))
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 			return xe2hpd_c20_edp_tables;
+
+		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+			return xe2hpd_c20_dp_tables;
 		else
 			return mtl_c20_dp_tables;
-	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		return mtl_c20_hdmi_tables;
+	}
 
 	MISSING_CASE(encoder->type);
 	return NULL;
-- 
2.25.1

