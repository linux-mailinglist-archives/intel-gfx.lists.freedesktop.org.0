Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF838CA25C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28FD110E5CB;
	Mon, 20 May 2024 18:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GIeUtIz2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319C110E572
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231509; x=1747767509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oD+36QNx9XCkQEzdxoYOUVbmzwv4RGXuSnfbVfyHGZE=;
 b=GIeUtIz20QRykDAoiAml4CIPlhEusGPOAv2XN+0aSTRzgTh1GHk6air3
 TP5AFxDBabrvZ8CuEedpHX1WgoTG/yV/lp9Af+M7HUh2rH9/MUvhDMEGd
 y8f9RIIAS2EaAqGYZgCCN2mdd0GBMF8730clqjCF2eJ/vsfIKbikZAhZ2
 ZD2Wwa6Yw9Bt33BGg5vdPrBJnvVZo/ah0Y1U3cf5tTWAnlSDzYQzX5hXw
 RkIBBTfdvL73GvtiClElnDEwFY2DLfck7QhyeQBGtTiL/r/vWTT6aV5Z0
 nMde8+AjUjQ7JkZtbjn9C4id+RXhNvfAmpl8AdaEBhkSAFqREutqXR9Gm w==;
X-CSE-ConnectionGUID: 2t/sgSbKTVOrUYtbm4KTvg==
X-CSE-MsgGUID: uBs2pSFfTZe6CbKIIvohJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218534"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218534"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:29 -0700
X-CSE-ConnectionGUID: twU8fjw7TFe38e/sBREqkw==
X-CSE-MsgGUID: /lbiinRlQt+snjhsWFnOtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213859"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 10/21] drm/i915/dp: Send a link training modeset-retry
 uevent to all MST connectors
Date: Mon, 20 May 2024 21:58:08 +0300
Message-ID: <20240520185822.3725844-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Send a modeset-retry uevent to all connectors in the same MST topology
after a link training failure and reduction of the link parameters. This
matches the way the same uevent is sent after a DP tunnel BW allocation
failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c               | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h               | 1 -
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 +++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1f0b7cceea2dc..87f9f12814b93 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2791,7 +2791,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 					intel_dp_is_uhbr(pipe_config);
 }
 
-void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
+static void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e7b47e7bcd98b..24777c035e2ad 100644
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
index 4f60daa97407d..97d499e4b6ef7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1187,10 +1187,11 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
+static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
+						     struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
@@ -1206,7 +1207,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 	}
 
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	intel_dp_queue_modeset_retry_work(intel_connector);
+	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
@@ -1517,7 +1518,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
+	intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state);
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
-- 
2.43.3

