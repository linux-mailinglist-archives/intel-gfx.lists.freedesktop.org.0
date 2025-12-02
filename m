Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2A1C9A7AA
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F3E10E59F;
	Tue,  2 Dec 2025 07:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lokTkt7b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4141910E59E;
 Tue,  2 Dec 2025 07:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661041; x=1796197041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2YX5OiL8FKTDiCeLwlJds1B3vqrRj9QhLw8Rq2teEqs=;
 b=lokTkt7b23hiO7mcZ/7SP+ANDYqOQZ6s8Swzh4U0GO9A2HJLDqmx3nJQ
 DweCrMbzBV+PeiKrHE2mVtbCSdIFkFXru92pjuxQGneUndO6EsKwTsXBX
 VyMtazKncOlI++Vf6q0PrRS3ZS8vzSaDPeLFCbd8ieZ7rA/MoratpjXrv
 hA51sMol+crh4AAwzW/C5YDB9meDCiPJKKFGcjHa6OcIQhC/uVI4kRjmk
 azqr+4VYo5b56Iq1d9UXExn5uaI9dMDjvGDnIOKv1joqKaEKkwbcXHv9r
 2EhcIoxLYPL8KOOLGcgS0Mk2VTrAzdOZjGxMkvAx49ojY88SHzYxm9c9B g==;
X-CSE-ConnectionGUID: KMnf9r0rQ6idhegZjVRxjg==
X-CSE-MsgGUID: VHNl54MhT7+eJT8y6Qx+gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219282"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219282"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:37:21 -0800
X-CSE-ConnectionGUID: mUgcNjK4RnqQaErq6u/t/g==
X-CSE-MsgGUID: vm3kq2NTQH+ANoeF2Qbupg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504937"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:37:19 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
Date: Tue,  2 Dec 2025 13:06:52 +0530
Message-ID: <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ba8b3c664e70..db74744ddb31 100644
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
@@ -963,7 +972,7 @@ void intel_vrr_get_dc_balance_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (!HAS_VRR_DC_BALANCE(display))
+	if (!intel_vrr_dc_balance_possible(crtc_state))
 		return;
 
 	reg_val = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
-- 
2.48.1

