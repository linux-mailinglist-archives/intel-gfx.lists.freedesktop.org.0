Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A73D995F25
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 07:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2B710E643;
	Wed,  9 Oct 2024 05:43:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KF2n6mjQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 257E210E326;
 Wed,  9 Oct 2024 05:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728452607; x=1759988607;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vCC+1tfgIswX/6LKeFpmmUvPGJWTp4lpHahGNWDvdL0=;
 b=KF2n6mjQMmA/Evlkufc9hmxfDgQt9P3DNoE0qPr5rcC9JbAPHUZ2V1Yt
 FgYoTyEzSs18H/KDdg/bYWs+juNROYoS86nh8MYCBN/OJFKnDba+44ia9
 0Y/+WRPhiEYw4s+Y8eZdGdTjXmSC9Xc+jXbc5R5zGNNiRg4DQK+q/aKFi
 slFboFTMLD/dvDkIiFgJbVwDoqbz15VvkP0jmzt15cS8qJJn7rmFSwWu7
 4ZKQXJ8vkih2DTCA99b3FdKUbv5TBUzWXYnAPUgmUAyCRjK1bCkhBy3wm
 T1q1wXNM/tryetHY8NL0PxeWDMeTc+2tWHWYI6Rgp1PVt2nKL4RHL7w3p Q==;
X-CSE-ConnectionGUID: SJUu3tVvTJm06+Vc5JOvow==
X-CSE-MsgGUID: ydsglvmlQ4+roDPeXZ0DUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="53132107"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="53132107"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 22:43:16 -0700
X-CSE-ConnectionGUID: nboL0o4nSg6e8kN009OpqA==
X-CSE-MsgGUID: szNuYzwRSr6ZaxOWaI8osw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76004469"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 08 Oct 2024 22:43:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
Date: Wed,  9 Oct 2024 11:10:50 +0530
Message-ID: <20241009054050.1796088-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Fix the DSC flag assignment based on the dsc_slice_count returned
to avoid divide by zero error.

Fixes: 4e0837a8d00a ("drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c1..bacd294d6bb6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -105,11 +105,16 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	if (dsc) {
 		int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
 
-		flags |= DRM_DP_BW_OVERHEAD_DSC;
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
 							       num_joined_pipes);
+		/*
+		 * Try with dsc only if dsc_slice_count has a sane value i.e value is no
+		 * 0
+		 */
+		if (dsc_slice_count)
+			flags |= DRM_DP_BW_OVERHEAD_DSC;
 	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
-- 
2.43.2

