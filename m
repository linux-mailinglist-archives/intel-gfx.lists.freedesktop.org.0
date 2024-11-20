Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 630699D3ADC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B3710E733;
	Wed, 20 Nov 2024 12:43:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NzSKVixb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1393610E743;
 Wed, 20 Nov 2024 12:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106628; x=1763642628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7eC/B9UKiXSjF8CPQUMrTPAkNceDHJB+pcSzedHpDrI=;
 b=NzSKVixbQIcUbcOaKPrFF9OyX6MUQZ4vcRzgmtrwm1SzRtM9lDEdydmf
 Od1G9StK2GzhvYStCREZMhFjCRQjwNC6L7PgtPpN8qITo8jsvnYFZPoTq
 spfqk+Ev8heGDWp2VDd8gyp0Dus3SeHLIuAdeg8GET4PPeJryxAbTW0kZ
 voPkxcsXs3YEQdS0qMJtLa4jQYH2SSbpPOb8g5ThkdzJB+XTq4sg/ZG32
 KR9oXNN0gE9TnTm4rBqRAB64yhlfgne84xT6RcedCiRrwyvMQmo0651UV
 6B6+t78XG2/by8ytzM+ARQeSoYiaj8I0UKSMikuLd8GBI2lH3SN/RMEFL Q==;
X-CSE-ConnectionGUID: BPaYKO39SJSSC2sfAUDLog==
X-CSE-MsgGUID: 0/oJgJpXQTCwO69rUiG5RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42783355"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42783355"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:48 -0800
X-CSE-ConnectionGUID: e2kdBbG1RuaPvqJSOwjQzg==
X-CSE-MsgGUID: PbI8lxZnQ/CAEVj+3OEYAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94363500"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 05/11] drm/i915/ddi: use intel_ddi_* naming convention for
 encoder enable/disable
Date: Wed, 20 Nov 2024 14:43:13 +0200
Message-Id: <9533cf61773f2cab3a6a29acf9e6ecfc00b6e8fd.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
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

All the other encoder hooks are named intel_ddi_*, follow suit with
intel_ddi_enable() and intel_ddi_disable(), and the dp/hdmi variants.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f3368cf52641..cbd5d3dd7adc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3285,7 +3285,7 @@ static void trans_port_sync_stop_link_train(struct intel_atomic_state *state,
 				 crtc_state);
 }
 
-static void intel_enable_ddi_dp(struct intel_atomic_state *state,
+static void intel_ddi_enable_dp(struct intel_atomic_state *state,
 				struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state)
@@ -3326,7 +3326,7 @@ gen9_chicken_trans_reg_by_port(struct intel_display *display, enum port port)
 	return CHICKEN_TRANS(display, trans[port]);
 }
 
-static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
+static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
@@ -3429,7 +3429,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	intel_wait_ddi_buf_active(encoder);
 }
 
-static void intel_enable_ddi(struct intel_atomic_state *state,
+static void intel_ddi_enable(struct intel_atomic_state *state,
 			     struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
@@ -3455,15 +3455,15 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	}
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		intel_enable_ddi_hdmi(state, encoder, crtc_state, conn_state);
+		intel_ddi_enable_hdmi(state, encoder, crtc_state, conn_state);
 	else
-		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
+		intel_ddi_enable_dp(state, encoder, crtc_state, conn_state);
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 
 }
 
-static void intel_disable_ddi_dp(struct intel_atomic_state *state,
+static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 				 struct intel_encoder *encoder,
 				 const struct intel_crtc_state *old_crtc_state,
 				 const struct drm_connector_state *old_conn_state)
@@ -3484,7 +3484,7 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 						      false);
 }
 
-static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
+static void intel_ddi_disable_hdmi(struct intel_atomic_state *state,
 				   struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
@@ -3499,7 +3499,7 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
 			    connector->base.id, connector->name);
 }
 
-static void intel_disable_ddi(struct intel_atomic_state *state,
+static void intel_ddi_disable(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
@@ -3509,10 +3509,10 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
 
 	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
-		intel_disable_ddi_hdmi(state, encoder, old_crtc_state,
+		intel_ddi_disable_hdmi(state, encoder, old_crtc_state,
 				       old_conn_state);
 	else
-		intel_disable_ddi_dp(state, encoder, old_crtc_state,
+		intel_ddi_disable_dp(state, encoder, old_crtc_state,
 				     old_conn_state);
 }
 
@@ -5057,10 +5057,10 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->compute_output_type = intel_ddi_compute_output_type;
 	encoder->compute_config = intel_ddi_compute_config;
 	encoder->compute_config_late = intel_ddi_compute_config_late;
-	encoder->enable = intel_enable_ddi;
+	encoder->enable = intel_ddi_enable;
 	encoder->pre_pll_enable = intel_ddi_pre_pll_enable;
 	encoder->pre_enable = intel_ddi_pre_enable;
-	encoder->disable = intel_disable_ddi;
+	encoder->disable = intel_ddi_disable;
 	encoder->post_pll_disable = intel_ddi_post_pll_disable;
 	encoder->post_disable = intel_ddi_post_disable;
 	encoder->update_pipe = intel_ddi_update_pipe;
-- 
2.39.5

