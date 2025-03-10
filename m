Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F249EA5946C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853C910E442;
	Mon, 10 Mar 2025 12:28:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fPjcwfej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D38B010E43E;
 Mon, 10 Mar 2025 12:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609725; x=1773145725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e3sZC2NO8aGLKwKXsLBL0DAXNbrP0MyJxSCDaRDWz+E=;
 b=fPjcwfejb6fOPa362LLBz/gKtwWIFWS5A5Ithb5swOEibxqw9Pz1Bf4X
 3aunot2cO87ZzJEhxEkQVy27laP/I9VXyCG+c1WoPLbe+/+yUMHHRo2CH
 Z/tm+D2494rWNeK845QVgMQ0qGDWoi1FgNioEQ4iNox50WhbNNKSKrxO9
 TxLoyX9VOGAE9W+/Bknd7pHmXbFpOiy0Ya2uRJLg9/TmRP3VJn+koVl9y
 pyd9Mk9BhK0dAnKBvs3w/+lVTwq0+E7NmTsy4rfKa5g0p2JiSu8tJnxNr
 Q0gyycLZMU9XLQaCToOIOdcuWUyTSVTbvdJ0exFIM1jPP0rJhv6gJ/HMz w==;
X-CSE-ConnectionGUID: Ar9DJpGgSTmxo+yRxvFY9Q==
X-CSE-MsgGUID: YCrpMrQwR0uwUHqG7+vEkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057317"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057317"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:45 -0700
X-CSE-ConnectionGUID: BFU55RztQz2MxRaz8PUXsA==
X-CSE-MsgGUID: 8yv0FNELT7y2PdJ+wTIlZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180579"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/21] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Date: Mon, 10 Mar 2025 17:46:10 +0530
Message-ID: <20250310121615.1077079-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

For fixed refresh rate use fixed timings for all platforms that support
VRR. For this add checks to avoid computing and reading VRR for
platforms that do not support VRR.

v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
v3: Avoid redundant statements in vrr_{compute/get}_config. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index cefdf1900e43..2ebbd610c15d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -351,6 +351,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
+	if (!HAS_VRR(display))
+		return;
+
 	/*
 	 * FIXME all joined pipes share the same transcoder.
 	 * Need to account for that during VRR toggle/push/etc.
@@ -374,15 +377,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		vmax = vmin;
 	}
 
-	if (vmin >= vmax)
-		return;
-
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.vmax = vmax;
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
-- 
2.45.2

