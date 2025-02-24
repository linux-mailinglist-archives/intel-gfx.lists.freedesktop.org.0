Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A73F8A4216D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E04A10E44D;
	Mon, 24 Feb 2025 13:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mqNAQTEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598FC10E140;
 Mon, 24 Feb 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378593; x=1771914593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tbG4fS6UB52IWIJJ4Z5oLbdFM9tXTqlgu6aJO2vyAoQ=;
 b=mqNAQTEEzHecoNKGIBrZlacFFrE5LNF1IB0nk+SuVZh4V8Vakm0QOKfk
 yrRhbYODDx9R46KQvupexjW2Fac9criJheZW2kaJOv6siTZnT59CPr4yc
 EVXUiZcIKwg/VwgSYeOzHK+X0rjxTQKjfgPFjZcNS/kOcynXD2m0FMOT9
 wucIowUOZFm3zoNuA5hY3yoZPjGrVVrurlA6cUPiATeRMGPdNNSFj6xw0
 anEREYqigbcDbxBrboEvfh8YAvSmxCZ9CPmjFeGL12lw+FVnIW4RzLUkA
 znqrX5O/PWj2UEAe4DF32fK2Bx3goMEqvGnBWDUWJVvIvaTYgOaV0GYMV Q==;
X-CSE-ConnectionGUID: Dug9+HsQRtq6rZseOJkaxg==
X-CSE-MsgGUID: tSRg1uNLRhSW3sLOaBaAEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719672"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719672"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:52 -0800
X-CSE-ConnectionGUID: esZPiuIdTk+UAXGfce29Dw==
X-CSE-MsgGUID: g63XJDvmQa2j0EppsQ2k6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076554"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/20] drm/i915/dp_mst: Use VRR Timing generator for DP MST
Date: Mon, 24 Feb 2025 11:47:07 +0530
Message-ID: <20250224061717.1095226-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

Configure VRR timing generator for DP MST for fixed refresh rate.
Currently the variable timings are supported only for DP and eDP and not
for DP MST. Call intel_vrr_compute_config for MST which will configure
fixed refresh rate timings irrespective of whether VRR is supported or
not.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 167e4a70ab12..2c4a9ac6f61e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -51,6 +51,7 @@
 #include "intel_link_bw.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 
 /*
@@ -709,6 +710,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
 	intel_ddi_compute_min_voltage_level(pipe_config);
-- 
2.45.2

