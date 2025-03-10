Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FE0A59461
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FEF510E42D;
	Mon, 10 Mar 2025 12:28:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jnSKeVaX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5FA10E43B;
 Mon, 10 Mar 2025 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609713; x=1773145713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tmvCnc9s58wM8BwoeBBwcUB3y48arWkHN/04vZDKAEQ=;
 b=jnSKeVaXUBN+waQW5BtXT5fzbKjMSxwFrsdiovWjoJMm/6nbXc6//gVh
 UyQ+wC6RxEPcVcCtRjqherBseWg5H05OtMFII2pqIFR7WSK6PB9eLh2Ii
 9RPSUNrd0kRhP87ITvsd+sz6ZWk7r+UurOIujL8V3OyiBDcO8wS6NZoj2
 kT/gJSuyEdmXyXLhSSZU/JpZ+vg3/JsboOf5T9mqBgnPu6HZwCKTzuSmy
 GVe0esdIEq5LgBeEp/Vpz2V1+qjfgP+mePX6Pv4zUFuD2sjgXzXbkbG/A
 osLFXlupHKfS+3CwQZcfSuhcg0QV2jTq1n25FaJA9OyFqqN4CePk/JH70 Q==;
X-CSE-ConnectionGUID: JshYOy7CQsuClfYb1NfEGw==
X-CSE-MsgGUID: 3oPUvC/mT0e36K5RpsegGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057294"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057294"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:33 -0700
X-CSE-ConnectionGUID: BCs8hAwURnice29aF2NWvA==
X-CSE-MsgGUID: pEfOutT1QcWkeFzcb6VY4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180543"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/21] drm/i915/dp_mst: Use VRR Timing generator for DP MST
 for fixed_rr
Date: Mon, 10 Mar 2025 17:46:04 +0530
Message-ID: <20250310121615.1077079-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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

