Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF7A23DF1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA0010E086;
	Fri, 31 Jan 2025 12:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DPX65tr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7E010E086;
 Fri, 31 Jan 2025 12:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327869; x=1769863869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5nEASzEiS+B3WeRq+oU4nlssjzv1zVblzDBVW5NNICo=;
 b=DPX65tr4Jkiw3t08G7BJi179qHRjtDSDssbpqrebys9X1gc4PvBm0V6m
 hcP/0ReYuYLYltV+tqEFmAuFbuJSY+FNvH44llSnCfhFmPaBJBjnaNxT+
 nlS+mWlxop/gsqOGj3sHBXLi6ST9r2E8SVofEE92qFEJujLeXeAVsnbvZ
 By4ED6A4G5ond7ymbX6Qe+iHkQ3GFA9qAvlXcco61yHlY4Uue70jE+yzk
 LNVnGZqxsrLQNkMQWj/BYEQxt06AjWlV9T80ABrd+7OF+ue5j9MAVhO58
 JBi1+rEopbMK8iabsP1wgtcXsbHDXKm4DCMvjFfPO0nObQsZ8KPOeiZFj Q==;
X-CSE-ConnectionGUID: QSrYSCgvSB+0q7uBbnj9mA==
X-CSE-MsgGUID: +jevktTdTdukAIcQTVUuLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="42645180"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="42645180"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:09 -0800
X-CSE-ConnectionGUID: 2oscXlUGQWODo0+d9oUuDg==
X-CSE-MsgGUID: bqbmNO1bR7q4d8Nivyqpsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110194437"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 10/14] drm/i915/dp: Simplify input BPP checks in
 intel_dp_dsc_compute_pipe_bpp()
Date: Fri, 31 Jan 2025 14:50:03 +0200
Message-Id: <5559b14d6af4e001677f23454d6bd8b3606b3d7a.1738327620.git.jani.nikula@intel.com>
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

Drop the extra local variables and simplify the conditions. We don't
have to try to special case the loop condition and break in the validity
checks.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 185c9f7e8538..7a8a4df1bf1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2202,8 +2202,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 {
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	int dsc_max_bpp;
-	int dsc_min_bpp;
 	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
 	int num_bpc, i, ret;
@@ -2219,9 +2217,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpp = limits->pipe.max_bpp;
-	dsc_min_bpp = limits->pipe.min_bpp;
-
 	/*
 	 * Get the maximum DSC bpc that will be supported by any valid
 	 * link configuration and compressed bpp.
@@ -2229,10 +2224,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd, dsc_bpc);
 	for (i = 0; i < num_bpc; i++) {
 		pipe_bpp = dsc_bpc[i] * 3;
-		if (pipe_bpp < dsc_min_bpp)
-			break;
-		if (pipe_bpp > dsc_max_bpp)
+		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
 			continue;
+
 		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
 						 limits, pipe_bpp, timeslots);
 		if (ret == 0) {
-- 
2.39.5

