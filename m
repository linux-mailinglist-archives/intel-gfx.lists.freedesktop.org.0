Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43318B7E89
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3278112D8B;
	Tue, 30 Apr 2024 17:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efH9SLjX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A749112D73;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HckQYKInlTNRCo6IVB6FWqwpDyV1uSWPPAkFbas0hB0=;
 b=efH9SLjX5D+mY9C2VYGKoVNP70yeHsJ9s74qRM8YoSxltq1471LdKkYE
 n9aQwU4G0FQQ5NkUViMGiWppX2l17WAUHWUbdpeUsHIQKcZSR4LxID38X
 1hGAIh71VaGTdT1T0IU5wU/1Uu+ut/QoG6MKtXajhT5AO/nPEdxwWKNnr
 4VGgbS+IoLzGwNQu9FLG94RGvmagaEVuCwYSkTO/J0ACl5xARAvD+Bz+C
 QHED+WQRVDRoPlk6SSA6dKTtE+0bPA4jWScZaLrtfnqNZyqBQuhWk6tc1
 b8fOc+wNJOwD1EcNibejnafduaR2zieuxcn76HG5OyM1iUFqze8CKoXEQ g==;
X-CSE-ConnectionGUID: yy3WfzIWSmyudCyYHsfTig==
X-CSE-MsgGUID: g4F2s5+sTAaZvZbN8e2M0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741992"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741992"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
X-CSE-ConnectionGUID: 8Tnww/KWTg2lTZfU7a89NA==
X-CSE-MsgGUID: op0a3JcLQwKnytMRAVsZaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617834"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 08/19] drm/i915/xe2hpd: update pll values in sync with Bspec
Date: Tue, 30 Apr 2024 10:28:39 -0700
Message-Id: <20240430172850.1881525-9-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

v2: Removed the unsupported mtl_c20_dp_uhbr20 from xehpd_c20_dp_tables

Bspec: 74165
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 46 +++++++++++++++++++-
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d16aab31349f..368daf43382a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1087,6 +1087,41 @@ static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
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
+	NULL,
+};
+
 /*
  * HDMI link rates with 38.4 MHz reference clock.
  */
@@ -2203,13 +2238,20 @@ static const struct intel_c20pll_state * const *
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
2.34.1

