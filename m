Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890E7C8D7C0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007C810E7DB;
	Thu, 27 Nov 2025 09:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oK5RayuB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B70710E7D8;
 Thu, 27 Nov 2025 09:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234987; x=1795770987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=acXC78cJ104Y9cq6IMNiVqGcRcAfR9b5uOxI52sTeio=;
 b=oK5RayuBs8eQgbMnH9J0I6LffRCV5TfqkuQIwEhFrWDOIrbY9Nfi1zkx
 yPz3okuyPAt2Gy9Dz2JvpgiMwRcREZ+24SU5cdWsGM6Mgh/4UjR5fYBiO
 VS+DNIqgS6Xg809oJbEC36UFT/f5VoRKxTZG68YafvsooHtk9YkGs1vhY
 Gmbvv4x2tGTrRIgnVg4cqCPLAd/Q3lsjgjkrdPsi1AeOeqhYiVIB36SgH
 kXTA2ZQH9qGIzdge3VMBlidjXZh05yrBlWbzTerpASH0CyLmp6URYH539
 fSjNAHqEETtkCna6HPD92UwsIBui6UrgWLvN0G6i5Zk2/J9/533GHopF0 g==;
X-CSE-ConnectionGUID: l5AjSJwBTACN/WqUCZ0LpQ==
X-CSE-MsgGUID: vg33KRQKTVixV47TufMjEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642375"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642375"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:26 -0800
X-CSE-ConnectionGUID: mB0tutfuSTCGhb69pLCleA==
X-CSE-MsgGUID: RPqEagC3QQKl8X0h+Tk43Q==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:26 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 17/17] drm/i915/vrr: Enable DC Balance
Date: Thu, 27 Nov 2025 14:46:14 +0530
Message-ID: <20251127091614.648791-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and related hw flag.
Also to add pipe restrictions along with this.

--v2:
- Use dc balance check instead of source restriction.
--v3:
- Club pipe restriction check with dc balance enablement. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 29 +++++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ec2e5a94a99e..425bd83aebfc 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -352,14 +352,28 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 	return vmax;
 }
 
+static bool intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	/*
+	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
+	 * and PIPE B. Account those limitation while computing DC
+	 * Balance parameters.
+	 */
+	return (HAS_VRR_DC_BALANCE(display) &&
+		((pipe == PIPE_A) || (pipe == PIPE_B)));
+}
+
 static void
 intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
 {
 	int guardband_usec, adjustment_usec;
-	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!(HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.enable))
+	if (!(intel_vrr_dc_balance_possible(crtc_state) && crtc_state->vrr.enable))
 		return;
 
 	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
@@ -385,6 +399,7 @@ intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.dc_balance.vblank_target =
 		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
 			     DCB_BLANK_TARGET, 100);
+	crtc_state->vrr.dc_balance.enable = true;
 }
 
 void
@@ -775,6 +790,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
+	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (!crtc_state->vrr.dc_balance.enable)
 		return;
@@ -813,6 +829,9 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
 	intel_pipedmc_dcb_enable(NULL, crtc);
+
+	vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void
@@ -822,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
+	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (!old_crtc_state->vrr.dc_balance.enable)
 		return;
@@ -844,6 +864,9 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
 	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
 	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
+
+	vrr_ctl &= ~VRR_CTL_DCB_ADJ_ENABLE;
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
@@ -949,7 +972,7 @@ void intel_vrr_get_dc_balance_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (!HAS_VRR_DC_BALANCE(display))
+	if (!intel_vrr_dc_balance_possible(crtc_state))
 		return;
 
 	reg_val = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
-- 
2.48.1

