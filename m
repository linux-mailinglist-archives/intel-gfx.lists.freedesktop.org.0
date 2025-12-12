Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6A6CB8073
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 07:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE07710E16F;
	Fri, 12 Dec 2025 06:22:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYRKZh/m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394FF10E16F;
 Fri, 12 Dec 2025 06:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765520541; x=1797056541;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RLrpLmoKajOcdQgRmlYzYLqvtZONFXLc9WwOyAswMxU=;
 b=kYRKZh/mcyTqkBGqfrTn5SGsVQB4VKTBC3LO47/b3xukjUCq4dWHMARW
 VoBrcG+Zb83picKJzNl4wJUjMjUsroJ1TGvfbKf9n35PWFAP+U06kSajp
 6GD/U9cZ8C07feJczkBdzyPhajvHRrndwt+F1aRSYix+JNDKECMzgopIg
 Lm0MIPhHQihDUsW12+YswJx23u0UJgW6uVkWNi/0apYQraWig2p17NO+m
 dTio1qtvEyt76EXQvG/D9HQqjvS/xM43q7tEQyJ2nD2y8gKV6yNNqCIJK
 uOkXJpt5qhx8R5YaZV7fpSkzHKiHd0beK9aQdfdb7HsRcAiGaFm0lnztw A==;
X-CSE-ConnectionGUID: wyvRUsANTYysIFIten//5Q==
X-CSE-MsgGUID: c7mcYWPuSveH8InO+zYe1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="85116252"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="85116252"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 22:22:21 -0800
X-CSE-ConnectionGUID: eh/j+17wTNi63ntd8N0WJw==
X-CSE-MsgGUID: /ehVCISjTtGJmchhlX6gtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="201168445"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2025 22:22:19 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Date: Fri, 12 Dec 2025 11:24:23 +0530
Message-Id: <20251212055423.1925044-1-animesh.manna@intel.com>
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
index 2a378a5adc59..0d4cac30e40e 100644
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
@@ -1018,6 +1019,25 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 	return frames_before_su_entry;
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
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1041,6 +1061,9 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 
 	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
 		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+
+	if (!intel_dp_is_edp(intel_dp))
+		intel_psr_set_pr_bw_optimization(intel_dp);
 }
 
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
-- 
2.29.0

