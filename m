Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B979C3A8A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D6910E45F;
	Mon, 11 Nov 2024 09:10:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k/I3Fjbg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702F910E461;
 Mon, 11 Nov 2024 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316231; x=1762852231;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B9L9SyYG8kbeEP1Q1NwWHGu10sbF2NwyVC4f8Pica+Y=;
 b=k/I3FjbgnPjIfOUgD5jsTOIF/TgWeKX3wHdz/I4If3uUMIbVIC3MLvAN
 N0L54Sllg95dmlEimtLcVB+3b6Tc5Vll20EzwSc+NAxN+PRses348kR2u
 UiJhnPmkIjKcrcrcbvZjb0dF5jOCo6upAf+r6uSr4Oess3MUDm8k0nVNm
 F35JkH6L9Z/LzHXMs3RBILSxbXu+zHy8r8RFpF3uQJy1IMuzJTaGi+RJr
 LX8BCMUs6Pdckoat3XZpVZ+ibQtvu69oYRpMFRsPMvLyGgMJMgJxnaNF1
 CYkt2Eyf5kVgz7x3iwvBb+MdQPI5xfJj2p3eOiiKwrWQLjDEOGGuKO2Xc w==;
X-CSE-ConnectionGUID: 2aNGibu9SVuGmGIPGviTBA==
X-CSE-MsgGUID: b3Odde7lT3ylcNPC8QrU2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052417"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052417"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:30 -0800
X-CSE-ConnectionGUID: WZ1c2BcnStWnunPIlz0QsQ==
X-CSE-MsgGUID: WZCuMVD7SUa7Vti8dolVEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762705"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/23] drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh
 rate
Date: Mon, 11 Nov 2024 14:42:16 +0530
Message-ID: <20241111091221.2992818-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 73fe2e8dd1f3..7e7cc208cbaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2814,7 +2814,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
-		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
+		if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_FIXED_RR)
+			as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		else
+			as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
 	}
-- 
2.45.2

