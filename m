Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA8DAE5E7E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A175610E4FC;
	Tue, 24 Jun 2025 07:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k0RrE9pD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E3010E505;
 Tue, 24 Jun 2025 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751488; x=1782287488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bLT3Gi3nvAOKhaCQjxr1LJFWvmbK000/YiBqTSVPBkY=;
 b=k0RrE9pD8wlwauw+bf4no6LDI3uc+7JGTmbu+w6t3FJwH+ud4qxXYix6
 dtHwAqrnX81d81TdqnkWYT1KOHTPTi5qUgFZyaBpYiJ6X5Ycw4lnLfdyp
 W1q9uOx5T2GNyYISGLa+QjHcO6cdbkUIwHBbeqPqdb47Jrl3I5Uh3PcpF
 k3tHP9jev3S7q1qJlfHkMM8Alk/4jOB34dztelXhJD3XPIVB0hfjYmtAv
 y9Gx7HlGgrxbmuhvebV0KtSx/hcOUHQzc8DlatSk5q9g1y6d9LtLbm/wT
 saQdt0khZqGHAzRdItbS8WBgdhvMWM6IoKp3EoIXZK2+1ZSIC+PboBrDy g==;
X-CSE-ConnectionGUID: XyWMFFEXQGWZxJFwhMugqw==
X-CSE-MsgGUID: mfsGPiwnTtu0rMaXvP1irA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398249"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398249"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:27 -0700
X-CSE-ConnectionGUID: SNOBPTeHQVCW0HM8blmX7w==
X-CSE-MsgGUID: fREJMqdoRamBiwFDRKbHYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446441"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:25 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 09/18] drm/i915/vrr: Write DC balance params to hw registers
Date: Tue, 24 Jun 2025 13:19:39 +0530
Message-ID: <20250624074948.671761-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 43 ++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 07cd7cb38b97..ce23bcab1033 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -622,6 +622,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 
 	if (!crtc_state->vrr.enable)
 		return;
@@ -648,16 +650,57 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 		}
 	}
+
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
+			       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
+		intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
+			       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
+		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
+			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
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
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	if (old_crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
+		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
+	}
+
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       trans_vrr_ctl(old_crtc_state));
-- 
2.48.1

