Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 825F5902715
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C21910E4E6;
	Mon, 10 Jun 2024 16:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bmc2gQXN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A4510E18B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038180; x=1749574180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RNARLhRMqzZidyKRtZlAxuLdfalMJOQ4SNUOUh6rCsM=;
 b=bmc2gQXN4Td8f1kS9LPA9ZprYSeFbAwXv4axqs779Rt97bxo/BUxlFNq
 tQImo+uxYtOpRVwZByk+1x04Y8Iqn5o+L9qt5xn6w/YOctUVOHHrt5iPp
 yLWtC8GxC7VSwc6eOsFMwxGJExf07ZE4wH6y0D1ub5JRsbBIxk1ecLglN
 BIGoWQ1ve+0+O0O5H6/Gzy8IZiwhZzFUqgFZ86sBhR5I6wA4fE8+N9ksz
 UdsSnLRu9ma0/bRSnrzzHg6ZEhlyeaw/QYejl9DeuVedMOhdRHV6MZqD1
 Tz4gbeufyPhCqwOytcAtdkCtzkWFyiRa51XLFgPEuSDvmCezgzUEaDxsE w==;
X-CSE-ConnectionGUID: Sg/vIFq4QLG/qgWLYPh4+Q==
X-CSE-MsgGUID: RhkqFDKzSriYXzl7MQcITA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493996"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493996"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:40 -0700
X-CSE-ConnectionGUID: nmAzbv+FRNinYALgBjTOWQ==
X-CSE-MsgGUID: D5qm7BfTQ/SsVCT5oWLN8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060595"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 10/21] drm/i915/dp: Send a link training modeset-retry
 uevent to all MST connectors
Date: Mon, 10 Jun 2024 19:49:22 +0300
Message-ID: <20240610164933.2947366-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Send a modeset-retry uevent to all connectors in the same MST topology
after a link training failure and reduction of the link parameters. This
matches the way the same uevent is sent after a DP tunnel BW allocation
failure.

v2: Add NOTE that the atomic state may not be valid for SST links and
    assert that it's valid for MST links. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c          |  7 ++++++-
 drivers/gpu/drm/i915/display/intel_dp.h          |  1 -
 .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++----
 3 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4438ec2989249..8259d91d2d041 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2793,7 +2793,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 					intel_dp_is_uhbr(pipe_config);
 }
 
-void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
+static void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
@@ -2802,6 +2802,7 @@ void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
 		drm_connector_put(&connector->base);
 }
 
+/* NOTE: @state is only valid for MST links and can be %NULL for SST. */
 void
 intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 				      struct intel_encoder *encoder,
@@ -2810,6 +2811,7 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 	struct intel_connector *connector;
 	struct intel_digital_connector_state *conn_state;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i;
 
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
@@ -2818,6 +2820,9 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 		return;
 	}
 
+	if (drm_WARN_ON(&i915->drm, !state))
+		return;
+
 	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
 		if (!conn_state->base.crtc)
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 279cca23b95fa..ec4131db07439 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -44,7 +44,6 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state);
 int intel_dp_min_bpp(enum intel_output_format output_format);
 void intel_dp_init_modeset_retry_work(struct intel_connector *connector);
-void intel_dp_queue_modeset_retry_work(struct intel_connector *connector);
 void
 intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 				      struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 04629a4341eef..bb8680ac7f4da 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1187,10 +1187,13 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
+/* NOTE: @state is only valid for MST links and can be %NULL for SST. */
+static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
+						     struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
@@ -1205,8 +1208,13 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 		return;
 	}
 
+	if (drm_WARN_ON(&i915->drm,
+			intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
+			!state))
+		return;
+
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	intel_dp_queue_modeset_retry_work(intel_connector);
+	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
@@ -1525,7 +1533,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
+	intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state);
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
-- 
2.43.3

