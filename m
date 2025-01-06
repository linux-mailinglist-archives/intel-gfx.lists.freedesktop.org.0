Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051F0A01E70
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFD310E573;
	Mon,  6 Jan 2025 04:08:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="epwtbRPe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC1B10E571;
 Mon,  6 Jan 2025 04:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736136528; x=1767672528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hmlbbij8gkVOFlKwvNzSCb+421qWWPubrWBnzlMaS4Y=;
 b=epwtbRPeDvuIcZW0cR6k6ZPc7sHSG4sor7d7/ul4MRWWgZw5zbfP+1mL
 ylm82JwHJ+VBBY/yKYycYgqjtR7863wi2Vy7yNcIBk64K1MsxQ8R6+tS3
 /HM1TrIUNkHFeZmSLq9NlwjG2eBXtOlppd3+NkiwnDi9Q5xYfV+TQ3Arr
 SQeAuDxmK4NnCW+Cjwk7fatjiW/8ZlyP2c+RFqcwyKgZkinZI8BqjXMRz
 0Uv01qcyzYJphV725RB2EASK1oHX0tshkWW2rC27qOQkop8ohHQaxOo4X
 8QjJ3kkDcqUJm37ccBxxLOB7Mn9PRQ96cPsN/VVMT0DA3eGof/8t3DDio w==;
X-CSE-ConnectionGUID: fBRRP71iTtiLc2SmOj66Lw==
X-CSE-MsgGUID: 2ZdPyqsRQDCQuvaB6UhJZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="40214659"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="40214659"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:08:48 -0800
X-CSE-ConnectionGUID: ZV9o/MQWSyai5vDsFIeEPw==
X-CSE-MsgGUID: c9hNZa1ITW2tXZF6AyXoKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="102816098"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 05 Jan 2025 20:08:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/cx0: Set ssc_enabled for c20 too
Date: Mon,  6 Jan 2025 09:38:21 +0530
Message-Id: <20250106040821.251114-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250106040821.251114-1-suraj.kandpal@intel.com>
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
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

ssc_enabled does not get set for c20 phy legacy native rates.
This means SSC for MPLLB for legacy rates and UHBR 13.5 is never
set. This patch makes sure we set ssc_enabled for both c10 and c20.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3fd959a2773c..a0ae0be77c55 100644
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
@@ -2067,6 +2073,8 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	if (!tables)
 		return -EINVAL;
 
+	intel_cx0pll_update_ssc(crtc_state, encoder);
+
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
@@ -2319,6 +2327,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	if (!tables)
 		return -EINVAL;
 
+	intel_cx0pll_update_ssc(crtc_state, encoder);
+
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
-- 
2.34.1

