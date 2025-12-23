Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7943FCD8EB5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1010710E28F;
	Tue, 23 Dec 2025 10:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHrrJIzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB4410E283;
 Tue, 23 Dec 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486754; x=1798022754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wNpk9R6GfbRhYWIdS0t8WPsGjv6hyRA8Fbjykq5qQns=;
 b=oHrrJIzJzatFwMfXQJV3BjkKWPaPQAKUYZ7GDW0rjeWUBiYONdWZ42ns
 Y0l2wB8On8fE7JxJgCtm0WHIBoPepxYTGBdUwGyMCrztrqQ2DwLTug1Yn
 CVdtFEvF5bzsRlzl5okeI+n0svS8bsUSf9FMV0KjQ8B53XQAdIMNthjRN
 P25mn+tAJB0r1g85Cl/f0kTaZCAc6gNTXKzL4XKwyUnB3G5RMnrJcJxZ4
 KYsdT/kz84MqLxD9NIU5asIuIiNUn8Eni+njLnJ3nevN+V4A2xgJPQT8D
 3CO65H772v0taK9wW1biOfzkLjFuA0OeO4F65VwEIan46kTgq7DEQ3Pti g==;
X-CSE-ConnectionGUID: qD+jWxUgTF615c+yZhHxDQ==
X-CSE-MsgGUID: zcvNlO/tQcuYrSJHBFzdww==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68090013"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68090013"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:53 -0800
X-CSE-ConnectionGUID: Y2qm863VQReRXeRsVlTkTQ==
X-CSE-MsgGUID: aJrhjzUCQI6/etxdNlaXfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734584"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:49 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 18/18] drm/i915/vrr: Enable DC Balance
Date: Tue, 23 Dec 2025 16:15:40 +0530
Message-ID: <20251223104542.2688548-19-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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
--v4:
- Separate out Pipe restrictions to patch#7

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1522ec3a98b8..db74744ddb31 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -399,6 +399,7 @@ intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.dc_balance.vblank_target =
 		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
 			     DCB_BLANK_TARGET, 100);
+	crtc_state->vrr.dc_balance.enable = true;
 }
 
 void
@@ -789,6 +790,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
+	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (!crtc_state->vrr.dc_balance.enable)
 		return;
@@ -827,6 +829,9 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
 	intel_pipedmc_dcb_enable(NULL, crtc);
+
+	vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void
@@ -836,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
+	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (!old_crtc_state->vrr.dc_balance.enable)
 		return;
@@ -858,6 +864,9 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
 	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
 	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
+
+	vrr_ctl &= ~VRR_CTL_DCB_ADJ_ENABLE;
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
-- 
2.48.1

