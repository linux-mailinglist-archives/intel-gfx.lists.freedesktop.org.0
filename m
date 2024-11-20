Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B72F89D35CB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1F310E6D4;
	Wed, 20 Nov 2024 08:47:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PB+yTIu6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AD6010E6D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732092470; x=1763628470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wVm8u9SOgxTbsfpRWgAtTC0ZSKVQJ8wJO/iLf7Y5uC0=;
 b=PB+yTIu6usK0qcbIP/Jig7cWt53N7b8xL8AJVw0YT8b7uw1AOZYGrO6s
 CZwaHgyVWBNDxilQ2SQSGf2QwHTKFUzj65enROj1Ur/6bnTvtCE5BMp1/
 J3cqmzegLq0hJp/P5uC1PasemoJwhmdHgzSQ6GGX0M58LWyVt6Ya8FJ9o
 3fexDDbzQsJc8mhXdltqozp4R0hLBLQme29ZSZ6EDITxrtwj3/2DpMD/f
 5+01De0t8rqoB3WHbsBNPKJwcAg8cGlRspwhX8ERp4fVnVujE1lphWUcx
 A3ZxMvwvNjWnLrbvwSRM+DReJ0lMnDt2hW3QyI1iWLJiE28ek8duBIYfA g==;
X-CSE-ConnectionGUID: te5P8Z5aRmejhXMIvXoWaA==
X-CSE-MsgGUID: S+huqKCnQ6ahDiAgJ1mPzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31887143"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31887143"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:47:50 -0800
X-CSE-ConnectionGUID: eZpPI9jcRTW8LCcPSix5nA==
X-CSE-MsgGUID: WbuMGBEMQYimHcdxI+Yb/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89956760"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 20 Nov 2024 00:47:48 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4 3/5] drm/i915/dp: fix the Adaptive sync Operation mode for
 SDP
Date: Wed, 20 Nov 2024 14:19:46 +0530
Message-ID: <20241120084948.1834306-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
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

