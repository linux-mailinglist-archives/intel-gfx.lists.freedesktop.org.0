Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124B7A1375F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 11:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDCE10E924;
	Thu, 16 Jan 2025 10:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VWzz7H2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22C5110E929;
 Thu, 16 Jan 2025 10:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737021936; x=1768557936;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GSZs3f1TK0H7I2GHxtCVH4mC6qc1waZwcj++Ih4tnvc=;
 b=VWzz7H2bivkDRo/upHuTpJVCwrNzOKqLoIj3YRbeZ9K5blcQJG6b0GZu
 u6idrzq9RZzjgaAmsW4dfTkw10Y+6yUPuQ2uBK3SI5CA1TQVjl4nNByxs
 LL/fI/kaRBzTvGQ8UJtzAwTUY+IlsaEI/xm4b6Chorea59+MGdN28r/oB
 uSfGKyBv7DRmUcz2ZVFcQOWxIQ5eLdPSqRxq+01SW7CceNEGtif8B4gtf
 zW5ldEjCinoQARSUpsVh2uOTWKHO9cN7eyXRq96GWHuAfe6gAhH968Ejq
 E9jWwXnjvS258LwiCB96YBwVzB+Jdh208kUYPQ9W5vceMBsZirVgGEB4Z A==;
X-CSE-ConnectionGUID: TtKiKipWSFq37Bn5kWZ2aQ==
X-CSE-MsgGUID: 8vE5ZUajR8GOWEx3ylnF5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="41334878"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="41334878"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 02:05:36 -0800
X-CSE-ConnectionGUID: 6mAMG/OpRIeI1seuLLWJDA==
X-CSE-MsgGUID: +3y4PeTqRsKveP3WBFYw3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="110412880"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 02:05:34 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp: Correct max compressed bpp bounds by using link
 bpp
Date: Thu, 16 Jan 2025 15:24:16 +0530
Message-ID: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

While setting the bounds for compressed bpp we ensure that the
compressed bpp is less than the pipe bpp.

This gives an issue with 420 output format where effective link bpp is
half that of the pipe bpp. Therefore instead of pipe bpp use link bpp to
set the bounds for the compressed bpp.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1ad25c37f3c2..47fcfbcb893b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2068,9 +2068,12 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 			    int timeslots)
 {
 	int i, ret;
+	int link_bpp;
+
+	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
+	dsc_max_bpp = min(dsc_max_bpp, link_bpp - 1);
 
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
 		if (valid_dsc_bpp[i] < dsc_min_bpp)
@@ -2113,6 +2116,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
 	u16 compressed_bppx16;
 	u8 bppx16_step;
+	int link_bpp;
 	int ret;
 
 	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
@@ -2120,8 +2124,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	else
 		bppx16_step = 16 / bppx16_incr;
 
+	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
+
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
+	dsc_max_bpp = min(dsc_max_bpp << 4, (link_bpp << 4) - bppx16_step);
 	dsc_min_bpp = dsc_min_bpp << 4;
 
 	for (compressed_bppx16 = dsc_max_bpp;
-- 
2.45.2

