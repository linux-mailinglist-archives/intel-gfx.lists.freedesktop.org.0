Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BC47FB9B5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A3210E4F0;
	Tue, 28 Nov 2023 11:52:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3770510E4F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172326; x=1732708326;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kXLv3Ztx/QT/IOD2ATg77ncDsyMyHGpbABxk+v3hUsw=;
 b=LYmgqzvLHHk51EH0Aw95ev8owwQ3ciOb4k+Mr1JTiHxCUq/4ssf67D7X
 vkrNwaV0bhVvyaf/uDVX7bagd9LIUDGZurhZ0a1JP0jDEZ/kwOIilrUHq
 7jBE8rzs6dPJgM4h4qadOnhT5p4KT0RIwwnEnAw/eKIUBbk2wuVek89fC
 su2jQNMbakJ5wYfSaqAOSazEkCh4k47IWLICYj4/pUpic4pS99v0nI/lz
 KX/H8HrWqEEguKv2wHLAa3LGIjPjxnOQEubvB1U8WlgzFbGV7SKMNe0+/
 tcRXjx/48fiJH9WMDAGKF9t5lhSSKYYKXnHshvo6VuGoEJGvpZPteEgy8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411616"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411616"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:52:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907463"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:52:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:52:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:38 +0200
Message-ID: <20231128115138.13238-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Simplify
 intel_ddi_compute_min_voltage_level()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Drop the redundant dev_priv parameters from
intel_ddi_compute_min_voltage_level() to make life easier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 9 +++++----
 drivers/gpu/drm/i915/display/intel_ddi.h    | 3 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dd04bd7b348c..12a29363e5df 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3696,9 +3696,10 @@ static int icl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_state)
 		return 0;
 }
 
-void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
-					 struct intel_crtc_state *crtc_state)
+void intel_ddi_compute_min_voltage_level(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+
 	if (DISPLAY_VER(dev_priv) >= 14)
 		crtc_state->min_voltage_level = icl_ddi_min_voltage_level(crtc_state);
 	else if (DISPLAY_VER(dev_priv) >= 12)
@@ -3920,7 +3921,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_ddi_phy_get_lane_lat_optim_mask(encoder);
 
-	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
+	intel_ddi_compute_min_voltage_level(pipe_config);
 
 	intel_hdmi_read_gcp_infoframe(encoder, pipe_config);
 
@@ -4200,7 +4201,7 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
-	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
+	intel_ddi_compute_min_voltage_level(pipe_config);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 63853a1f6582..434de7196875 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -70,8 +70,7 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);
 void intel_ddi_set_vc_payload_alloc(const struct intel_crtc_state *crtc_state,
 				    bool state);
-void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
-					 struct intel_crtc_state *crtc_state);
+void intel_ddi_compute_min_voltage_level(struct intel_crtc_state *crtc_state);
 int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       enum transcoder cpu_transcoder,
 			       bool enable, u32 hdcp_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 63364c9602ef..060728a4b851 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -614,7 +614,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
-	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
+	intel_ddi_compute_min_voltage_level(pipe_config);
 
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 
-- 
2.41.0

