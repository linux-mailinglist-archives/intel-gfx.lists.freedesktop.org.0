Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D92DFA29FCF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 05:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C4810E224;
	Thu,  6 Feb 2025 04:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uv+8o4Ob";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999EB10E224;
 Thu,  6 Feb 2025 04:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738817584; x=1770353584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GpBmNdHMzsthwtCeqL7Trvc77apM22k7onzD7Ruh1mw=;
 b=Uv+8o4Ob5HbG+Aqabr7YtVTSBjhHnlCndNuL2KDC1kfXoDTJgchzOeRX
 Hlh+2CcU34WiUzsWHoAEL3bU7sfLLXhmNncet+KboUVvlUJptOjSW7SHG
 WRIQXtWto4rcVvM5UztASzQ25xlIiU76EjMCAe9G7MP+LKnrNFXb5BM5h
 26j/bBdVlOxgTYBNI1c3DN0/Xn4LSxpemibEFlm4mdCFdyKwekZQQvl7C
 UwRL5BzQ71rhJVa76FegUhywICpBGF/trI3Y7f1+cAXxTzjoGakx4Oyui
 qg+K5fRXqqYxMVuyW4Sfdazk3Vf5qgj4tBAiJTCUpqbjedmgD+45VfQEN A==;
X-CSE-ConnectionGUID: X57zcPxkQmOuA+prRcLrdg==
X-CSE-MsgGUID: 8C09xKTlR5OAnJ5Co1utrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39677260"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="39677260"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 20:53:03 -0800
X-CSE-ConnectionGUID: Ej9mgzzZSDatQ9bTBGVwlw==
X-CSE-MsgGUID: LEYMP5flSjm+OtLjijNH4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="116091793"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa004.jf.intel.com with ESMTP; 05 Feb 2025 20:53:02 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v3 2/2] Revert "drm/i915/dp: Compute as_sdp based on if vrr
 possible"
Date: Thu,  6 Feb 2025 10:20:01 +0530
Message-ID: <20250206045001.2919360-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
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

This reverts commit 08277aa5d5a44befd71717de35b956f55e1e8401.

Compute AS SDP params only when VRR is enabled to maintain
PSR exclusivity.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cd53070d7ea2..f7bd6946910d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2817,7 +2817,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.48.1

