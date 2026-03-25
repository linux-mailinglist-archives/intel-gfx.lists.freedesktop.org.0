Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mImKDQtsw2k9qwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF08231FCDE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7A110E79D;
	Wed, 25 Mar 2026 05:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e3nzr1LJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBCA10E78E;
 Wed, 25 Mar 2026 05:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414832; x=1805950832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6tI4Nuus7wgSAcw0BPomeHoJ6v3Cr7t8bawWK9qXV4w=;
 b=e3nzr1LJcjvr8gh62ldDRvd6u2dtBAKJL8K68oIp4zd1zCBNu1120CKw
 t7IAcOPgHxyIPE4WcPBgksPcBTj7D3QYBpH+XgXfa0GpXrPgEF0I0MDtu
 k52+7KpyrEXfNwWEUM4ohJl97hBpGX6f3ueHFQrV8FGtJncjPS9bAakpi
 tlYNJDdNOvlymMmNFu3wKb35y2ivTU7w/90VYW4Blg1zeoho6AV24BasG
 p+bOQ69P+ET0W3WnJnxQ9TWrEQtvqCxot3b0KiGIH4Gr3BwUAKPSa7az0
 K2ek4y2Cdy0MTg+XO/FjgXVNzsDkt1Ue5rTE9w2P+PwEutHS5olGaxLyk Q==;
X-CSE-ConnectionGUID: 8yjxtiBZQsi8rmaJZ5S4fw==
X-CSE-MsgGUID: l/3RoTXJT4+897GEc88w9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922386"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922386"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:00:31 -0700
X-CSE-ConnectionGUID: ZRU3NXM0QeWoKr2XhE9kng==
X-CSE-MsgGUID: IMTzPkrNRmO2MHJ7aT20pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580941"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 22:00:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 25/26] drm/i915/writeback: Make exception for writeback
 connector
Date: Wed, 25 Mar 2026 10:29:15 +0530
Message-Id: <20260325045916.984243-26-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CF08231FCDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Writeback connector is a special connector as it does not actually
exist. This means a lot of checks and computations need to be skipped
and exceptions need to be made when it comes to this connector.
This commit contains all those changes for a writeback connector.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 115 ++++++++++++++----
 .../drm/i915/display/intel_display_debugfs.c  |   3 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   3 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +
 .../gpu/drm/i915/display/intel_writeback.c    |   5 +
 .../gpu/drm/i915/display/intel_writeback.h    |   1 +
 8 files changed, 110 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6aa74d29d372..741a7b467117 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -127,6 +127,7 @@
 #include "intel_vrr.h"
 #include "intel_wm.h"
 #include "intel_writeback.h"
+#include "intel_writeback_reg.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
@@ -1639,6 +1640,9 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 
 	intel_set_transcoder_timings(crtc_state);
 
+	if (intel_writeback_transcoder_is_wd(cpu_transcoder))
+		return;
+
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
@@ -2687,6 +2691,10 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
 	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
 
+	if (intel_writeback_transcoder_is_wd(cpu_transcoder)) {
+		return;
+	}
+
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
 		/* the chip adds 2 halflines automatically */
 		crtc_vtotal -= 1;
@@ -2881,6 +2889,15 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	u32 tmp;
 
+	if (intel_writeback_transcoder_is_wd(cpu_transcoder)) {
+		tmp = intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder));
+		adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
+
+		tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
+		adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
+		return;
+	}
+
 	tmp = intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder));
 	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
@@ -3794,32 +3811,59 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		u32 tmp = 0;
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
-		with_intel_display_power_if_enabled(display, power_domain)
-			tmp = intel_de_read(display,
-					    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
+		if (cpu_transcoder == TRANSCODER_WD_0 ||
+		    cpu_transcoder == TRANSCODER_WD_1) {
+			with_intel_display_power_if_enabled(display, power_domain)
+				tmp = intel_de_read(display,
+						    WD_TRANS_FUNC_CTL(cpu_transcoder));
+			if (!(tmp & TRANS_WD_FUNC_ENABLE))
+				continue;
 
-		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
-			continue;
+			switch (tmp & WD_INPUT_SELECT_MASK) {
+			case WD_INPUT_PIPE_A:
+				trans_pipe = PIPE_A;
+				break;
+			case WD_INPUT_PIPE_B:
+				trans_pipe = PIPE_B;
+				break;
+			case WD_INPUT_PIPE_C:
+				trans_pipe = PIPE_C;
+				break;
+			case WD_INPUT_PIPE_D:
+				trans_pipe = PIPE_D;
+				break;
+			default:
+				MISSING_CASE(tmp & WD_INPUT_SELECT_MASK);
+				break;
+			}
+		} else {
+			with_intel_display_power_if_enabled(display, power_domain)
+				tmp = intel_de_read(display,
+						    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
-		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
-		default:
-			drm_WARN(display->drm, 1,
-				 "unknown pipe linked to transcoder %s\n",
-				 transcoder_name(cpu_transcoder));
-			fallthrough;
-		case TRANS_DDI_EDP_INPUT_A_ONOFF:
-		case TRANS_DDI_EDP_INPUT_A_ON:
-			trans_pipe = PIPE_A;
-			break;
-		case TRANS_DDI_EDP_INPUT_B_ONOFF:
-			trans_pipe = PIPE_B;
-			break;
-		case TRANS_DDI_EDP_INPUT_C_ONOFF:
-			trans_pipe = PIPE_C;
-			break;
-		case TRANS_DDI_EDP_INPUT_D_ONOFF:
-			trans_pipe = PIPE_D;
-			break;
+			if (!(tmp & TRANS_DDI_FUNC_ENABLE))
+				continue;
+
+			switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
+			default:
+				drm_WARN(display->drm, 1,
+					 "unknown pipe linked to transcoder %s\n",
+					 transcoder_name(cpu_transcoder));
+				fallthrough;
+			case TRANS_DDI_EDP_INPUT_A_ONOFF:
+			case TRANS_DDI_EDP_INPUT_A_ON:
+				trans_pipe = PIPE_A;
+				break;
+			case TRANS_DDI_EDP_INPUT_B_ONOFF:
+				trans_pipe = PIPE_B;
+				break;
+			case TRANS_DDI_EDP_INPUT_C_ONOFF:
+				trans_pipe = PIPE_C;
+				break;
+			case TRANS_DDI_EDP_INPUT_D_ONOFF:
+				trans_pipe = PIPE_D;
+				break;
+			}
 		}
 
 		if (trans_pipe == crtc->pipe)
@@ -3908,6 +3952,13 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 			pipe_config->pch_pfit.force_thru = true;
 	}
 
+	if (intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder)) {
+		tmp = intel_de_read(display,
+				    TRANSCONF_WD(pipe_config->cpu_transcoder));
+
+		return tmp & WD_TRANS_ENABLE;
+	}
+
 	tmp = intel_de_read(display,
 			    TRANSCONF(display, pipe_config->cpu_transcoder));
 
@@ -4017,7 +4068,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (transcoder_has_vrr(pipe_config))
+	if (!intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder) &&
+	    transcoder_has_vrr(pipe_config))
 		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
@@ -4030,6 +4082,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
 		else
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	} else if (intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder)) {
+		pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	} else {
 		pipe_config->output_format =
 			bdw_get_pipe_misc_output_format(crtc);
@@ -4056,6 +4110,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	hsw_ips_get_config(pipe_config);
 
 	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
+	    !intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder) &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		pipe_config->pixel_multiplier =
 			intel_de_read(display,
@@ -4064,6 +4119,16 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->pixel_multiplier = 1;
 	}
 
+	if (!intel_writeback_transcoder_is_wd(pipe_config->cpu_transcoder) &&
+	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
+		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
+
+		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
+	} else {
+		/* no idea if this is correct */
+		pipe_config->framestart_delay = 1;
+	}
+
 out:
 	intel_display_power_put_all_in_set(display, &crtc->hw_readout_power_domains);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2614c4863c87..350de3b3589d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -202,6 +202,9 @@ static void intel_panel_info(struct seq_file *m,
 {
 	const struct drm_display_mode *fixed_mode;
 
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
+		return;
+
 	if (list_empty(&connector->panel.fixed_modes))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f35a9252f4e1..f780032a23e3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4664,6 +4664,9 @@ int intel_dpll_compute(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
 
+	if (encoder->type == INTEL_OUTPUT_WRITEBACK)
+		return 0;
+
 	if (drm_WARN_ON(display->drm, !dpll_mgr))
 		return -EINVAL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index e25be56e678b..fe01b283f783 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -397,7 +397,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 	int ret;
 
 	/* don't care about old stuff for now */
-	if (!HAS_DDI(display))
+	if (!HAS_DDI(display) || encoder->type == INTEL_OUTPUT_WRITEBACK)
 		return 0;
 
 	/* Avoid port out of bounds checks if SWSCI isn't there. */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 244806a26da3..e7b6e6d1ba63 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -158,6 +158,9 @@ intel_pmdemand_update_phys_mask(struct intel_display *display,
 	if (!encoder)
 		return;
 
+	if (encoder->type == INTEL_OUTPUT_WRITEBACK)
+		return;
+
 	if (intel_encoder_is_tc(encoder))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6c09c6d99ffe..08594afdedd9 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -20,6 +20,7 @@
 #include "intel_qp_tables.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
+#include "intel_writeback.h"
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 {
@@ -1081,6 +1082,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!intel_dsc_source_support(crtc_state))
 		return;
 
+	if (intel_writeback_transcoder_is_wd(cpu_transcoder))
+		return;
+
 	power_domain = intel_dsc_power_domain(crtc, cpu_transcoder);
 
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 612721d7d978..d8299a200287 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -52,6 +52,11 @@ static const u32 writeback_formats[] = {
 	DRM_FORMAT_XBGR2101010,
 };
 
+bool intel_writeback_transcoder_is_wd(enum transcoder transcoder)
+{
+	return transcoder == TRANSCODER_WD_0 || transcoder == TRANSCODER_WD_1;
+}
+
 static struct intel_writeback_connector
 *conn_to_intel_writeback_connector(struct intel_connector *connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
index 83a986753c4c..3a99a6526841 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback.h
@@ -17,6 +17,7 @@ struct intel_writeback_connector;
 int intel_writeback_init(struct intel_display *display);
 void intel_writeback_atomic_commit(struct intel_atomic_state *state);
 void intel_writeback_isr_handler(struct intel_display *display);
+bool intel_writeback_transcoder_is_wd(enum transcoder transcoder);
 
 #endif /* __INTEL_WRITEBACK_H__ */
 
-- 
2.34.1

