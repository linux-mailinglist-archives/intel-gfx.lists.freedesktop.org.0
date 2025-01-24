Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7D4A1B881
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AA110E99F;
	Fri, 24 Jan 2025 15:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4HwOO1P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B7710E9A2;
 Fri, 24 Jan 2025 15:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731504; x=1769267504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=puxO+z5IFdkeUgVuTW6UZfNw9/lwWZxV3LNbxFp0CkQ=;
 b=d4HwOO1PSxRnAeJ9Ab9TmYmx1Py2PHjjbnpqu931kl0XJankkMHcpnbr
 rxJuhH5bjSqQ7ar2l5YhfAhELeTRv2zWElFjDEtAPgJPtfECd1br3k6Ki
 bGNH9kSrMvpxhgiJlgTKJbhgPYfTmszQwZnvoGMY974u1rZ8kIZIbxjTl
 nnPrjDa1zzv2ieucW3iybvalIG8mAPFGmfpJeArkrmn+Q/6q43Pcz5vTl
 +OQsoQ8Pffl73QNK9KPxEjOzY32W6cI/K7fVPcMZHI/o1OKT/fwivtq/g
 xJsxP1TUOmsZMPEyoRBgv7tJumGLWfdZE7h5LZ6Dk9RyU0tFoiysKrkcJ g==;
X-CSE-ConnectionGUID: DXxDiPwnTnab2oa2jJcGwA==
X-CSE-MsgGUID: A/fqKYLdTcODyvj6s8rCdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177376"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:44 -0800
X-CSE-ConnectionGUID: i0vXUlkEQvy6SnMwhyajEQ==
X-CSE-MsgGUID: 1IiEnpWQRReFxakys27deg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221170"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/35] drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
Date: Fri, 24 Jan 2025 20:29:49 +0530
Message-ID: <20250124150020.2271747-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Compute as_sdp.vtotal based on minimum vtotal calculated
during vrr computation.

--v2:
 - make a separate patch and update to vmin only [Ankit].

--v3:
 - Update vtotal to vmin for cmrr case as well [Ankit].

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 591e4fa20c16..ddfc79b1ee10 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2834,15 +2834,14 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
+	as_sdp->vtotal = crtc_state->vrr.vmin;
 
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
2.45.2

