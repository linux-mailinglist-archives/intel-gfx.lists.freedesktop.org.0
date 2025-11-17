Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0AEC626FE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E0710E2D3;
	Mon, 17 Nov 2025 05:44:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="if9ixR4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5402710E2CD;
 Mon, 17 Nov 2025 05:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358290; x=1794894290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uIva1GzeBxqU04zDuhNLH9fUJNg3ZPEx1vZv3PgOoOE=;
 b=if9ixR4auLexnQw7/HMYsc7aLURcpDvhbhNwvieWuDRyRY3pnyCTWgas
 89w2yqOxyjpWKJdizGQm7Ffw2rvT/RQGIdy7x95X+DkWh+ZcXoFV1PA/0
 JCBrdetez3mcbTuGXtoQebKImrk5dNfSQqgT3Bs5Ok+Yc/NG/OcUHi4KP
 sm09GN7UnnxuevRydFpJQZ0fSSoq2ivKffF4bqK9IUdbEXtujJTYy9GnV
 VeWZRIUzFbd+yKMle1Sfq+mR32xpo25y6Kw/b+O4nN4nlUpwdkRtgO/3w
 YSzWVO9Wk9KuRw5ScOP5/fYemjCtskamE+r7zYc4S8JxdILruZcv9CTEN w==;
X-CSE-ConnectionGUID: sNJEm84NSx+XuC+b7Iw0CQ==
X-CSE-MsgGUID: 3HhGxaP2RrasWju+7x0VQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446035"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446035"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:50 -0800
X-CSE-ConnectionGUID: P+RTAHmXQTWXwYKIeXcchg==
X-CSE-MsgGUID: bm5wrVLhQ56C5mE5mcYRVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016362"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:48 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 10/18] drm/i915/vrr: Write DC balance params to hw registers
Date: Mon, 17 Nov 2025 11:14:34 +0530
Message-ID: <20251117054442.4047665-11-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 76 ++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 788e93cea29d..7634d6a7ccaf 100644
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
@@ -786,6 +860,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
+	intel_vrr_enable_dc_balancing(crtc_state);
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
@@ -802,6 +877,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 				       VRR_STATUS_VRR_EN_LIVE, 1000))
 		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
 
+	intel_vrr_disable_dc_balancing(old_crtc_state);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 }
 
-- 
2.48.1

