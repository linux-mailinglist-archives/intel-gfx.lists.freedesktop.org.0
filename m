Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6097E3484
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 05:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D678B10E4A7;
	Tue,  7 Nov 2023 04:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0B810E4A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 04:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699331027; x=1730867027;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VW7PE8VzdCLsaJLoDNFngkDsz0UC+A16nE4+XsGNAuQ=;
 b=ZFS8ioBhDQ6MJhGrmlqqv/DWroHlpDwW7JLqZ/U1hWDF/dMP6TTgRPLv
 H6qJ1n/rY8T5Rc4zjJhuEiaQ6JWdYO2uRkDNwTarcc89PL4kem8naWwRx
 +UVHxDmj30sYByxjbKr/kDiDZsTwhpPhnCvLBUBnwjArYjKGito7nAHje
 Q6n8Twv/5jpzxM1dq0itYoiwf1qLmnRA3pnW99gNerXQEkGYUXxgVEG51
 R312nv8Q8azd2PNvKvp6CixFc3UpltNqoJNQH0ik2TnCBs9A5mqJAeNCG
 6xt9DzVfbiW0V499hfVz82AKcCeI2dSt+VfOb6RLtSnO3E5z4RmKo+9rE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="475667578"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="475667578"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="712435819"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="712435819"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:45 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 09:47:40 +0530
Message-Id: <20231107041740.3718419-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc if
 its too low for DSC
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

At the moment, while choosing the input bpc for DSC, we take into
account the max_requested_bpc property. This creates a problem, if the
max_requested_bpc is lower than the minimum bpc required by source with
DSC.

So consider max_requested_bpc if its within the limits that we can
support with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index abc718f1a878..ea4c42a5705e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1578,6 +1578,16 @@ u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 	return 12;
 }
 
+static int
+intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc, int src_dsc_min_bpc)
+{
+	/* Consider max_requested_bpc only if src can support it with DSC */
+	if (max_requested_bpc >= src_dsc_min_bpc)
+		return min(src_dsc_max_bpc, max_requested_bpc);
+
+	return src_dsc_max_bpc;
+}
+
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
@@ -1591,7 +1601,8 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc,
+						 intel_dp_dsc_min_src_input_bpc(i915));
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -1959,8 +1970,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 {
 	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(conn_state->max_requested_bpc,
+						 dsc_max_bpc, dsc_min_bpc);
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2020,14 +2034,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc, dsc_min_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
-- 
2.40.1

