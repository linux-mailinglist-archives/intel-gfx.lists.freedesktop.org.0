Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005A5C8D7AB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8AC10E7CC;
	Thu, 27 Nov 2025 09:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0e0hexy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51B210E7CC;
 Thu, 27 Nov 2025 09:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234974; x=1795770974;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dR+yObFaknMHuwxsEz4rdqwFXOGALzJMo3hax3lA7Jc=;
 b=T0e0hexyKOZMWRp4kVvhR61srbMGioubIBzXpzMC/0MghmyB0zNYHuO/
 sL4VuSMK7XgIWSoc2eP+GVbBFRNAiZQAjklc18sECTJnitvt85JV2SOZo
 Wb7NQKrPLpBz/J4ZkqSJYwjaHuq9XI1Et9Hv27q9sd0NQikQ6QIi2A1e+
 Xf6khAYI2ky0MNkIzpAqPs6z6vwC7h9nhOQIWvcvvA8dPpRLo+DtVgync
 2pMhMIHN9io166Rk1NvFv+ARU1WyrHmcbcItO4nXqAbWLyTXI7WFIzSAj
 jg8+NKWcTkUwwzxMrpX12ixMDrV5yxjLjZvL3raEzLNJd6cMzlAAaYSBW w==;
X-CSE-ConnectionGUID: v9sJTrPLRxWAQQfrXOZfCg==
X-CSE-MsgGUID: VrtX2pmoRpeJpb2Ym2itkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642342"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642342"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:13 -0800
X-CSE-ConnectionGUID: L5lF8ZtGTciVkdFXapwPJg==
X-CSE-MsgGUID: rDGbzMZZS4+dpT/hCem5rA==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:13 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 10/17] drm/i915/vrr: Write DC balance params to hw registers
Date: Thu, 27 Nov 2025 14:46:07 +0530
Message-ID: <20251127091614.648791-11-mitulkumar.ajitkumar.golani@intel.com>
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

--v8:
- Add separate functions while writing hw registers. (Ankit)

--v9:
- Add DC Balance counter enable bit to this patch. (Ankit)

--v10:
- Add rigister writes to vrr_enable/disable. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 76 ++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 411ae5da3824..11f06a5b854a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -767,6 +767,80 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
 		       intel_vrr_hw_flipline(crtc_state) - 1);
 }
 
+static void
+intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
+		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder),
+		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
+	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
+		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
+	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder),
+		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
+	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
+		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
+	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder),
+		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
+		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
+		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
+	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
+		       crtc_state->vrr.dc_balance.vmin - 1);
+	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
+		       crtc_state->vrr.dc_balance.vmax - 1);
+	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
+		       crtc_state->vrr.dc_balance.max_increase);
+	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
+		       crtc_state->vrr.dc_balance.max_decrease);
+	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
+		       crtc_state->vrr.dc_balance.guardband);
+	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
+		       crtc_state->vrr.dc_balance.slope);
+	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
+		       crtc_state->vrr.dc_balance.vblank_target);
+	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
+		       ADAPTIVE_SYNC_COUNTER_EN);
+}
+
+static void
+intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	if (!old_crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
+	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
+	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
+	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
+	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
+	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
+	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
+	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
+}
+
 static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 				bool cmrr_enable)
 {
@@ -813,6 +887,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_vrr_set_vrr_timings(crtc_state);
+	intel_vrr_enable_dc_balancing(crtc_state);
 
 	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
@@ -828,6 +903,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_vrr_tg_disable(old_crtc_state);
 
+	intel_vrr_disable_dc_balancing(old_crtc_state);
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
-- 
2.48.1

