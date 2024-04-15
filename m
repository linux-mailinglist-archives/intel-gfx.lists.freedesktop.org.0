Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64018A4A09
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BFA1122EA;
	Mon, 15 Apr 2024 08:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXe0VydX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5EF1122DA;
 Mon, 15 Apr 2024 08:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168859; x=1744704859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=03ysfeUvcZLg2+DKVE4A2hpdLLtAhpy1bXyG91ZW0nA=;
 b=WXe0VydXKCw+j8MkMSnwfBZJEd39rqOcsekwAHt/7//A4BhWz+0s9lwk
 mRl/uOR7wWGvlbsWGx7VV5xKCCPHi7PyTRIiB5rA/vcGYEL2Vp4iODT0n
 4CFrCAHewvdsKi0vYwWDlLUy06nnugdctixAIP2DJYCLiPcXmeToPNaq+
 RejbW8Gq1TYc35OUjLXUWJ1jQBw7zROpZtHiTjV+Vgj0tc25A0N4Ztab8
 pn2PuKU6qXnard6ydf9ZF55oyXRrPKixDvDIZTpuwAUkL5Q1os6zA8Vfg
 phyWRM1DtaMb5imN0n/iV/ZfGbnC5fN401OZ6YKR4CEJZ/QNcnWHjoNXd g==;
X-CSE-ConnectionGUID: z91PBtF5SCm5vE36ehhpVQ==
X-CSE-MsgGUID: 4UGAvCe/Tteax6CPl/EfNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096403"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096403"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:19 -0700
X-CSE-ConnectionGUID: vFfwZwzESNqk9A4jQlthVg==
X-CSE-MsgGUID: A0Px+sFGQdCAt4nCE/SDfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400336"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:18 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 10/21] drm/i915/xe2hpd: update pll values in sync with Bspec
Date: Mon, 15 Apr 2024 13:44:12 +0530
Message-Id: <20240415081423.495834-11-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 46 +++++++++++++++++++-
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8d37a2688809..584a6a36b05f 100644
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
2.25.1

