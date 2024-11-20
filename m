Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006109D3878
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E5410E6FC;
	Wed, 20 Nov 2024 10:35:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfAtZAmD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB49A10E6F4;
 Wed, 20 Nov 2024 10:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098932; x=1763634932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ijGPJEMQjVxjTGE1pjqZkKp9uTm5oSRokGoyl7/iTfc=;
 b=CfAtZAmD9wf78QFioS3FJZayXlWgJceXYfUcy0MsrD/WaMSGOvbOGfoX
 ZEIHsILH+Wqe7tUbMn0QUzsFQRquUtZjv2WM6mdWxFqOsbS1/xBBHEABj
 FTpW1COJ6EaLzfU8sSGvPm1zayXft7j4/h7WTISs3B/y2/zRQwsIOilPR
 0X+Kh0zJzydySkc75UW5dUpyg1BJPu/5UIQ22rT84SEz3dydLhIuhHb/i
 XAs/WpyGH+d+NzMGscRrYLcXAhqOGXsS99xq6Kvr2dWOS4zIn/cg4UxGf
 k4jiJvukQjLZ8lqICWI2Abj/crWkohBvpD6Ckz3BpMtwOzklkAmAwseFE g==;
X-CSE-ConnectionGUID: ytE5/SQVT0yrfzBEdZva6A==
X-CSE-MsgGUID: HOY4l1ZXTTamhTCiOP4JBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520052"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520052"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:31 -0800
X-CSE-ConnectionGUID: jHoj51FCT1qyhIrL3RhCVQ==
X-CSE-MsgGUID: cIbOJ7axQKS8qBc7904MwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674076"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 03/12] drm/i915/dp: Separate out helper for compute fec_enable
Date: Wed, 20 Nov 2024 16:07:53 +0530
Message-ID: <20241120103802.134295-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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
Drop the check for FEC support as its already checked while checking for
DSC support.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 30 +++++++++++++++++--------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dee15a05e7fd..d82e25d0dc5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2352,6 +2352,26 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static void intel_dp_compute_fec_config(struct intel_dp *intel_dp,
+					struct intel_crtc_state *pipe_config)
+{
+	if (pipe_config->fec_enable)
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
+	if (intel_dp_is_uhbr(pipe_config))
+		return;
+
+	pipe_config->fec_enable = true;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2368,15 +2388,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
+	intel_dp_compute_fec_config(intel_dp, pipe_config);
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
-- 
2.45.2

