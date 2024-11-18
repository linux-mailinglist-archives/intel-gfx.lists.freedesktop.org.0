Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 860FB9D1397
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1713C10E4F6;
	Mon, 18 Nov 2024 14:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVttVD34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEEA510E4F8;
 Mon, 18 Nov 2024 14:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941376; x=1763477376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=01iMkveRp66d5xkzjnsEv8e5m0hAEmnr9uxo3/CF6fE=;
 b=fVttVD34knDrnrzQEOA5yW2iRUqcpey8hik2deTlHujYTIOG47tVfweg
 AVJDLOsRjR8lGYBJyn77cp6089CZctm9toCqrRVAqxVPFh2RK7e3qk42E
 AYjWdNJBzFCnNg+c2P7LUZfAnyAIJae+CarGDEsa/TbctvLP09M3GugsS
 K7f0yk9ORcK1Dqpak76+Ty5pn5cs6FFX7XbjaAEXPG7aBXbN5Fdv9zv0x
 5+gX/pFJOxOrUPwr45D+9xmB+yroW4HExMhOgHa9aeuCkT+RmelISdYsn
 Z+g/EqSUTpg/k3iXrq8ZBEY2JRbUi7MEPDkKExrbIgBrVvbiptJy8RhJn A==;
X-CSE-ConnectionGUID: wGVc6UbYSUyvTSYKv7v9bA==
X-CSE-MsgGUID: lOnANPqtRxexN8JbqC/gtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42414914"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="42414914"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:36 -0800
X-CSE-ConnectionGUID: 7MujYAMoTM+TxPAoBL9Ang==
X-CSE-MsgGUID: oMoDXhwGSAOxCOEP6NxLWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120184785"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/11] drm/i915/ddi: use intel_ddi_* naming convention for
 encoder enable/disable
Date: Mon, 18 Nov 2024 16:49:00 +0200
Message-Id: <b85802f973127505c5eae17bca91537fb5ae86b8.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
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

