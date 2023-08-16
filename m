Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED3477DDC1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6817C10E317;
	Wed, 16 Aug 2023 09:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D56110E317
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692179417; x=1723715417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ysamd/PGa3vrkTbLcAehbxWEyLnYXetb6lNyPt+xtU8=;
 b=RSclPRY/qQ/k2taOHfRrILL/sH4mIJzxOR3UXlJ2yqPI62Ok9v2b10nd
 Evsww7CPLgx8GzQj4QBaNq99bH+ueRA3vAiGY9fh3x9rlkF4cylfKhjif
 Y4/VCP7GTlMqq+AznXo0lNSohYGHzaiUSSyGKXDnGEbas77XOEnjWQgWj
 i1D4i5Rj9VfQqp/LpHG2loqKDBytTKU19QcN8m8rUVCyWjhycnnP5b0Is
 WiPHXUxwW7ce1ccTS6nxgUanq0qfA/69RlKKnEgHVhZEJlRtEE++UggQS
 Skq8oN/9nSNg9MwzJoCkwZTt2cUMTfyiNH+3quvSGM3ZZK8dIb458HclG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357464218"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="357464218"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="737234503"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="737234503"
Received: from mpietras-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.172])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:50:15 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 12:49:55 +0300
Message-Id: <20230816094956.487498-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230816094956.487498-1-vinod.govindapillai@intel.com>
References: <20230816094956.487498-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/display: update
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

