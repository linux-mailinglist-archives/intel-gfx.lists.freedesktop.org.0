Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE77B01748
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 11:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 807B310E9EC;
	Fri, 11 Jul 2025 09:09:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2uRqBAi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8054810E9E8;
 Fri, 11 Jul 2025 09:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752224958; x=1783760958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=knhcCynXrL2U3chwauB2RRS0NMEqgjB7N8fghSlAuIM=;
 b=I2uRqBAiYaGrHOp9pcVDf+Q9k4wpksogE8AJpgKCbQ3CCgj/usUudNLV
 juRMWa6HsnqQCuTCrxI1kPdrvN9JPbCl09udhaq/GUXzYEYBAxcUbMSoV
 bFQwiH8GvVp8malVITh5mMSLg3JkI6icpw2dFbsxH/ALJGhKI9qeSVt/D
 SDczaxTCweYLWb00h1lKulNlznWIyhkpAa3b376iMKsV03bDLJt28Zc8i
 lu0Q0mtsCJx8DpnZrFCL24naWQnh8P3HWK1cCLuKoABvOFLtKLhqCtrLA
 01VwsjBBNSxqrZcYxtF49EIraoaaxCo4QPg8rZjKmpRHWm/jb8fboSPAE g==;
X-CSE-ConnectionGUID: WcSQM9gPTAS2GrGMl1kbLg==
X-CSE-MsgGUID: lngYCrbgQwqqmna5m04Jbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="53627673"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="53627673"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:09:18 -0700
X-CSE-ConnectionGUID: WqIfymLpS+uyPypSjCVBrg==
X-CSE-MsgGUID: XR29Wk9URIqQ789M2VXYXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="160655333"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.32])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:09:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 5/6] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit for
 LunarLake and onwards
Date: Fri, 11 Jul 2025 12:08:57 +0300
Message-ID: <20250711090858.3297380-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250711090858.3297380-1-jouni.hogander@intel.com>
References: <20250711090858.3297380-1-jouni.hogander@intel.com>
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

On LunarLake we are using TRANS_PUSH mechanism to trigger "Frame Change"
event. This way we have more control on when PSR HW is woken up. I.e. not
every display register write is triggering sending update. This allows us
setting DSB_SKIP_WAITS_EN chicken bit as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 53d8ae3a70e9..3266dd52e6d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -16,6 +16,7 @@
 #include "intel_dsb.h"
 #include "intel_dsb_buffer.h"
 #include "intel_dsb_regs.h"
+#include "intel_psr.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 #include "skl_watermark.h"
@@ -183,18 +184,24 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
  * definitely do not want to skip vblank wait. We also have concern what comes
  * to skipping vblank evasion. I.e. arming registers are latched before we have
  * managed writing them. Due to these reasons we are not setting
- * DSB_SKIP_WAITS_EN.
+ * DSB_SKIP_WAITS_EN except when using TRANS_PUSH mechanism to trigger
+ * "frame change" event.
  */
 static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
+		DSB_SKIP_WAITS_EN : 0;
+
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_CTRL_WAIT_SAFE_WINDOW |
+		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
-	else
-		return 0;
+
+	return chicken;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

