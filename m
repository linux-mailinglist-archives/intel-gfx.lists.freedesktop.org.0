Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0F1A22869
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 06:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E817710E243;
	Thu, 30 Jan 2025 05:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMSfmasg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5663910E8E3;
 Thu, 30 Jan 2025 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738214362; x=1769750362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DxAOlWmuigpmyRQVK6XRDvPHTpUb1saBQtgYMYbdjSo=;
 b=KMSfmasgqoYarwqGjdyYbYaADHvHKUinsnbqCvps2/Lf0JsRioSI5cy6
 jcGB1Ea3YFJjavsPxRjLUX76OQtR3v0P/EEdZm3GaUK6u5NrTTMxgwFD7
 TpYX91NDBKNnccbrNUj0BqA75my9omFz/Dv+Cv/7N4p8Ema+8Oi+fkfbU
 DFaVBa5fu55vLpdGON5rE+qGjSp6D50QqUYFBoDcU88wb6V0Ybbjivgs4
 yWeC+c2ezBSCcx27wYngbkOkFY0IFlqkV9t+yffDgoQxYAyfTGrdDe7JD
 V58uuvrT6lPz6/WGXFkuPFk1uhs4z62vklIqzTW6ZwUSJSFwAvo0BtCiD w==;
X-CSE-ConnectionGUID: 5AijHuyBRvWS+5Ae577SBQ==
X-CSE-MsgGUID: 5m/G3WOYSIK9VbkZyJzDaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="50133482"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="50133482"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 21:19:22 -0800
X-CSE-ConnectionGUID: 1aoNjQxvR7WY+k+YGEbldQ==
X-CSE-MsgGUID: R/Ee8q8xSIegoijQxirpgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="109060357"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 29 Jan 2025 21:19:20 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v6 4/6] drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
Date: Thu, 30 Jan 2025 10:46:07 +0530
Message-ID: <20250130051609.1796524-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute as_sdp.vtotal based on minimum vtotal calculated
during vrr computation.

--v2:
 - make a separate patch and update to vmin only [Ankit].

--v3:
 - Update vtotal to vmin for cmrr case as well [Ankit].

--v4:
 - update vtotal with wrapper function of vmin [Ville]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 591e4fa20c16..f876dbeb6121 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2834,15 +2834,14 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
+	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
 
 	if (crtc_state->cmrr.enable) {
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
-		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
-		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
 	}
 }
-- 
2.48.1

