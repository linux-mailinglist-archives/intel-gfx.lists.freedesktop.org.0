Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B83C98AA55
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F9F10E552;
	Mon, 30 Sep 2024 16:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PG2iqgYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A6A10E552
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 16:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715215; x=1759251215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B7ym+qwa71FmdFWqeUfnQS7d0WxJcYDbYldYTk/sQOs=;
 b=PG2iqgYEjhXuH5/6Rx0SXaSADel4P0WqZ1zHhtipdIW12ZXIomLhIhi0
 QGtOygaaW+q9F6ib3qYF4lGyQrhdfzLrJ4Eok1WFX6v3wtEUfD65WMaDz
 OQlCkuNjKGHuw8+eJ/4SgDoG//2XY8UCmkyX8uDSRC/qNMrD5BvJFts2a
 GiX+xfE+JmiaKRTR0C8kl/mrJMq/o5adrUjwXpmY4/2wbhP/Ozv+LkxAw
 bzEWGI7HkqHG0vv0BhZ6/Pdre1qqSaELj0KWiC//XVjK0FBdB/Y0sSpvl
 8aLZA4Kk6UX6pdeXWXjsT0aAG5wAH9zae2wAq5V5Jb43Yh6QmsGnSJMLS Q==;
X-CSE-ConnectionGUID: maGlk7BYQ22cZTGwBKuFaw==
X-CSE-MsgGUID: HA3M6JM7RJ2imRgTxV+VRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26949228"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="26949228"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:53:34 -0700
X-CSE-ConnectionGUID: T/RGEsOlSeK1/YLFSS33Rg==
X-CSE-MsgGUID: 6O071mxxQsyNAwp0CZOkEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="78329621"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa004.jf.intel.com with ESMTP; 30 Sep 2024 09:53:33 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [RFC v2] drm/i915/vrr: Add AS_SDP to fastset
Date: Mon, 30 Sep 2024 22:25:03 +0530
Message-ID: <20240930165503.1034124-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
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

Enabling and disabling VRR should not trigger full modeset,
for this use vrr.flipline instead of vrr.enable while computing
Adaptive Sync SDP. This prevents VRR enable/disable to trigger full
modeset.

--v1:
- Explain commit message more clearly [Jani]
- Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7667931f9d9..2c0124aa56ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5472,7 +5472,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(drm);
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
 	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
-
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
 	PIPE_CONF_CHECK_X(joiner_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f2a2541c1091..4c0437af1520 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2712,7 +2712,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.flipline || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.46.0

