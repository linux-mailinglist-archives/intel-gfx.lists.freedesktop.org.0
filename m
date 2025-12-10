Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C868CB2049
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 06:49:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA33810E664;
	Wed, 10 Dec 2025 05:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZEECMNML";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C34D10E131;
 Wed, 10 Dec 2025 05:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765345763; x=1796881763;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TOM3bbXtJHt0JAKSCS8Wg8kyl7qc0nCbbsFxjBr9veU=;
 b=ZEECMNMLM+opSX8G1FygF0++2zc9qUr6f+znatVoS77x3cdi7b2BEHNR
 M3Ik7HCRRACiAOrFGbaruNsLGisiN5xAY7xYYRqgG/dme28kUceNAOmtt
 5nIAVhgtggB/Wxxd2glunIlvdwGt4UyY+dRj84jLV9zkC8kyrSKPJ1G6q
 zuwt6aMKineXyDpHv3ymjzCBN3aIZ72iIXe+YenUjRla5xgH5Np8dhT52
 mtTQCCMXsawD4zhT8E+lOIo6mUqWb0tg8YPy1mAs4u9xEufmrzhx5vIZm
 fm/qFi6XvwSOZKyyK2e6zkIQTh0SFnynDTJ1EweY5wAucngwJygLwCsVx g==;
X-CSE-ConnectionGUID: 5ng21ma5S+aVe3x1LhkbFg==
X-CSE-MsgGUID: aqNhiuaOQFynvQ7i5/Kl3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="71174297"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="71174297"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 21:49:23 -0800
X-CSE-ConnectionGUID: 1Cy4NYLNSg2EEmh/SPE0Lg==
X-CSE-MsgGUID: K1uoKxmnTmWGg9E2FuQvwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="227467302"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa001.fm.intel.com with ESMTP; 09 Dec 2025 21:49:21 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Date: Wed, 10 Dec 2025 10:51:28 +0530
Message-Id: <20251210052128.1857581-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Unused bandwidth can be used by external display agents for Panel Replay
enabled DP panel during idleness with link on. Enable source to replace
dummy data from the display with data from another agent by programming
TRANS_DP2_CTL [Panel Replay Tunneling Enable].

Bspec: 68920
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9e0d853f4b61..b6fc249a9f09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2051,6 +2051,7 @@
 #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
 #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
 #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
+#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
 #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
 
 #define _TRANS_DP2_VFREQHIGH_A			0x600a4
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2a378a5adc59..d0a01a08299e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
+#include "intel_dp_tunnel.h"
 #include "intel_dsb.h"
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
@@ -2152,6 +2153,25 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	return true;
 }
 
+static void intel_psr_set_pr_bw_optimization(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	u8 val;
+
+	if (DISPLAY_VER(display) < 35)
+		return;
+
+	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return;
+
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES, &val);
+	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
+		return;
+
+	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
+		     TRANS_DP2_PR_TUNNELING_ENABLE);
+}
+
 static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
@@ -2221,6 +2241,9 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.link_ok = true;
 
 	intel_psr_activate(intel_dp);
+
+	if (!intel_dp_is_edp(intel_dp) && intel_dp->psr.panel_replay_enabled)
+		intel_psr_set_pr_bw_optimization(intel_dp);
 }
 
 static void intel_psr_exit(struct intel_dp *intel_dp)
-- 
2.29.0

