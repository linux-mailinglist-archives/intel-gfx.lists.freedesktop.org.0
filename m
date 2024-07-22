Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DDA938B2D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC68B10E40C;
	Mon, 22 Jul 2024 08:26:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egS8/Fhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B8810E407
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636768; x=1753172768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96XA+DRg+SSThbpKpA1dJqjJlDkV968mycg+zkjWMZY=;
 b=egS8/FhvhQuHE2QW/Hl0h0mg8aBFv9LZFoBKJUTlGT3Gin4mKZDi2lo2
 oi9Q3bfppH852E1bn3aDYNwzXrm9Rwp2qgZQIaeYKi53iZastoQ+5fnVW
 I71Nu1Ao6TxJ3y+5roqFjju8xCOpp/1YXvAIGYf+c/FJ4gcb80/7dXvMm
 ckopnaB6Isbn8y7rCj0k/d/E09sv170L+StxvY/2sDEfqPWltl5rH7azx
 aNbSkTxKHo2XkE6nrg6zZUxReNA3kBGn/5H7sS4CUPgPFhYYY4ejvA5IE
 fmJbFCIR040Vuek0QjmVD6Ka0EKDx8mqhPhvJ3pWWzHJdNN1u+0afI69w A==;
X-CSE-ConnectionGUID: KG9HHBzsS66aHLPPpu6A9A==
X-CSE-MsgGUID: fAMBX2eeRzGKq2tDXxHLYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806931"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806931"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:08 -0700
X-CSE-ConnectionGUID: 6ZnT0dB7TEaMdF9J6w4kiA==
X-CSE-MsgGUID: LG5A/K3IRIiZ0Ik4cS2dmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752890"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/10] drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh
 rate
Date: Mon, 22 Jul 2024 13:56:58 +0530
Message-ID: <20240722082705.3635041-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
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

While running with fixed refresh rate and VRR timing generator set FAVT
mode (Fixed Vtotal) in DP Adaptive Sync SDP to intimate the panel
about Fixed refresh rate.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 59fc72b533de..9c632f569f62 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2633,6 +2633,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
+		if (crtc_state->vrr.fixed_rr)
+			as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		else
+			as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
-- 
2.45.2

