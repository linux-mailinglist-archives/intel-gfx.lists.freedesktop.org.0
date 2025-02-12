Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A947A3206C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD72F10E7F0;
	Wed, 12 Feb 2025 07:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8snHR78";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19FED10E7DC;
 Wed, 12 Feb 2025 07:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347088; x=1770883088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TQeO2EsJFGCpBQjWma/PjUiCvB8zU7gbR+XAEc3U+M8=;
 b=h8snHR78as4fmqIrCI+POZY7WHJ2unjWXrK5uBoId8x3Iy+EHNSDilVG
 jEyeUgI0WySJ9xCrno/Wz7N3dMzXN5iZ4t4VxVtbfqgFi0j3bbzKSlifN
 aeorpo5UfXuUyDFuROn8hM6DKnhN+1TomwBsotBIE6hi2Gj119isaFhpx
 PJnLqJaM0YHM2P1xqvSi177a8x7gK4fiCfIf4XXtYRG6qb+GHGqOs6/zk
 IcgEFRyxdPboIntyEaFMPT/nkUDYx5dH22B5ZLadnbXofuwxCeFtwbHD/
 +utuPSnoTu7j5XVUmQvF1yApVrPbjZ6/8NLV4KenE0TE9Ee7tCoZkZdKW g==;
X-CSE-ConnectionGUID: uIFf7Ch1QyC0YzG3ElB8+w==
X-CSE-MsgGUID: O3gVjvV1RfOqjKgpqL4Q9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973639"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973639"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:08 -0800
X-CSE-ConnectionGUID: G0EGiO6xR8Oqj/K9JkBG1Q==
X-CSE-MsgGUID: DR0wTMAfRaGuA1Cr4kHiSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836929"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v7 09/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Wed, 12 Feb 2025 09:57:38 +0200
Message-ID: <20250212075742.995022-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We have different approach on how flip is considered being complete. We are
waiting for vblank on DSB and generate interrupt when it happens and this
interrupt is considered as indication of completion -> we definitely do not
want to skip vblank wait.

Also not skipping scanline wait shouldn't cause any problems if we are in
DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
we are not in DEEP_SLEEP evasion works same way as without PSR.

v2: add comment explaining why we are not setting DSB_SKIP_WAITS_EN

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2f2812c23972..30782ab0b908 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -164,17 +164,26 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
+/*
+ * Bspec suggests that we should always set DSB_SKIP_WAITS_EN. We have approach
+ * different from what is explained in Bspec on how flip is considered being
+ * complete. We are waiting for vblank in DSB and generate interrupt when it
+ * happens and this interrupt is considered as indication of completion -> we
+ * definitely do not want to skip vblank wait. We also have concern what comes
+ * to skipping vblank evasion. I.e. arming registers are latched before we have
+ * managed writing them. Due to these reasons we are not setting
+ * DSB_SKIP_WAITS_EN.
+ */
 static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_SKIP_WAITS_EN |
-			DSB_CTRL_WAIT_SAFE_WINDOW |
+		return DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
 	else
-		return DSB_SKIP_WAITS_EN;
+		return 0;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

