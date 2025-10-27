Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D41A0C0F4AD
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA07D10E50E;
	Mon, 27 Oct 2025 16:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQ5TwMkK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E92910E4FA;
 Mon, 27 Oct 2025 16:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582596; x=1793118596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YaUj3q5e+tSaN01xHj4nTSimKecEbzB1OTvmPUwIw4s=;
 b=BQ5TwMkKmAf5eGbgf3rASvuzbcypS1As4bds4O0Ybbf1EmDl8YLNRGFA
 J9ljssE7tzrHStobB6A28Rr/nfGSbkpMtx9fHFj7LVjc3rOPW4MM7SBHL
 XCurJur99C4IUBco4cxGtZwS0zlZ2sE8YeucEXhAsIdEDIC2krOMPV4rq
 UDkFoP8tDN4eiL3O84zPNpFMcqUVCSqvNj8tTHvxYvFARaenrPVcfHi0H
 0P2ZzuGTgYg+0edXjRUg/e2TFr1FBtClYKOw28B69o9U//EB9DfX1wgf2
 oWXc0AU9IuQRPpWrfapAg9YsGuNPuTMxjrd1g/PkniCeKoVI+ky1XU8sF A==;
X-CSE-ConnectionGUID: iaX+1ynySgaDXBMqqOfqBQ==
X-CSE-MsgGUID: 77CU8veIRMqNHr9TaP8NiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299354"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299354"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:56 -0700
X-CSE-ConnectionGUID: sZ0MgC5mTSi4WRO4JaVtQA==
X-CSE-MsgGUID: bG9jyvC7TviGarePMMO0LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785629"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:54 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 12/22] drm/i915/vrr: Write DC balance params to hw registers
Date: Mon, 27 Oct 2025 21:59:17 +0530
Message-ID: <20251027162927.2655581-13-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

Write DC Balance parameters to hw registers.

--v2:
- Update commit header.
- Separate crtc_state params from this patch. (Ankit)

--v3:
- Write registers at compute config.
- Update condition for write.

--v4:
- Address issue with state checker.

--v5:
- Initialise some more dc balance register while enabling VRR.

--v6:
- FLIPLINE_CFG need to be configure at last, as it is double buffer
arming point.

--v7:
- Initialise and reset live value of vmax and vmin as well.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 53 ++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6168caff9cf0..2d418f45569f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -764,10 +764,43 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	u32 vrr_ctl;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
 
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
+			       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder),
+			       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
+		intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
+			       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
+		intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder),
+			       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
+		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
+			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
+		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder),
+			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
+			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
+		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
+			       crtc_state->vrr.dc_balance.vmin - 1);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
+			       crtc_state->vrr.dc_balance.vmax - 1);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
+			       crtc_state->vrr.dc_balance.max_increase);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
+			       crtc_state->vrr.dc_balance.max_decrease);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
+			       crtc_state->vrr.dc_balance.guardband);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
+			       crtc_state->vrr.dc_balance.slope);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
+			       crtc_state->vrr.dc_balance.vblank_target);
+	}
+
 	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 
 	/*
@@ -785,6 +818,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       trans_vrr_ctl(old_crtc_state));
@@ -795,6 +830,24 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	if (old_crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
+	}
 }
 
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
-- 
2.48.1

