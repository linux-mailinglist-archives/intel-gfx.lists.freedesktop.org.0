Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8279F4787
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B5110E8B0;
	Tue, 17 Dec 2024 09:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hB4DMywA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D205810E8B4;
 Tue, 17 Dec 2024 09:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427801; x=1765963801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0uwbHUcJFTRnWUWt12Zz5auPFy125119P01/Ps1C9ao=;
 b=hB4DMywAx77USR3Phsk+JK27L54zgxMyKZqeSDyzFFonxX8fV9fQYKJ5
 BQFLWCinG/pLwSy4o2+zepyg5AAkoMilgApP7+4HWGi36GA/b5qGNvkqy
 uDi8//jNwxn55SQYbm/AdwdfS6L2hsbCiFdJ6Js1dzle1GMrSMFf941+z
 npAXQT1kSwyydns1pCJQRDFwHbwwZopjRjknR29+k3pG0SBhvmniYZIkw
 DcKmOcx+U5M3bHuSrTtLp0tVCgSq2d3zhQscm4LPymxzc1Y9+IKtWVwKm
 bq7EMsarwyUQnD8VDMSDbOT3ZlmZuxMjdGXezL2JhEqHSwCDm0Gpa/8ko w==;
X-CSE-ConnectionGUID: GTrWAXu9RZ+kX0HfY0DiHQ==
X-CSE-MsgGUID: lmwJXOJ8QtWG4B1Q/Pt4CA==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976160"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976160"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:00 -0800
X-CSE-ConnectionGUID: BVmTjz+lR9WOBh4bXFPNug==
X-CSE-MsgGUID: gIPCKhwPQPOzFd6LPdfAWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052440"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:59 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 07/14] drm/i915/dp_mst: Use helpers to get dsc min/max input
 bpc
Date: Tue, 17 Dec 2024 15:02:37 +0530
Message-ID: <20241217093244.3938132-8-ankit.k.nautiyal@intel.com>
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

Use helpers for source min/max input bpc with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++--------
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f13680c4fb80..2435370b7a06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1783,7 +1783,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
@@ -2187,7 +2186,6 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
 }
 
-static
 int intel_dp_dsc_min_src_input_bpc(void)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 03dde9756bdc..07e8e6cba94d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -207,5 +207,7 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
+int intel_dp_dsc_min_src_input_bpc(void);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4217350eefb0..c9c4c8b960f1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -396,17 +396,14 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	u8 dsc_max_bpc;
+	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(display) >= 12)
-		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
-	else
-		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
-	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = limits->pipe.min_bpp;
+	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
+	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
-- 
2.45.2

