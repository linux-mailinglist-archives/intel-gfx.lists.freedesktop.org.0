Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6DA777EBF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 19:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1ECC10E5C5;
	Thu, 10 Aug 2023 17:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D9B10E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 17:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691687078; x=1723223078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jOeR7Mvmpp94NWSiX0JTF919tiaRHdRa8qvmVMDuM0g=;
 b=jgAZVAlCxOrrl1LbEJzUg7r1sM0vyt7YpNLxWttdGXrm7JAM1wqHd9n7
 S1v57BzApLG/zHMUTPooeg1tYg6+yatnWOOMhrSYpBUPZTjVlapyRMNBh
 mz3wGKTCX3ukv9ppVU9/PI5rz5f6fYtqdFU1amujOdJMRZxGCV68xlm8F
 cbkxOal9OD3C3yPWNq6QGhOGkMlMhAoPBvQdeM6g3/WRRENCex/QC+VzM
 d8nnFTf8t6H3sizpKkaO+9BQfF45QYXw9DdcH1qSUEnFakFnV+mVsHU5e
 8DECwyf873tUv4faEbSxnXI3qBwhupwB1ii6C8w27mvAUQVsns2N9/jZx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="435358662"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="435358662"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 10:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="735489082"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="735489082"
Received: from xudongf-mobl.amr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.50.242])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 10:04:00 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 20:03:41 +0300
Message-Id: <20230810170341.268503-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810170341.268503-1-vinod.govindapillai@intel.com>
References: <20230810170341.268503-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: configure SDP split for
 DP MST
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the SDP split configuration for the DP-MST

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..e718ef22dee6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -312,6 +312,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
+	bool dp_mst_has_audio = intel_dp_mst_has_audio(conn_state);
 	struct link_config_limits limits;
 	int ret;
 
@@ -322,10 +323,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	pipe_config->has_audio =
-		intel_dp_mst_has_audio(conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	/*
 	 * for MST we always configure max link bw - the spec doesn't
 	 * seem to suggest we should do otherwise.
@@ -388,6 +385,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state,
+				      dp_mst_has_audio);
+
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
 	return 0;
@@ -792,6 +792,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
 			     FECSTALL_DIS_DPTSTREAM_DPTTG);
 
+	/* Enable/Disable DP2.0 SDP split config before transcoder */
+	intel_audio_sdp_split_update(pipe_config);
+
 	intel_enable_transcoder(pipe_config);
 
 	intel_crtc_vblank_on(pipe_config);
-- 
2.34.1

