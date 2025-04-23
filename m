Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40C5A9874A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6077810E67E;
	Wed, 23 Apr 2025 10:27:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MH6LxGra";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B4C10E67E;
 Wed, 23 Apr 2025 10:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745404040; x=1776940040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LSlsKTYcVFQLSkRL6RPkfZlHVthWJbnyE1eS/IQ0YSY=;
 b=MH6LxGraZzwi39H3T2plRVLHNJdubbPMszqsSfGxVao0qP9G+gSLcFc9
 jqlkx/6oDngy5XNQWptnYwpwWqpSgGUbt6ER36mc05QRJ8RdAss+itEOg
 XfDmeX+iC79U6azUnzc04R4Aa5TkqnmBlIWmUIWVwlFbvOfJpTq9VEgcA
 ScWGeaGWH2bWl1aJJ7ehO4sWJb9kQxYLZwduyYOptzT9+hro0FeVPADk/
 ga7d0t6yqkRTpQtvNjx8QhnrBuTTwjjEfGHd1NqV+wutIWyi22B7hRs8n
 ZXGrsfKPWwrBxhAMhIXPD6AO7ODSrehy88mpfaul9bOZjRyVPdS1N7eYD Q==;
X-CSE-ConnectionGUID: +Gk8pCtITl2/MK7d4AvA9A==
X-CSE-MsgGUID: q/GXpyBnQqmqPA5czL4Adw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46225793"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46225793"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:27:19 -0700
X-CSE-ConnectionGUID: crW1cNnkR16cA4c4AN+CyA==
X-CSE-MsgGUID: pOeF4hYXRDO0BHwRNnsEYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137269115"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.227])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:27:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/2] drm/i915/psr: Move PSR workaround to intel_psr.c
Date: Wed, 23 Apr 2025 13:27:04 +0300
Message-ID: <20250423102704.1368310-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423102704.1368310-1-jouni.hogander@intel.com>
References: <20250423102704.1368310-1-jouni.hogander@intel.com>
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

Logical place for PSR workaround needing vblank delay is in
intel_psr_min_vblank_delay. Move it there.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ------------
 drivers/gpu/drm/i915/display/intel_psr.c     | 11 ++++++++++-
 2 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7b35fc13d7c8..c931e76c2fa11 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2402,14 +2402,6 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
-		IS_DISPLAY_VER(display, 13, 14);
-}
-
 static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2418,10 +2410,6 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 	if (!HAS_DSB(display))
 		return 0;
 
-	/* Wa_14015401596 */
-	if (intel_crtc_needs_wa_14015401596(crtc_state))
-		vblank_delay = max(vblank_delay, 1);
-
 	vblank_delay = max(vblank_delay, intel_psr_min_vblank_delay(crtc_state));
 
 	return vblank_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1058134422bcf..ca91c7033714c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -48,6 +48,7 @@
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
 #include "intel_vblank.h"
+#include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -2395,7 +2396,15 @@ int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (!crtc_state->has_psr || DISPLAY_VER(display) < 20)
+	if (!crtc_state->has_psr)
+		return 0;
+
+	/* Wa_14015401596 */
+	if (intel_vrr_possible(crtc_state) && IS_DISPLAY_VER(display, 13, 14))
+		return 1;
+
+	/* Rest is for SRD_STATUS needed on LunarLake and onwards */
+	if (DISPLAY_VER(display) < 20)
 		return 0;
 
 	/*
-- 
2.43.0

