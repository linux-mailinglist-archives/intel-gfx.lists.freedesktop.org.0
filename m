Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55227A66C73
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BDB10E348;
	Tue, 18 Mar 2025 07:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="df1AVXnc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532B510E1FB;
 Tue, 18 Mar 2025 07:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284062; x=1773820062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tmvCnc9s58wM8BwoeBBwcUB3y48arWkHN/04vZDKAEQ=;
 b=df1AVXncr5wSwvi/4Vege5Cg/9DxUEJvSOcrDFIjPrxJV+dDfL42X2wD
 WyhonH3GzIN2uEodmm8SPz/AYhdKCQofmP2Wr2LgI0w+G+h3g8w83KybZ
 ffUTVoWT2PULxYaBLR4KKbf6C/PQsVMH3WkZPTRowJY1UiyOiKfsR8C9s
 DNhvO6N5E20BYP1oJiKXgUGtoeq4VxNUGMuxpTnpWbpgMJ6OabykYv1rS
 HOqxB1XKrMeEPOuVdgK1V22EzWP2GAQBsNk97MT4R7UELdqdbRw0OLRXx
 Sl2ij0xVcnARJs9cGqhTJl6Wt6eNzKvO5wIYI1goHVziQihJfMWD6odfR A==;
X-CSE-ConnectionGUID: 0LW2dkPWRbSkhjF+RF5E5A==
X-CSE-MsgGUID: xyIbrF2XQDicjmbUnuFXOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173771"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173771"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:42 -0700
X-CSE-ConnectionGUID: dfXwc6lTQrGvwd4t8tpx1w==
X-CSE-MsgGUID: tUbdJySYSkmIEFarfZeM8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681563"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/16] drm/i915/dp_mst: Use VRR Timing generator for DP MST
 for fixed_rr
Date: Tue, 18 Mar 2025 13:05:28 +0530
Message-ID: <20250318073540.2773890-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
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

Currently the variable timings are supported only for DP and eDP and not
for DP MST. Call intel_vrr_compute_config() for MST which will configure
fixed refresh rate timings irrespective of whether VRR is supported or
not. Since vrr_capable still doesn't have support for DP MST this will be
just treated as non VRR case and vrr.vmin/vmax/flipline will be all set
to adjusted_mode->crtc_vtotal.

This will help to move away from the legacy timing generator and
always use VRR timing generator by default.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 02f95108c637..bd47cf127b4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -52,6 +52,7 @@
 #include "intel_pfit.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 
 /*
@@ -710,6 +711,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
 	intel_ddi_compute_min_voltage_level(pipe_config);
-- 
2.45.2

