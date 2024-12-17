Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD659F4785
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BF910E8AF;
	Tue, 17 Dec 2024 09:30:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="faHkOv9P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C997910E8A3;
 Tue, 17 Dec 2024 09:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427793; x=1765963793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+eNbZgN4+H9I0jJCSfMf7I3JJihHK5srNFVdvJS8ySY=;
 b=faHkOv9PSIHx7m4IqOAFJDER8HPt7J01jIMMza2fC+prJprWgmhKIEKe
 rUsOPnm27sLmjt3puQHjf1l+RIB38Li9WPEIlglHQJButhIjbo6Styawn
 wU7+sCE/wmsn7Q3yB/ruvTS70eEu4MtwNfzTWwBFXrnpB74S8nTY+ccPt
 4pKP2iPmrW4jTMwVfKvCBc2ULXbEOwn3UvRCH0Jsu3Z2KVYAI6NX5CgNd
 Hv6PgpF9LLBMIuErVtnzYpqxMEIxvLOyFe41xjcWI4fWjl46mD7krzFIX
 efG90oRxUy83d6hR2rB8YXbbapbcPCVlu03YrxKs0lBDUHmBhZim1EIuq g==;
X-CSE-ConnectionGUID: MeXDhpj9TieJx0LLx0eEZQ==
X-CSE-MsgGUID: H20cdPhmT2+f2EebJOmY3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976130"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976130"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:52 -0800
X-CSE-ConnectionGUID: bG+t+a7sRSqEmMB41LJ+Hw==
X-CSE-MsgGUID: 6yD3kT7sSdeXvklPi0nctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052416"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:51 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 03/14] drm/i915/dp: Separate out helper for compute fec_enable
Date: Tue, 17 Dec 2024 15:02:33 +0530
Message-ID: <20241217093244.3938132-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 ++++++++++++++++++-------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dd2da9facaad..674297ac6315 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2350,6 +2350,30 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2365,15 +2389,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

