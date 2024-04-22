Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938FB8AC45C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E101127F0;
	Mon, 22 Apr 2024 06:40:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPkKUyr7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494781127F7;
 Mon, 22 Apr 2024 06:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768021; x=1745304021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ve2dyTJ2FtLyay/LVGPOPXTaObcPaKAxObPfR6nmkq4=;
 b=WPkKUyr7Sks5C2jNjFgVt3nBigh0uxuoT2IO8D+NplyNXQZsXDxYFHIK
 bxiYJqAf1iFUQKzKTyyuWxKwz/DlWXkn1rJVCei/TJ+ERyA9Q6nSMxn41
 Na4DKQcs1hpqoRZtpoAOJsYhmPjkhpfgTT652LgzckbQjaVlAiONTF0vJ
 HIYNCJ3+GqDsrGRUDYUAw+tKC0eEe5OCp7jHCUkLEep2WebqVNlLTotHH
 NZttwIHLoNwBmtlSHIG6Wo4aqx1HhSS+LOKhhiASEGO0/sZQSH2g1JvUy
 /misr+eI6RCTJbZu20bogKn4lb+d8JEcnCKMdwMbbEKR8E6/puwkXTmCx Q==;
X-CSE-ConnectionGUID: rDq98Yo1SH++6jtr8oHBSw==
X-CSE-MsgGUID: DsGXsIXXQFuwaNRjGjfD1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208619"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208619"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:21 -0700
X-CSE-ConnectionGUID: 0r3bLsAnRKOZWrm2eHMRmw==
X-CSE-MsgGUID: wHeuI6WmTNOe04JpZNEZ0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896459"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:19 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 08/19] drm/i915/xe2hpd: update pll values in sync with Bspec
Date: Mon, 22 Apr 2024 12:10:27 +0530
Message-Id: <20240422064038.1451579-9-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

