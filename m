Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 143FB780AF1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 13:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B33610E4F7;
	Fri, 18 Aug 2023 11:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F7B10E4F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692357613; x=1723893613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ysamd/PGa3vrkTbLcAehbxWEyLnYXetb6lNyPt+xtU8=;
 b=ViFWuFA5zcf80lCFE14SeM1ch8DQOc97eekW2KhY+7fKiHJCuYN6gkCS
 EZowA6fx13HCjskASvJXFMge+Eoiw73bR42OzGwpbwwoad/fZNk5VCD9h
 v3GnkN0e9NuvF+aePn5mPadpRl4ZFTgzr++DzoSkd7z4d5/5wf2bcJ6e/
 YaOE9ADJpUVEqlpXqhu24FlFbEmq+6WoqI3MVFHr43Hk9UCGJr+kM0nOE
 495Zm/GylGYTCO9bS0fVJNVG4YrKJfF/rsNUMqlJxlPLIpSb/nVaKxCsT
 XFVTLy33IDZ/1DKLU+Db44kSkNRZRGSQTxvHCoPbZ12nVvNzf5k3suxpn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370538220"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370538220"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728579592"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728579592"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:12 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 14:19:49 +0300
Message-Id: <20230818111950.128992-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230818111950.128992-1-vinod.govindapillai@intel.com>
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/display: update
 intel_dp_has_audio to support MST
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

Modify intel_dp_has_audio to handle DP-MST as well.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 67c06bbc1760..0ee9b9e05c26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2171,15 +2171,17 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 }
 
 static bool intel_dp_has_audio(struct intel_encoder *encoder,
+			       struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_connector *connector = intel_dp->attached_connector;
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 
-	if (!intel_dp_port_has_audio(i915, encoder->port))
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
+	    !intel_dp_port_has_audio(i915, encoder->port))
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
@@ -2241,7 +2243,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 
 	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
+		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
-- 
2.34.1

