Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A126AA18B4C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 06:30:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389FC10E2EE;
	Wed, 22 Jan 2025 05:30:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lRHHl42n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AABE10E1D8;
 Wed, 22 Jan 2025 05:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737523840; x=1769059840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=amw4vtW36C3tra3Czp1TnhNR1fM4GGnPfBNuLfDYV5k=;
 b=lRHHl42nARa1C3Lbve0+qrF3HNnhB31s4JVQ3cUpu+vim50vaGgLI2ec
 u+xI4GLstnnnLLi06dOfBmhw4cIUIVTANdUCjOhjGI/zcksL0cfzF+yxM
 RpmMy3d9rtaqBzRtRHtJu4pweAICn5g4xk7GnkbbTGrqX6mLrVcLrtBCe
 Jvzdql6KprWAO2o/5roo0cqQ2FPc9EQ0FwU/K98sghv/kxwz0DqDNgQbk
 t8Ow83m8WL9pSK/Sws/JOs7yZaTPZ6AaYgjevOrzZMTePbUQ+uAI0Hi6x
 DURtFEVwWImqNE7y/Z4yzsHJeOJByD20iQZj64ZyDmjYgd64GkAO9jTvT g==;
X-CSE-ConnectionGUID: 9cVD2zTgSqmmNxqPIY2mIw==
X-CSE-MsgGUID: bbkafcrLTyeMecLTW/H70Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38065883"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38065883"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 21:30:40 -0800
X-CSE-ConnectionGUID: mRLYCm1RSFKRmCx2rNMcrA==
X-CSE-MsgGUID: zPE+wgtRRey7/HIeKhebJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="106846863"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 21 Jan 2025 21:30:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/cx0: Set ssc_enabled for c20 too
Date: Wed, 22 Jan 2025 11:00:23 +0530
Message-Id: <20250122053022.1544881-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

ssc_enabled does not get set for c20 phy.
This patch makes sure we set ssc_enabled for both c10 and c20.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 058013c74991..d123851e53cb 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2033,21 +2033,27 @@ intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
-static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
+static void intel_cx0pll_update_ssc(struct intel_crtc_state *crtc_state,
 				    struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
-	int i;
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (intel_panel_use_ssc(display)) {
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
 			pll_state->ssc_enabled =
 				(intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
 		}
 	}
+}
+
+static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
+				    struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
+	int i;
 
 	if (pll_state->ssc_enabled)
 		return;
@@ -2070,6 +2076,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
+			intel_cx0pll_update_ssc(crtc_state, encoder);
 			intel_c10pll_update_pll(crtc_state, encoder);
 			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
 
@@ -2354,6 +2361,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
+			intel_cx0pll_update_ssc(crtc_state, encoder);
 			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 			return 0;
 		}
-- 
2.34.1

