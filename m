Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6129AA00A16
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098C510E8D1;
	Fri,  3 Jan 2025 13:53:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtgEatE/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED7E10E8CB;
 Fri,  3 Jan 2025 13:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912416; x=1767448416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2mK/tHYkngKXNJPfOyx8ja+UksowTUSQVITQlHfoD/4=;
 b=CtgEatE/Nh1uYuHRT5XYmyV3Z9OoC3EaZMUEluylblTItf7ZHRpS8YBX
 K58v3ceIf/pXhV165rW+wDEVP6W9P5XI8TxAzmvI2B4DEUA5u/qg24ZH7
 exTmZHUQl8m5+bsKImJW5XI8mPqQtwRRac8VLQS+BLA19UvDpnTW8rYI0
 dxM2zMxL6M2rii6VB3tRki4RxRyBc7qLsqolKwgUnmniUVCdj4vUt6aMw
 vm8vZ9NWO3MCRdu1F+F7AxOTTgF+skJGRU1WEOWm5dS9v147+jr1mhbHp
 qOtcOkN0BaatoECs19MPhqkI3JPArlYSpymngRqesaKoASO2P+alQ4y7b A==;
X-CSE-ConnectionGUID: nuntV65OTnqG+Hxw8OHfIg==
X-CSE-MsgGUID: dHZczxEyRySpg3tWIJQvgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040297"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040297"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:36 -0800
X-CSE-ConnectionGUID: gSaFe2qWQ9ewh8g0oNMnTg==
X-CSE-MsgGUID: I/0WeD5aTzuoOQEQcPIkuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105852019"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 10/16] drm/i915/ddi: write payload for 128b/132b SST
Date: Fri,  3 Jan 2025 15:52:33 +0200
Message-Id: <f27aefb555e1edcf94aea8f78021afb04faf8f33.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

Write the payload allocation table for 128b/132b SST. Use VCPID 1 and
start from slot 0, with dp_m_n.tu slots.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet. Indeed, we don't yet compute TU for 128b/132b SST.

v2: Handle drm_dp_dpcd_write_payload() failures (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 80a76c1c2727..4bd35509ff7b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2575,6 +2575,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	int ret;
 
 	intel_dp_set_link_params(intel_dp,
 				 crtc_state->port_clock,
@@ -2669,6 +2670,14 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	/* 7.a 128b/132b SST. */
+	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
+		ret = drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
+		if (ret < 0)
+			intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	}
+
 	if (!is_mst)
 		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
@@ -2682,6 +2691,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	int ret;
 
 	intel_dp_set_link_params(intel_dp,
 				 crtc_state->port_clock,
@@ -2808,6 +2818,13 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 7.l Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
+		ret = drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
+		if (ret < 0)
+			intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	}
+
 	if (!is_mst)
 		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
-- 
2.39.5

