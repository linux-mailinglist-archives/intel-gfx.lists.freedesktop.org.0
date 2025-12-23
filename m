Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAC5CD8F66
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A7A10E2BE;
	Tue, 23 Dec 2025 10:51:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nACkjKLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6202610E2B1;
 Tue, 23 Dec 2025 10:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487102; x=1798023102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/pdtkncV0oxQT6aeJS+c9nSVDU12dNmwdvCRU8TKlB0=;
 b=nACkjKLdS2yCbbvmglIMaF7ePrPE2l51QgpobHckMnSVchHgCINPlYzm
 +MDQQzZzhfI/jyrWfmnYmrQlhLgO2Bc3Bs31aBGZ2xPWLskVC7am9GkVg
 lR81a+cJz2tO2ORjtGM7r2/jig+a5EXthKUBlCTe2CSvaUVrPulmxxboF
 uAtxZhxZx5jqo7YpknnyxZ2nQPM5Ljdjc0T8lgfshpqJwa8QhZuebOCPP
 EcVg6MpRupOPLe3TKFS4plrOiDuCD1IONMlemuH5LaVyia9Gg9A+Miqlu
 SRFwDayQqPk6THbsaPCNMXK+6rNNKji0SUHVlbZ4AExMeVW1vmc6RCS/g w==;
X-CSE-ConnectionGUID: 00OHVft0QB65GnsbpYzaaA==
X-CSE-MsgGUID: jwmaBZktQj2IVES5U8nNDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="78651280"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="78651280"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:42 -0800
X-CSE-ConnectionGUID: mClJW6gzTCyHmbXZhRY+dA==
X-CSE-MsgGUID: ucWevZuWTf20Iq79hXyYzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204806162"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.100])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:40 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 4/8] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit for
 LunarLake and onwards
Date: Tue, 23 Dec 2025 12:51:16 +0200
Message-ID: <20251223105120.21505-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223105120.21505-1-jouni.hogander@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
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
index ec2a3fb171ab..19a99f82f413 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -17,6 +17,7 @@
 #include "intel_dsb.h"
 #include "intel_dsb_buffer.h"
 #include "intel_dsb_regs.h"
+#include "intel_psr.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 #include "skl_watermark.h"
@@ -166,18 +167,24 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
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

