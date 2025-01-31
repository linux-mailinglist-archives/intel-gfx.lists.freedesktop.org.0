Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281DEA23DEE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C600210EA93;
	Fri, 31 Jan 2025 12:50:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFpAVL4c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD2AD10EA9A;
 Fri, 31 Jan 2025 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327859; x=1769863859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S7VwjnPLg8VR0niyUQUdrQf2W1aLa4VjFvIJJoKJ7CI=;
 b=TFpAVL4cHDTZOoYdO/mMEAPhiUzJjfuDF9GvOHIr4dJrLBLAmuxesNMD
 pf2+1fAW2VTuHcpRrc9FarSLtSBha7RaZWMtudxjUf23+QUfHjmDvUws0
 YQTjwKpQc14/c0m+LfFw+FbhlOyV67/5K1HQZIgWjQEwfKmPJ6w6Exig5
 XZ+JcEOxHz8pXTywfEh4GFpVooq4sT4TEVIgvLH8c/akCPini/TIYS43j
 af+ifdjkaHdLuFsfl9WtFnCcld/UYlUqUMyFiAyNucCTTOBCrzT+Gvbdd
 0cxApfIAQpGJZWWfrapmyGvb0eHHWDk/XGBL2YWotQjVkcz3RepXdROir g==;
X-CSE-ConnectionGUID: xeag6GpuRfSn4G2WVc5j0Q==
X-CSE-MsgGUID: BzDEy0D2QhSEgMdoai03tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599530"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599530"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:59 -0800
X-CSE-ConnectionGUID: KzIcuXUWRXe/UKH9ev3+Wg==
X-CSE-MsgGUID: N/38TzSHT8Wsh7Gre57uOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114617063"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 08/14] drm/i915/dp: Unify DSC link config functions
Date: Fri, 31 Jan 2025 14:50:01 +0200
Message-Id: <ca41ebb287fc51e1257d3c2b2790edf2cd661ab3.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
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

{icl,xelpd}_dsc_compute_link_config() are now effectively the same, and
can be unified to a single platform independent function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 +++----------------------
 1 file changed, 5 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c7de9efcd740..11a1ac28e21e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2094,47 +2094,11 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
 }
 
 /*
- * From a list of valid compressed bpps try different compressed bpp and find a
- * suitable link configuration that can support it.
+ * Find the max compressed BPP we can find a link configuration for. The BPPs to
+ * try depend on the source (platform) and sink.
  */
 static int
-icl_dsc_compute_link_config(struct intel_dp *intel_dp,
-			    struct intel_crtc_state *pipe_config,
-			    const struct link_config_limits *limits,
-			    int min_bpp_x16,
-			    int max_bpp_x16,
-			    int bpp_step_x16,
-			    int timeslots)
-{
-	int bpp_x16;
-	int ret;
-
-	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
-		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
-			continue;
-
-		ret = dsc_compute_link_config(intel_dp,
-					      pipe_config,
-					      limits,
-					      bpp_x16,
-					      timeslots);
-		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
-			return 0;
-		}
-	}
-
-	return -EINVAL;
-}
-
-/*
- * From XE_LPD onwards we supports compression bpps in steps of 1 up to
- * uncompressed bpp-1. So we start from max compressed bpp and see if any
- * link configuration is able to support that compressed bpp, if not we
- * step down and check for lower compressed bpp.
- */
-static int
-xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
+do_dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *pipe_config,
 			      const struct link_config_limits *limits,
 			      int min_bpp_x16,
@@ -2201,11 +2165,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
-	if (DISPLAY_VER(display) >= 13)
-		return xelpd_dsc_compute_link_config(intel_dp, pipe_config, limits,
-						     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
-	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
-					   min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
+	return do_dsc_compute_compressed_bpp(intel_dp, pipe_config, limits,
+					     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
 }
 
 int intel_dp_dsc_min_src_input_bpc(void)
-- 
2.39.5

