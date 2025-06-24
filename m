Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED003AE61E1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 12:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067CD10E566;
	Tue, 24 Jun 2025 10:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mn80uPbf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE15710E54F;
 Tue, 24 Jun 2025 10:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750760059; x=1782296059;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=7Ff9DEgxwvToVFbfei+URzl6tMsfO4boGAdCYWOK5CM=;
 b=mn80uPbfukncc45UTyS76mPIfTWA6EThXBw6cTrnp5mSPKwxxEPiC/g4
 H7ykhpQlD98akQag3VElpc/CH/axW9j5kyA5UfN9dbkwN+u7YYy3vzw+f
 mkBV9TgYl14Int61HXJupC4wzDvcKRABt9MnlBhKXzP9hlEfQom/G27yJ
 R5XV7woFmO+9Nu1l9gjMCAcjZMiMB8A7P/DTS/BB03OQ68ja2/PzJ+WSo
 TRnR1CmLoCofcg9FTCNTOAkMMpQRvLy5CTl4lR3HO/d2MDO2uRYR94LIZ
 iJU4WQ8kB8n1TsUQepxvE/qcgMCxFaE4iD8KOO3iZdgBCwPGDgnmsh4xt g==;
X-CSE-ConnectionGUID: +epLbK4cQF2EqxXnW7c14w==
X-CSE-MsgGUID: uwyQq7xxRseZPOCSvFmptw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="53131491"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="53131491"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 03:14:18 -0700
X-CSE-ConnectionGUID: 12gGS4b9Qq6EDXeOkfCYIQ==
X-CSE-MsgGUID: lzvl+97PSWCSeji8GGPG0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="151623518"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa009.jf.intel.com with ESMTP; 24 Jun 2025 03:14:16 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Tue, 24 Jun 2025 15:29:27 +0530
Subject: [PATCH v2] drm/i915/display: Use static values for min_hblank
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-min_hblank-v2-1-9110a9342d8c@intel.com>
X-B4-Tracking: v=1; b=H4sIAP52WmgC/23MQQrDIBCF4auEWdeiEkW66j1KKMaMdWhiigZpC
 d69Nusu/wfv2yFjIsxw6XZIWCjTGlvIUwcu2PhARlNrkFwqrmXPFor3MM42Ppmx3kxSS+29gXZ
 4JfT0PrDb0DpQ3tb0OewifutfpggmmHKCc+ytGbm6UtxwPrt1gaHW+gUJR5nDpAAAAA==
X-Change-ID: 20250624-min_hblank-8af8d2626ff8
To: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Use recommended static values as per wa_14021694213 for min_hblank to
avoid underruns.

v2: corrected checkpatch warning and retain the restriction for
min_hblank (Jani)

Bspec: 74379
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.kernel.org/r/20250624-min_hblank-v1-1-5c100e4a8b05@intel.com
---
 drivers/gpu/drm/i915/display/intel_dp.c | 62 ++++++---------------------------
 1 file changed, 10 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df7fd26c9d089e8f1bd096bfc8df95..b657340648cd2be72cec3fae606c0bc2ec8dba3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3115,22 +3115,7 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode =
-					&crtc_state->hw.adjusted_mode;
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
-	/*
-	 * min symbol cycles is 3(BS,VBID, BE) for 128b/132b and
-	 * 5(BS, VBID, MVID, MAUD, BE) for 8b/10b
-	 */
-	int min_sym_cycles = intel_dp_is_uhbr(crtc_state) ? 3 : 5;
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
-	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
-	int min_hblank;
-	int max_lane_count = 4;
-	int hactive_sym_cycles, htotal_sym_cycles;
-	int dsc_slices = 0;
-	int link_bpp_x16;
 
 	if (DISPLAY_VER(display) < 30)
 		return 0;
@@ -3139,45 +3124,18 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 	if (!is_mst && !intel_dp_is_uhbr(crtc_state))
 		return 0;
 
-	if (crtc_state->dsc.compression_enable) {
-		dsc_slices = intel_dp_dsc_get_slice_count(connector,
-							  adjusted_mode->crtc_clock,
-							  adjusted_mode->crtc_hdisplay,
-							  num_joined_pipes);
-		if (!dsc_slices) {
-			drm_dbg(display->drm, "failed to calculate dsc slice count\n");
-			return -EINVAL;
-		}
+	/* min_hblank formula is undergoing a change and the recomendation is to use static value */
+	if (intel_dp_is_uhbr(crtc_state)) {
+		if (crtc_state->dsc.compression_enable &&
+		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+		    crtc_state->pipe_bpp == 18)
+			crtc_state->min_hblank = 2;
+		else
+			crtc_state->min_hblank = 3;
+	} else {
+		crtc_state->min_hblank = 10;
 	}
 
-	if (crtc_state->dsc.compression_enable)
-		link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;
-	else
-		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
-								   crtc_state->pipe_bpp));
-
-	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
-	hactive_sym_cycles = drm_dp_link_symbol_cycles(max_lane_count,
-						       adjusted_mode->hdisplay,
-						       dsc_slices,
-						       link_bpp_x16,
-						       symbol_size, is_mst);
-	htotal_sym_cycles = adjusted_mode->htotal * hactive_sym_cycles /
-			     adjusted_mode->hdisplay;
-
-	min_hblank = htotal_sym_cycles - hactive_sym_cycles;
-	/* minimum Hblank calculation: https://groups.vesa.org/wg/DP/document/20494 */
-	min_hblank = max(min_hblank, min_sym_cycles);
-
-	/*
-	 * adjust the BlankingStart/BlankingEnd framing control from
-	 * the calculated value
-	 */
-	min_hblank = min_hblank - 2;
-
-	min_hblank = min(10, min_hblank);
-	crtc_state->min_hblank = min_hblank;
-
 	return 0;
 }
 

---
base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
change-id: 20250624-min_hblank-8af8d2626ff8

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

