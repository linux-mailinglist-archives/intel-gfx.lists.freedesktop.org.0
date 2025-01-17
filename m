Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B117A14920
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 06:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1097310EA4E;
	Fri, 17 Jan 2025 05:18:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+YzsuDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C2010EA4E;
 Fri, 17 Jan 2025 05:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737091111; x=1768627111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ytAgTvNOX7ouxRU6hzJATf6e5YrhIiozfA2CT0SfFG8=;
 b=k+YzsuDzoBQx+EyRTOmJfJiAe0cmiVdbm9XMYK2BzcvYVm8BlrvxoMVd
 SxUG3GaMDDnePaDr8t+RHBUv4fnpz8b1joF8cCWma5ELh9IAfOp0MSsnQ
 jVEyQo558oL+XgKFDKf3PdyrCMKpI7t5S+VLlUijsyNjHzUxo+SeMvR0A
 eqX83ZuOUpVF2VT5JIaK5L46j1RQtkkkp8uN69pkB62B649s/04kFIiZG
 oZl0zQHJ96kWuRTgeX0hjwZoI2z2r8Vdhgu7vdFr0DDzmuwaQklgC1o3H
 GyQMRD+tF/jhytjZr0HzgPrkC9kK0nhfQZ3ijmeC3aHaMjeKGwpmllOTm g==;
X-CSE-ConnectionGUID: l6QislPcQ0uIKNq0+5vYPw==
X-CSE-MsgGUID: AV78Vi5HRV2wrdgiI++T6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48930097"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="48930097"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 21:18:31 -0800
X-CSE-ConnectionGUID: R+QqfdAcT66MXq/28hg0Ug==
X-CSE-MsgGUID: BMURu18OT1qx7tsp4DsHMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105546910"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 21:18:29 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/dp: Correct max compressed bpp bounds by using
 link bpp
Date: Fri, 17 Jan 2025 10:37:13 +0530
Message-ID: <20250117050713.152012-1-ankit.k.nautiyal@intel.com>
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

While setting the bounds for compressed bpp, we ensure that the
compressed bpp is less than the pipe bpp.

This causes an issue with the 420 output format, where the effective
link bpp (or output bpp) is half that of the pipe bpp. Therefore instead
of using pipe bpp, use the output bpp to set the bounds for the
compressed bpp.

v2: Use identifier output_bpp instead of link_bpp (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1ad25c37f3c2..f390216824cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2068,9 +2068,10 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 			    int timeslots)
 {
 	int i, ret;
+	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
+	dsc_max_bpp = min(dsc_max_bpp, output_bpp - 1);
 
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
 		if (valid_dsc_bpp[i] < dsc_min_bpp)
@@ -2111,6 +2112,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
+	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	u16 compressed_bppx16;
 	u8 bppx16_step;
 	int ret;
@@ -2121,7 +2123,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 		bppx16_step = 16 / bppx16_incr;
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
+	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bppx16_step);
 	dsc_min_bpp = dsc_min_bpp << 4;
 
 	for (compressed_bppx16 = dsc_max_bpp;
-- 
2.45.2

