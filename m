Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 466E2896E14
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28E0112A1A;
	Wed,  3 Apr 2024 11:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dfyl7YHi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E557112A16;
 Wed,  3 Apr 2024 11:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143394; x=1743679394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=covl09Hpcqu9WKIB4A3Hrrei1Pqv6zHu6aNl1eE+XAU=;
 b=Dfyl7YHin8Gf4QnWSrDQpw7G1oKD+LeLpDKHK2n34UEs1EP5SiTExma3
 9MubvifEbhnPT3H8peq7BATdlHC7dpn5WGqC183ueOIqA9cFO7KzkUAXU
 F/W/CyEXVMLbPoiGkRY+oRj1Kkm7+gppoXpCYg31YtwlDzUseIOEJSm+E
 PidXh92pH0NsEU51bwiBzvS2RSIwWTpmKMgImsMNDhYFGJITscqOqLF6l
 3pv3f7McWiUmBygV+dp1HtphxG0IOBT7i7YZJ09HNfSHldZFJzQxLdTw+
 pPUJEl2+AmVdPc1WDG0TnFdchg02xIpvfwqlAL4X4PYnqRGJUfayAECgB Q==;
X-CSE-ConnectionGUID: 9P1vbDnCRAqUJSb9QAdGmg==
X-CSE-MsgGUID: S4eAvM3WQy+BAzZmI7w4TA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824096"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824096"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:14 -0700
X-CSE-ConnectionGUID: u75o4f9cShS1JyjQBioGTg==
X-CSE-MsgGUID: DEXDmJVjS0Wv1RsO9/y4hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358525"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:12 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 12/25] drm/i915/xe2hpd: update pll values in sync with Bspec
Date: Wed,  3 Apr 2024 16:52:40 +0530
Message-Id: <20240403112253.1432390-13-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

