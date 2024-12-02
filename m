Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2589DF905
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DB810E2FF;
	Mon,  2 Dec 2024 02:43:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z0lk4dXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9654610E2EF;
 Mon,  2 Dec 2024 02:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107415; x=1764643415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wVm8u9SOgxTbsfpRWgAtTC0ZSKVQJ8wJO/iLf7Y5uC0=;
 b=Z0lk4dXST5mC+ko/GsL5jvC8uO0NwoRG30w8f9MZJj9jADMqkfIv7MIJ
 Q9PeVxDikWr6mGkYMCUXMTzO0f41hcpFVX7YM8BAf4hKOrlB7WUnADE0i
 OYcdDPIpGPWPGW2e2WUes70/vJze7qhLMPL9XFMwsgZbPM2p3iq8+vRJ6
 YVx/ZlsIVO/QCdczso4zqadLDHD2Y5NLBpAz1pyNGevdkj9co2O69Pt6X
 l4msTBrpPGW4nkh6jfNaNYSrHyVvgRdCEKAZRk/2dda4KiRtb0cNgQKTM
 qE8B0459xdDRaAVboALsvKl1lqDVY8xu1iq4ycaAscxjcniVy01QjHIPC w==;
X-CSE-ConnectionGUID: 1h6Rluk6Rjyom37qmYIaoA==
X-CSE-MsgGUID: BaDD2lXmSE2Dn6+3PeOSRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634851"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634851"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:35 -0800
X-CSE-ConnectionGUID: +9HydJW4TOSWXq3edh1Wug==
X-CSE-MsgGUID: hiv0rkzGQAWITb8meJ2olA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878199"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:33 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 3/6] drm/i915/dp: fix the Adaptive sync Operation mode for
 SDP
Date: Mon,  2 Dec 2024 08:15:37 +0530
Message-ID: <20241202024540.2578856-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Currently we support Adaptive sync operation mode with dynamic frame
rate, but instead the operation mode with fixed rate is set.
This was initially set correctly in the earlier version of changes but
later got changed, while defining a macro for the same.

Fixes: a5bd5991cb8a ("drm/i915/display: Compute AS SDP parameters")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 053a9a4182e7..306c00cab57e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2812,7 +2812,6 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
 
-	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
@@ -2823,7 +2822,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
-		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
 	}
-- 
2.46.0

