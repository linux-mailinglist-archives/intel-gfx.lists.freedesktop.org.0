Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E2A9E27C6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F91C10EAAB;
	Tue,  3 Dec 2024 16:41:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AICS8KrK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81CF10EAAB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244071; x=1764780071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lBPcXFlFaSomVKNETUq0mYZc+Tkp8ihrJtsUGxZkP68=;
 b=AICS8KrKrRdDtAXwsLPMqw9Tzt8l/UD7zbDsv4/JajS+9kL9V+jWmxPb
 5t0njt38nAzqC5GTUOZaVjM0MwXX8+Vs7MZ8YlVletU74i+jqSV0KIEAA
 5zk66kvfJlM4eofouNqE0O2+gG9ZzPNydq40sIcsuXYW2akR3IWeDmGTC
 0SR1Xs7FP1yCERPFTtrkZB/ygGl0pb1V/CGfsipz/zzir0iTP7tUWGvdp
 8C4ciHw3qJ+5XAL9jNuR08a5WyxMHu/IWC/63Bwbbw76FPws7UZxWmwlz
 FyzY1LYG4cgSGgj9v2OlaxBSeuru9jNI50d1ADIdPGqPK2dzfAH0G1/AD A==;
X-CSE-ConnectionGUID: r6wcOc9xQIes/vkqGOL7Sg==
X-CSE-MsgGUID: piQdTIq+Q2iw8+WAfi0RPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347509"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347509"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:11 -0800
X-CSE-ConnectionGUID: DP/Dm4ctQfaL3jv37ngAtA==
X-CSE-MsgGUID: NEceq4htShSUOcotOi8pEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580421"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915/lspcon: add intel_lspcon_active() and use it
Date: Tue,  3 Dec 2024 18:40:52 +0200
Message-Id: <6312593f231ba8522c5ecce7fc34e8de815f2197.1733243959.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733243959.git.jani.nikula@intel.com>
References: <cover.1733243959.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Hide the direct lspcon->active use behind intel_lspcon_active().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_lspcon.h | 1 +
 4 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..1d363c1ddfad 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2974,7 +2974,7 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 
 		/* FIXME precompute everything properly */
 		/* FIXME how do we turn infoframes off again? */
-		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
+		if (intel_lspcon_active(dig_port) && intel_dp_has_hdmi_sink(&dig_port->dp))
 			dig_port->set_infoframes(encoder,
 						 crtc_state->has_infoframe,
 						 crtc_state, conn_state);
@@ -3314,7 +3314,7 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
 	drm_connector_update_privacy_screen(conn_state);
 	intel_edp_backlight_on(crtc_state, conn_state);
 
-	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
+	if (!intel_lspcon_active(dig_port) || intel_dp_has_hdmi_sink(&dig_port->dp))
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
 	trans_port_sync_stop_link_train(state, encoder, crtc_state);
@@ -3982,7 +3982,7 @@ static void intel_ddi_read_func_ctl_dp_sst(struct intel_encoder *encoder,
 			intel_de_read(display,
 				      dp_tp_ctl_reg(encoder, crtc_state)) & DP_TP_CTL_FEC_ENABLE;
 
-	if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
+	if (intel_lspcon_active(dig_port) && intel_dp_has_hdmi_sink(&dig_port->dp))
 		crtc_state->infoframes.enable |=
 			intel_lspcon_infoframes_enabled(encoder, crtc_state);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4471c8fcd478..775d1c10d671 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3497,9 +3497,10 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 
 		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
 	} else {
+		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
 
-		lspcon_resume(dp_to_dig_port(intel_dp));
+		lspcon_resume(dig_port);
 
 		/* Write the source OUI as early as possible */
 		intel_dp_init_source_oui(intel_dp);
@@ -3515,7 +3516,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 			msleep(1);
 		}
 
-		if (ret == 1 && lspcon->active)
+		if (ret == 1 && intel_lspcon_active(dig_port))
 			lspcon_wait_pcon_mode(lspcon);
 	}
 
@@ -5552,7 +5553,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 						  intel_dp->downstream_ports);
 	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
 	intel_dp->dfp.ycbcr_444_to_420 =
-		dp_to_dig_port(intel_dp)->lspcon.active ||
+		intel_lspcon_active(dp_to_dig_port(intel_dp)) ||
 		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
 							intel_dp->downstream_ports);
 	intel_dp->dfp.rgb_to_ycbcr =
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index f9db867fae89..f898b8fabdd6 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -687,6 +687,13 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 	return true;
 }
 
+bool intel_lspcon_active(struct intel_digital_port *dig_port)
+{
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
+
+	return lspcon->active;
+}
+
 u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *pipe_config)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 47f9ae77b328..4c8ba3ddbac4 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -16,6 +16,7 @@ struct intel_encoder;
 struct intel_lspcon;
 
 bool lspcon_init(struct intel_digital_port *dig_port);
+bool intel_lspcon_active(struct intel_digital_port *dig_port);
 void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
 void lspcon_resume(struct intel_digital_port *dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
-- 
2.39.5

