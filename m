Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15EB8FDF82
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 09:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D3110E858;
	Thu,  6 Jun 2024 07:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YipWIOJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF4C110E858
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 07:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717658673; x=1749194673;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G6pQuzRMe6cSkU6EJddgKarHuT8fDTULuN9yIrU+sug=;
 b=YipWIOJoOvfNMU9KvHqiHkToF+LMYJI2tg/hqOlJeDIuvLXOoFI55iDu
 sLjA/uxXPMrp45do1VnFG3W0LNT9ljjE3x8cr5VKTRS+r47QmUFzVjzyA
 M3BmLj3690Rho83S8QIB84R2JXSdH7gSXypqOEopqRQjKO5sRsHcH5U7T
 2jEtwG/p36X+yUt6ZSQGOC8u0dLHmqW5YI0g1Wn5MVHM+kntsnVu9pNm8
 OITgOelqNwZChEQmz+uJnG2g1PuIx9UnfmP0O1pO6WirKitcT84Qg10z1
 5Hzw/7k4gJJdI5Ek8ZmCkxlS864CnlyaEZokXglKd+rPtppExjKKHTsFW Q==;
X-CSE-ConnectionGUID: HywEAlQsR9iMG7tcVChHPQ==
X-CSE-MsgGUID: 8BeOyeh0R5GboyKFwJI5NQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="25417875"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="25417875"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 00:24:32 -0700
X-CSE-ConnectionGUID: ipwxIRF5QhS30sf6EYBR+A==
X-CSE-MsgGUID: z2a2Tf0hSjKdS0s9DRu7uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="42970560"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orviesa004.jf.intel.com with ESMTP; 06 Jun 2024 00:24:31 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH] drm/xe/xe2lpm: Fixup Wa_14020756599
Date: Thu,  6 Jun 2024 12:54:59 +0530
Message-Id: <20240606072459.982249-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
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

In the current situation, Media 2000 is along with xe2_lpg,
thus WA is already covered.

https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2016

Fixes: 131328aa5699 ("drm/xe/xe2lpm: Add permanent Wa_14020756599")
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/xe/xe_rtp.c |  5 -----
 drivers/gpu/drm/xe/xe_rtp.h | 14 --------------
 drivers/gpu/drm/xe/xe_wa.c  | 13 ++++++-------
 3 files changed, 6 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_rtp.c b/drivers/gpu/drm/xe/xe_rtp.c
index 01c32a932780..eff1c9c2f5cc 100644
--- a/drivers/gpu/drm/xe/xe_rtp.c
+++ b/drivers/gpu/drm/xe/xe_rtp.c
@@ -324,8 +324,3 @@ bool xe_rtp_match_first_gslice_fused_off(const struct xe_gt *gt,
 	return dss >= dss_per_gslice;
 }
 
-bool xe_rtp_match_when_media2000(const struct xe_gt *gt,
-				 const struct xe_hw_engine *hwe)
-{
-	return (gt_to_xe(gt))->info.media_verx100 == 2000;
-}
diff --git a/drivers/gpu/drm/xe/xe_rtp.h b/drivers/gpu/drm/xe/xe_rtp.h
index a32645f5f80b..337b1ef1959c 100644
--- a/drivers/gpu/drm/xe/xe_rtp.h
+++ b/drivers/gpu/drm/xe/xe_rtp.h
@@ -427,18 +427,4 @@ bool xe_rtp_match_first_render_or_compute(const struct xe_gt *gt,
 bool xe_rtp_match_first_gslice_fused_off(const struct xe_gt *gt,
 					 const struct xe_hw_engine *hwe);
 
-/*
- * xe_rtp_match_when_media2000 - Match when media GT version 2000
- *
- * @gt: GT structure
- * @hwe: Engine instance
- *
- * Its one of the case where we need to apply workaround on primary GT
- * based on if media GT version 2000 is present. Thus this API will help
- * us to match media version 2000.
- *
- * Returns: true if media GT version 2000, false otherwise.
- */
-bool xe_rtp_match_when_media2000(const struct xe_gt *gt,
-				 const struct xe_hw_engine *hwe);
 #endif
diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
index 26b170a0cdc7..ce6f1b0ca808 100644
--- a/drivers/gpu/drm/xe/xe_wa.c
+++ b/drivers/gpu/drm/xe/xe_wa.c
@@ -677,6 +677,12 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
 		       ENGINE_CLASS(RENDER)),
 	  XE_RTP_ACTIONS(SET(CHICKEN_RASTER_2, TBIMR_FAST_CLIP))
 	},
+	/* This WA is also needed on primary GT when the media version is 2000.
+	 * In the current situation, Media 2000 is along with xe2_lpg, thus WA
+	 * is already covered below. In the future, Media version 2000 can be
+	 * used with some other graphics version where WA still needs to be
+	 * implemented.
+	 */
 	{ XE_RTP_NAME("14020756599"),
 	  XE_RTP_RULES(GRAPHICS_VERSION(2004), ENGINE_CLASS(RENDER)),
 	  XE_RTP_ACTIONS(SET(WM_CHICKEN3, HIZ_PLANE_COMPRESSION_DIS))
@@ -705,13 +711,6 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
 			     DIS_AUTOSTRIP))
 	},
 
-	/* Xe2_LPM */
-
-	{ XE_RTP_NAME("14020756599"),
-	  XE_RTP_RULES(ENGINE_CLASS(RENDER), FUNC(xe_rtp_match_when_media2000)),
-	  XE_RTP_ACTIONS(SET(WM_CHICKEN3, HIZ_PLANE_COMPRESSION_DIS))
-	},
-
 	{}
 };
 
-- 
2.25.1

