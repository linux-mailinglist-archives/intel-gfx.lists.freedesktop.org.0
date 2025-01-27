Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE0CA1D47F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EA410E4FA;
	Mon, 27 Jan 2025 10:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cR9B2kjP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BD210E2F4;
 Mon, 27 Jan 2025 10:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973761; x=1769509761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VHr7+KjF94KBAD9//LuoOhHCMNk3iDpV5HK8Wc5yo0I=;
 b=cR9B2kjPRIC21kKtXb4YB5HZLOTWCcZiQPFu4yGysg0dybO/8v/pwAS8
 WLy7qJzLN2aQF6e2ITqr3o4Gy32n1bnUbJ+IbAi2+HshQViBhjirsAz4k
 Cnl9q2TVMeDbKPljGwy1fvdR5imhTKnN/lPIpHgahhuIX8mC29cRB3j0l
 S8HED30KwpOThKVn9T/vkZ/MdyNPXeW3Jl/oX0WkxI5OeBC/6ocqCNdSg
 kVoGYIbRL6bZ6RbSzK4Zf6yAY2JNmIJnho88nHRFnnqP6yYyYaHeBBDjG
 3jpkZDiaI0wNx+FAqdJI/0IEDWercEuF4p43z0pvOKB/MdiUdAPUJ1LWi g==;
X-CSE-ConnectionGUID: jeW07fETTt2NhwBwFpSeZQ==
X-CSE-MsgGUID: G0/HA+brTWywLk2dGM5FSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529873"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529873"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:21 -0800
X-CSE-ConnectionGUID: pmocN+O5RAuZyhw83MzXjA==
X-CSE-MsgGUID: B707+XoUS86ckMYt/Gh0KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837900"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:20 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 08/12] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Mon, 27 Jan 2025 12:28:42 +0200
Message-ID: <20250127102846.1237560-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2f2812c239725..30782ab0b9082 100644
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

