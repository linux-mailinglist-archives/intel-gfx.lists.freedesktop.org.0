Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD84784B9D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 22:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA5D10E2C3;
	Tue, 22 Aug 2023 20:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0328410E2C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 20:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692737317; x=1724273317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZTs/ZxkQU/JnzgE7qeBNToGbhcyP+VXzhKo5s8SIaMA=;
 b=ktrKUfE7UFNHBfzmH0UP28gACFhvRdmUFMGs5IW5FmXD8RgnvezOi4uk
 dMi9zEt/JW62/YD/Zxm0UST4bpyO1k8Nc1svLKm7TPk0cC+dsJ8t/l/sc
 kHN0RZZbmoWril3ax80rJxktHoAJXmgpWGooHDlPxAxYWdbiOHD0ySibx
 hBaTPFhoRXYNAlH9Oyjifd5aeVgaqDkE7L7mBdv99xxlWm2x4OhDV5NA5
 GX1HPglA3Eu0WgmXbD57MYJlKhxnWHO5z1Cutvg/ekiiuLYOUIBlZ5x6E
 tTA08aaQuT8+bkwWCeKp7nguaaDmZ2QVgv2iU6nXU/lzCvLIJW4xVd9vA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404991147"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="404991147"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:48:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="910223870"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="910223870"
Received: from nnesher-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.213.152])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:48:34 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 23:48:17 +0300
Message-Id: <20230822204818.109742-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230822204818.109742-1-vinod.govindapillai@intel.com>
References: <20230822204818.109742-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/display: update
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

v1: fix the wrong port comparison (Jani Nikula)

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7067ee3a4bd3..6ec5f2dbb6db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2562,15 +2562,17 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
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
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
+	    !intel_dp_port_has_audio(i915, encoder->port))
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
@@ -2632,7 +2634,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 
 	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
+		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
-- 
2.34.1

