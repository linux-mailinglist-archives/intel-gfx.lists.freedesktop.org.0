Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B48E5A23DE6
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692B610EA92;
	Fri, 31 Jan 2025 12:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyL0NOej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BFD10E086;
 Fri, 31 Jan 2025 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327833; x=1769863833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TfIo486Cpc5xIsQbo1/pbfZser2wB0+c4Ks2AOiE8/s=;
 b=HyL0NOej8n/gX+X0vkMgDHzCRz//9rv0QlZEHlk3ZIhNIMY3SAXyw8/o
 zuiLiFaKHvopoALCpDnR/QA8L41rng5270afgWNzxHKjsCJJrf/fO4+3n
 lMe2u2V5oi2GYIiwMQ9oNYq1mAY53wydpv7Y0xFH0acat2QOLPQxp3oVO
 CdtEqoCBR+9EC296AFKE4yV1K21Xe4UydEwh8MXwf+5fCppybvck6ND2l
 2UWV0Ot7VoMdpgI1g8KoKj6h98+ePYci2TlUBY2AkD/7YNY2w/KSlGyJW
 zzcC2WQ3OMpLQFwXJf6yeDlkP3XHIcg4Jmh+DRhFrDl8XhQwL7sYkpPsD w==;
X-CSE-ConnectionGUID: rX2o5J/AQxSwtLtcKbZPmw==
X-CSE-MsgGUID: wMwdLne+T0S4kGnY4g/vPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599490"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599490"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:33 -0800
X-CSE-ConnectionGUID: VxHEaCLaQoOppG7GnBtQHw==
X-CSE-MsgGUID: WH1SzbbDTtKhixwpU7cxMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114616966"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 03/14] drm/i915/dp: Rename some variables in
 xelpd_dsc_compute_link_config()
Date: Fri, 31 Jan 2025 14:49:56 +0200
Message-Id: <91dd6ef53683b624a978101cca7322ea3e5e2f7b.1738327620.git.jani.nikula@intel.com>
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

Use the _x16 suffix for all .4 fixed point variables. Drop compressed_
prefix, as it's implied from the precision suffix.

As dsc_min_bpp and dsc_max_bpp change domain from int to .4 in the
middle of the function, they remain the same for now.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a7a5bb2075da..02d1a5453b46 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2126,31 +2126,28 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
-	u16 compressed_bppx16;
-	u8 bppx16_step;
+	int bpp_x16, bpp_step_x16;
 	int ret;
 
-	bppx16_step = intel_dp_dsc_bpp_step_x16(connector);
+	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bppx16_step);
+	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bpp_step_x16);
 	dsc_min_bpp = dsc_min_bpp << 4;
 
-	for (compressed_bppx16 = dsc_max_bpp;
-	     compressed_bppx16 >= dsc_min_bpp;
-	     compressed_bppx16 -= bppx16_step) {
+	for (bpp_x16 = dsc_max_bpp; bpp_x16 >= dsc_min_bpp; bpp_x16 -= bpp_step_x16) {
 		if (intel_dp->force_dsc_fractional_bpp_en &&
-		    !fxp_q4_to_frac(compressed_bppx16))
+		    !fxp_q4_to_frac(bpp_x16))
 			continue;
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-					      compressed_bppx16,
+					      bpp_x16,
 					      timeslots);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp_x16 = compressed_bppx16;
+			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
 			if (intel_dp->force_dsc_fractional_bpp_en &&
-			    fxp_q4_to_frac(compressed_bppx16))
+			    fxp_q4_to_frac(bpp_x16))
 				drm_dbg_kms(display->drm,
 					    "Forcing DSC fractional bpp\n");
 
-- 
2.39.5

