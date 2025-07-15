Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5ABB0511F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 07:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4513410E518;
	Tue, 15 Jul 2025 05:40:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWIDGmrW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FF410E526;
 Tue, 15 Jul 2025 05:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752558049; x=1784094049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=knhcCynXrL2U3chwauB2RRS0NMEqgjB7N8fghSlAuIM=;
 b=CWIDGmrWGQoUb+rlPWiy7ZAPlp8dnq8RTCwJUTeoUa72e5zRaURRjwPZ
 MM6p4umzLO08Ac/W8YN0o9scASUEJUX9VgtSVT6vw5WuN7rhtFYDRs0jS
 wxqFnLhR0T4bndUw1TzB4mSP/Jjo6XqJcddc0g2cXY4UHj6fHaBqljt8P
 vtBtr1QUUFtbOmK/PzsZXM1LkG2UtUwnWckmmCTeJkLHdvj+g/MbH8Nzj
 feJjUYZKUzcSrUwiZlxe+uwa+OrlJrJ9cDoMrrfaql0RMGHwK8sJOoH6k
 87z0C0gCNOX8oodg4TnwUeei3h8TfxpV7OghLa17NCPs76IB/76KBQ7d2 w==;
X-CSE-ConnectionGUID: Js044Oz3Qu+h12R/Jnr6sQ==
X-CSE-MsgGUID: SIHJMxkgTvqNKh7WygIwHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54701844"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="54701844"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:45 -0700
X-CSE-ConnectionGUID: 1gUPr/nTTlGxdhKcqOIfEw==
X-CSE-MsgGUID: f0LwGIUFQlCfWAbsfXE6VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157232296"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 5/7] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit for
 LunarLake and onwards
Date: Tue, 15 Jul 2025 08:40:22 +0300
Message-ID: <20250715054024.3856223-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715054024.3856223-1-jouni.hogander@intel.com>
References: <20250715054024.3856223-1-jouni.hogander@intel.com>
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

