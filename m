Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83206995A25
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA85710E612;
	Tue,  8 Oct 2024 22:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="br2Jl+Pa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852DD10E608;
 Tue,  8 Oct 2024 22:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427070; x=1759963070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Dcjbfg/KTffaljo/Exf5s9G5KuehLL0msqMILUED9Q=;
 b=br2Jl+PaWHPUJuVHQpB4bGofDF09Ld7rL/nHBe8Hhgr3CzRZThzsYWrg
 OFlRTSangGLsqKJg4qTjBpATzNVBxM/Ph3vzUBRxb8ijfCSY7a6ftuSvi
 81OiXMC6kf+uKnduUWAMiAr2gDGRItVHen/k9LIn6mnwmXyOsjVS7xsqo
 1yQFRVrahXzZp1eNJ9p3XliZV6EaXuzVMR/M1v7cS6xtuAwSmFT+EsHDR
 qlH1cdo6sgOiL+iXA4n7rrUltwr1lC7zb26Ac5rVkddt2bjgNd9TeUsRN
 ZvrCW9DrDEn+lZCghBl4Cn1d+fUnBOMIurK3gaBZMaVx+Q0Ntesp3Kh/h g==;
X-CSE-ConnectionGUID: yA2wIjnFRPipCOkbi4bMEg==
X-CSE-MsgGUID: 9/NMSl1/Tm6qkWtjeUVC1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037297"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037297"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:49 -0700
X-CSE-ConnectionGUID: EvNl8cMtRDOSzfXtiEPJOA==
X-CSE-MsgGUID: 7vUFMgb/SrWUa5zpWhnOaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811850"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:49 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated programming
 table
Date: Tue,  8 Oct 2024 15:37:38 -0700
Message-ID: <20241008223741.82790-8-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

From DISPLAY_VER() >= 30 C20 PHY consolidated programming table of
DP and eDP been merged and now use the same rates and values. eDP
over TypeC has also been introduced.
Moreover it allows more granular and higher rates. Add new table to
represent this change.

Bspec: 68961
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24 ++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4a6c3040ca15..0d6f75ae35f5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1122,6 +1122,22 @@ static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
 	NULL,
 };
 
+static const struct intel_c20pll_state * const xe3lpd_c20_dp_edp_tables[] = {
+	&mtl_c20_dp_rbr,
+	&xe2hpd_c20_edp_r216,
+	&xe2hpd_c20_edp_r243,
+	&mtl_c20_dp_hbr1,
+	&xe2hpd_c20_edp_r324,
+	&xe2hpd_c20_edp_r432,
+	&mtl_c20_dp_hbr2,
+	&xe2hpd_c20_edp_r675,
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
@@ -2242,11 +2258,15 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-			return xe2hpd_c20_edp_tables;
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+				return xe2hpd_c20_edp_tables;
+		}
 
 		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
 			return xe2hpd_c20_dp_tables;
+		else if (DISPLAY_VER(i915) >= 30)
+			return xe3lpd_c20_dp_edp_tables;
 		else
 			return mtl_c20_dp_tables;
 
-- 
2.45.0

