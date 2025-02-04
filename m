Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6542A2739A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FCC310E656;
	Tue,  4 Feb 2025 13:58:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AEbxvF4T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A2710E656;
 Tue,  4 Feb 2025 13:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677538; x=1770213538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xOlvvVMdcZVWeneYtU3hi0u30VNjcM4eFbH6pl4/h38=;
 b=AEbxvF4T43E358oyIPNwQquSPRhKUEHG+JregYxDCjtDO52oB0vz1H6M
 aZC4/f1stOolsilGIMz34hqboC/33fsyUKJKkbK4kR1mqR0yvP34Ly+RK
 6kL4vOBh2Brqsv+kyDVcE5Iz9jEOLFzAB3Rr6jqFNmKJKUkMjGxzZZ5Mg
 PR5ps+aEJrexvu88gs+Ds5vrnpmm5tl7khRHICq1ioSWc+3z0+gFr4WdI
 1l4eE4NxPAkCvYfQllDVwpM5dkppOGU7HSj5UgIleXBFeoJ0EazXzrkQ/
 3V6206kA1+/IuP2veH8SX1A48RZJx4JxiByptG61Zp3hiFxiZYpzcV6pH A==;
X-CSE-ConnectionGUID: /hUeWMgLQymFJv/tg+dcUA==
X-CSE-MsgGUID: t7Oi1bnrQtqd5ywLgDwAOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39359024"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39359024"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:58:58 -0800
X-CSE-ConnectionGUID: QD0lZ3fYQyqCt8m7xiobog==
X-CSE-MsgGUID: ZybQ9H8iSfWuSjQscBJN2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484250"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:58:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/6] drm/i915/lspcon: add intel_lspcon_active() and use it
Date: Tue,  4 Feb 2025 15:58:39 +0200
Message-Id: <3eabe0cb07a84c63119ea893e149de410b4356b0.1738677489.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738677489.git.jani.nikula@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
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
index efc412165a3c..c59b7fec20f0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3029,7 +3029,7 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 
 		/* FIXME precompute everything properly */
 		/* FIXME how do we turn infoframes off again? */
-		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
+		if (intel_lspcon_active(dig_port) && intel_dp_has_hdmi_sink(&dig_port->dp))
 			dig_port->set_infoframes(encoder,
 						 crtc_state->has_infoframe,
 						 crtc_state, conn_state);
@@ -3385,7 +3385,7 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
 	drm_connector_update_privacy_screen(conn_state);
 	intel_edp_backlight_on(crtc_state, conn_state);
 
-	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
+	if (!intel_lspcon_active(dig_port) || intel_dp_has_hdmi_sink(&dig_port->dp))
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
 	trans_port_sync_stop_link_train(state, encoder, crtc_state);
@@ -4086,7 +4086,7 @@ static void intel_ddi_read_func_ctl_dp_sst(struct intel_encoder *encoder,
 			intel_de_read(display,
 				      dp_tp_ctl_reg(encoder, crtc_state)) & DP_TP_CTL_FEC_ENABLE;
 
-	if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
+	if (intel_lspcon_active(dig_port) && intel_dp_has_hdmi_sink(&dig_port->dp))
 		crtc_state->infoframes.enable |=
 			intel_lspcon_infoframes_enabled(encoder, crtc_state);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cc6aba353c11..ef182ef574f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3500,9 +3500,10 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 
 		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
 	} else {
+		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
 
-		lspcon_resume(dp_to_dig_port(intel_dp));
+		lspcon_resume(dig_port);
 
 		/* Write the source OUI as early as possible */
 		intel_dp_init_source_oui(intel_dp);
@@ -3518,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 			msleep(1);
 		}
 
-		if (ret == 1 && lspcon->active)
+		if (ret == 1 && intel_lspcon_active(dig_port))
 			lspcon_wait_pcon_mode(lspcon);
 	}
 
@@ -5569,7 +5570,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 						  intel_dp->downstream_ports);
 	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
 	intel_dp->dfp.ycbcr_444_to_420 =
-		dp_to_dig_port(intel_dp)->lspcon.active ||
+		intel_lspcon_active(dp_to_dig_port(intel_dp)) ||
 		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
 							intel_dp->downstream_ports);
 	intel_dp->dfp.rgb_to_ycbcr =
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 0c8bf477c2fb..e54aad8a5f7f 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -689,6 +689,13 @@ bool lspcon_init(struct intel_digital_port *dig_port)
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

