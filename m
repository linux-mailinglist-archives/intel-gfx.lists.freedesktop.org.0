Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A07914218
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A1210E353;
	Mon, 24 Jun 2024 05:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tp90qVwK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C46110E350
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207349; x=1750743349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pCzb9Z6zUWvuIISGhuSplK8QR/IPjH69fQctDV54z1M=;
 b=Tp90qVwK+51QzeSBrLkm965rONBVe3hD41Y3xI6Hll/he9A0TwTG5yMU
 BiVmk1v2087EJXZv4YluKlPNFegoPOXoYj36TT/rmnDs7KCRyKSB/xcpE
 A7C8x0Zg+1gUsj5C9p9sApwg3C8W4ekmDmymG22AhKUsYwXVEU4tsvQW7
 xowdhz5He7RU9RzUg625AWVO6H+So87CGHkv0TmlgAKqPzqeWnStEcamn
 fAjlqx8mCb0EsjW7rJwuaDQgPqpm4ufIk8Cfrr/s54E+xcL1n0yq5xIjh
 PTbvXtQTY4wvfSvGxGXAuzvUV0SP5L+PIRHFDah1qfEPfc1Q2FE47xyjm Q==;
X-CSE-ConnectionGUID: r/qF1GlxSwigomQlAscPag==
X-CSE-MsgGUID: cl765MRURrqZ+OgOsvjFow==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567248"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567248"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:48 -0700
X-CSE-ConnectionGUID: hSFQ328+TfCL+5HXYYMcJw==
X-CSE-MsgGUID: lfdhgaTYQCqt4H8BHuQzbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994215"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 6/9] drm/i915/vrr: Compute vrr vsync if platforms support it
Date: Mon, 24 Jun 2024 11:05:57 +0530
Message-Id: <20240624053600.3803116-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
References: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
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

Previously, TRANS_VRR_VSYNC was exclusively used for panels with
adaptive-sync SDP support in VRR scenarios. However, to drive fixed refresh
rates using the VRR Timing generator, we now need to program
TRANS_VRR_VSYNC regardless of adaptive sync SDP support. Therefore, let's
remove the adaptive sync SDP check and program TRANS_VRR_VSYNC for
platforms where VRR timing generator is used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a771706d80df..ae9bea854282 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp_as_sdp_supported(intel_dp) &&
-	    crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(i915) && crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.40.1

