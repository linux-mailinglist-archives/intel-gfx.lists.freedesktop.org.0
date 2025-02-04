Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255FDA27611
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 16:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9760010E69B;
	Tue,  4 Feb 2025 15:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJU7OMHj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D51410E69B;
 Tue,  4 Feb 2025 15:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738683444; x=1770219444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sdZcClBITbXtP7lcJhpf/sK2aHommAuD9xVTxI5M194=;
 b=cJU7OMHjVQj7ReKDLPWxNuMduXu34THxTk7OeU+UmsIAc7b+SxBoaio7
 O/2WBsyT3tTN+G7xtdc17u+x2+mR647uDSC8zIUQRLHpyewi3ESSiHZRB
 5SuBL+i6PJiESWbkrqJdUMHG95FVIROTNjAIDO0mFSDP2eu8IsWIkgMb/
 oVFj3a/1pKg9x71SGSSOfkFsdLijgD2WBYdYv2JQZpsToFmf52Xso8cXm
 LIBZgTWGNsD/yKIZW88ggzCAeGrEiC2nRL92HBZRxtccILiM7g+IXYG8e
 aKYe0GraQD77j5/SGYPzDQThGrVGsE4bn3KDuZsqXeuicl0t+/ajk91eN A==;
X-CSE-ConnectionGUID: lNaVSm2dQVm4wWvXDxJZ3g==
X-CSE-MsgGUID: QeIuvy2DT9Sf8MQACHk/6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39118171"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39118171"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:37:23 -0800
X-CSE-ConnectionGUID: xl5rmTd9RJG7RlYpMaOwyQ==
X-CSE-MsgGUID: TbfJnzM0S0K0SLbsbu0K/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110796295"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:37:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/mst: fix INT_MAX to .4 fixed point conversion mistake
Date: Tue,  4 Feb 2025 17:37:17 +0200
Message-Id: <20250204153717.2996923-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

intel_dp_mtp_tu_compute_config() conversion to use .4 fixed point didn't
take into account that intel_dp_mst_max_dpt_bpp() may return INT_MAX
when the transport limitation is not relevant. Converting INT_MAX to .4
fixed point results in -1.0, which then gets used as if it were a real
max BPP value:

i915 0000:00:02.0: [drm:intel_dp_mtp_tu_compute_config [i915]] Limiting bpp to max DPT bpp (24.0000 -> -1.0000)
i915 0000:00:02.0: [drm:intel_dp_mtp_tu_compute_config [i915]] Looking for slots in range min bpp 18.0000 max bpp -1.0000

Just return 0 for "no max DPT BPP", and handle it explicitly.

Fixes: 67782bf6e8a6 ("drm/i915/mst: Convert intel_dp_mtp_tu_compute_config() to .4 format")
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b729e27cdde2..95abc6ea85eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -111,7 +111,7 @@ static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 		&crtc_state->hw.adjusted_mode;
 
 	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(display) >= 20 || !dsc)
-		return INT_MAX;
+		return 0;
 
 	/*
 	 * DSC->DPT interface width:
@@ -248,7 +248,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 	}
 
 	max_dpt_bpp_x16 = fxp_q4_from_int(intel_dp_mst_max_dpt_bpp(crtc_state, dsc));
-	if (max_bpp_x16 > max_dpt_bpp_x16) {
+	if (max_dpt_bpp_x16 && max_bpp_x16 > max_dpt_bpp_x16) {
 		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (" FXP_Q4_FMT " -> " FXP_Q4_FMT ")\n",
 			    FXP_Q4_ARGS(max_bpp_x16), FXP_Q4_ARGS(max_dpt_bpp_x16));
 		max_bpp_x16 = max_dpt_bpp_x16;
-- 
2.39.5

