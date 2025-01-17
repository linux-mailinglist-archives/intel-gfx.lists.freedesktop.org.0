Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 517A0A14A49
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 08:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BE110EA75;
	Fri, 17 Jan 2025 07:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3lIBAuL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5375310EA74;
 Fri, 17 Jan 2025 07:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737099889; x=1768635889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+d7dAQzrB4HDCmoEdbrdxR6mOUtHN0NaEFVkKYTnD84=;
 b=k3lIBAuLjm4qQ++X+oJPdZkTj8sns8monIWTy1CEmazaHvf/5z1DRCgN
 4DgK2MdLe0JVdT30ih5PDk8wdlSDVz8BUinJYZUFQiV+/x8VUDJTURH8N
 9r2CFF9+Iu8a+ahbF0haH3KaoRYpFNq0M3J9UMDsrwudg7hOAUuQKLJoE
 9NzmuXzph8RPcHaNR13QVQmUY9aIDaHlE+4BhiCtv6mL74GYh1TxTplHi
 +p8khDb3gPt/FovmCtZgXKLx6R6sxS/zxtfL3V6vQamGjAHr09TULofys
 NHL5hgCAbm5PJYmkoHeFpgVK48Hnx4578dc7+0f4UocvtXsvNaTHND6vB g==;
X-CSE-ConnectionGUID: +pK4Gv+jSdynUjQ+2e5evQ==
X-CSE-MsgGUID: YaudtnTWQLmznk/PDswipA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41454728"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41454728"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 23:44:49 -0800
X-CSE-ConnectionGUID: FuqFHd/WS4+eqCBMPuzR6w==
X-CSE-MsgGUID: 38RP/FxNS4GncPElpPT8/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106618520"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 16 Jan 2025 23:44:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v7-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v7 5/7] drm/i915/scaler: Limit pipe scaler downscaling factors
 for YUV420
Date: Fri, 17 Jan 2025 13:11:22 +0530
Message-ID: <20250117074124.3965392-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
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

Limit downscaling to less than 1.5 (source/destination) in
the horizontal direction and 1.0 in the vertical direction,
When configured for Pipe YUV 420 encoding for port output.

Bspec: 50441, 7490, 69901
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 72344044d9d3..c9d7966b37ff 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -456,6 +456,16 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		calculate_max_scale(crtc, 0, *scaler_id,
 				    &max_hscale, &max_vscale);
 
+		/*
+		 * When configured for Pipe YUV 420 encoding for port output,
+		 * limit downscaling to less than 1.5 (source/destination) in
+		 * the horizontal direction and 1.0 in the vertical direction.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+			max_hscale = 0x18000 - 1;
+			max_vscale = 0x10000;
+		}
+
 		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
 					      0, max_hscale);
 		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
-- 
2.48.1

