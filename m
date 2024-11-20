Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 608709D35CC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F6710E6C4;
	Wed, 20 Nov 2024 08:47:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TX8WRtOd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7A010E6C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732092472; x=1763628472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TbGOjjE6FUugnjkQf39hlFA2S9FtCHGEda+zoalSWng=;
 b=TX8WRtOduN09+hifQZDWJOtdWYkpqoblM9Sl3bAkKvYMWbMdgwezEmdt
 55FQw5ZwKBuIk4rOuqihLtlQT2+yZ549uv3Q9+0gd6tIojTBhvbVnTQMU
 rBfn168GW+cW6GWwmXnrVhD2RXw6h3DRO9Yd/aHl68XoLgUjeMTSHEJ8r
 8h8LerKRP+LCLAI5ttBen1YVv3sSwzoazl7a+ZuFG6DlbKYdmz8bXvmkw
 /IzX5jAqbidQaK+COpAoD/lpHLYH+FHLB5xz7aWYk9RNIsM3A5Rt2xQR1
 1f9F9j072G3W5N6pvyeZ1XQ3fuBZbWKGcQGZNNFf0FxiWFm1X5nH5WlRa Q==;
X-CSE-ConnectionGUID: Aaq3BmnDRqq4q8depUoy3w==
X-CSE-MsgGUID: FTHxsO6dTqyyaY89ifWrwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31887144"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31887144"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:47:52 -0800
X-CSE-ConnectionGUID: /Dhz1GU8Tyy4LQpMpGG9Pg==
X-CSE-MsgGUID: oGzcapl/QK+2Mpk7wT4quA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89956769"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 20 Nov 2024 00:47:50 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4 4/5] drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
Date: Wed, 20 Nov 2024 14:19:47 +0530
Message-ID: <20241120084948.1834306-5-mitulkumar.ajitkumar.golani@intel.com>
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

Compute as_sdp.vtotal based on minimum vtotal calculated
during vrr computation.

--v2:
 - make a separate patch and update to vmin only [Ankit].

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 306c00cab57e..e39ae59370c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2823,7 +2823,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr_divider = true;
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
-		as_sdp->vtotal = adjusted_mode->vtotal;
+		as_sdp->vtotal = crtc_state->vrr.vmin;
 		as_sdp->target_rr = 0;
 	}
 }
-- 
2.46.0

