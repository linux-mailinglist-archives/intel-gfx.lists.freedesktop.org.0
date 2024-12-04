Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2B59E366D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973CE10EC86;
	Wed,  4 Dec 2024 09:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewa55tDs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2689A10EC83;
 Wed,  4 Dec 2024 09:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304241; x=1764840241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WiT7gZUPzG3qHCMLaW4F1N5Z+6uu1TXZdwfXFWz2zdo=;
 b=ewa55tDsu4YT9Gqul5HxG1Rb9KA1D4lxdP7as6zIGDCl9QeQVnmoUBUM
 MPUkAMiuTj89AtAV68Zk4Pxf3X+Cd6IXUisUJjAl6mDIwscD2jQtvPBxW
 p/WsAtSnG7ZuF1viTRFziTw9LCr0nuQxWliR+b8pUlWZwElsR4RQ4i/J/
 hxxqc98pA4LWqcin0YU/wHlaX4ASj1h87oydrfn21fWOU0QVYeVZXaRW6
 9T/q2NHxwO+GBu3n7NQ7N8gh/g0CSvuPCKc6S+pHgzk5+BESngtwoPPVS
 AEBMiPJuSejfNFdMtMP0vhGAsEEpv+1SiB1M2bG4rtIRFIHMnl1Yy5HFe g==;
X-CSE-ConnectionGUID: IMRiqg/cR8erT0Oza+0coA==
X-CSE-MsgGUID: QZ2Z8iR0SdOsu3yRJRTy1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038455"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038455"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:01 -0800
X-CSE-ConnectionGUID: Ebx5RY0HSOuaVCE5R9f0dQ==
X-CSE-MsgGUID: 4giliTbPRMuBgX5J5JH1yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555097"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:59 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 03/14] drm/i915/dp: Separate out helper for compute fec_enable
Date: Wed,  4 Dec 2024 14:56:31 +0530
Message-ID: <20241204092642.1835807-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

Make a separate function for setting fec_enable in crtc_state.

v2: Rename helper to align with encoder->compute_config() callback
and other minor fixes. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 ++++++++++++++++++-------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4291aa4f4ab4..ccc495842518 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2344,6 +2344,30 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
+					const struct intel_connector *connector,
+					struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->fec_enable)
+		return;
+
+	/*
+	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
+	 * Since, FEC is a bandwidth overhead, continue to not enable it for
+	 * eDP. Until, there is a good reason to do so.
+	 */
+	if (intel_dp_is_edp(intel_dp))
+		return;
+
+	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
+		return;
+
+	if (intel_dp_is_uhbr(crtc_state))
+		return;
+
+	crtc_state->fec_enable = true;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2360,15 +2384,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int ret;
 
-	/*
-	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
-	 * Since, FEC is a bandwidth overhead, continue to not enable it for
-	 * eDP. Until, there is a good reason to do so.
-	 */
-	pipe_config->fec_enable = pipe_config->fec_enable ||
-		(!intel_dp_is_edp(intel_dp) &&
-		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
-		 !intel_dp_is_uhbr(pipe_config));
+	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
-- 
2.45.2

