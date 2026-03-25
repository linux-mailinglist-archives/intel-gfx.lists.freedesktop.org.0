Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Nk9LCTRw2lLuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:12:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5982132491F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E917710E890;
	Wed, 25 Mar 2026 12:12:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/jWgnNh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D96F10E890;
 Wed, 25 Mar 2026 12:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774440735; x=1805976735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jvOIzA1WV+mz9tDjj02acqLmRUuHO3GCbd0rS4IJQ6w=;
 b=V/jWgnNhmw8d1c9FbCekumBI4u06byA20e5hn4e01OatSo2WdBNsX6uD
 MGLpzB5XA8ITmrf8mBMIIZCHoxvAhLzvH77aeKZM6G0sfJPlbN9h8GV8U
 8vAyVyf9+GcHOZlH8m5I35B32AId2GV5JX87KigEYFL+3tz4Xeoxffy38
 IAq6JgLlvZ44xv5617UnX+kS7vqfFjawACFaoYyx9hNXcdlBlHi71LxQR
 wsLz1/tmuI5LYyVK/agJ+cEJeLzuffiCP0tGStR80xkvoj0w13OlY6CUa
 EO0IRNEeMJyhVES/oemTChBceAJMPbFxk7v5Yt/VScJPBBk3iCANszpEf w==;
X-CSE-ConnectionGUID: JRQAkUzwTMmlekM7twwgkQ==
X-CSE-MsgGUID: gxn5luZ/TqyTl77KSUZ1QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="63022443"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="63022443"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:12:15 -0700
X-CSE-ConnectionGUID: c08ewhVSQUuvI1CuD8WBAg==
X-CSE-MsgGUID: lSuA7RmtS6C7LqFPQYYnng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="224673462"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 25 Mar 2026 05:12:13 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 3/3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Date: Wed, 25 Mar 2026 17:11:54 +0530
Message-Id: <20260325114154.3688550-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260325114154.3688550-1-animesh.manna@intel.com>
References: <20260325114154.3688550-1-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5982132491F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Unused bandwidth can be used by external display agents for Panel Replay
enabled DP panel during idleness with link on. Enable source to replace
dummy data from the display with data from another agent by programming
TRANS_DP2_CTL [Panel Replay Tunneling Enable].

v2:
- Enable pr bw optimization along with panel replay enable. [Jani]

v3:
- Write TRANS_DP2_CTL once for both bw optimization and panel replay
enable. [Jani]

v4:
- Read DPCD once in init() and store in panel_replay_caps. [Jouni]

v5:
- Avoid reading DPCD for edp. [Jouni]
- Use drm_dp_dpcd_read_byte() and some cosmetic changes. [Jani]

v6:
- Extend the corresponding interface defined in drm_dp_tunnel.c
to query the Panel Replay optimization capability. [Imre]

v7:
- Clear TRANS_DP2_PR_TUNNELING_ENABLE if pr bw optimization
is not allowed. [Jouni]
- Move intel_dp_is_edp() check. [Jouni]

Bspec: 68920
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 25 +++++++++++++++++--
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4746e9ebd920..dada8dc27ea4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2263,6 +2263,7 @@
 #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
 #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
 #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
+#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
 #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
 
 #define _TRANS_DP2_VFREQHIGH_A			0x600a4
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c13116e6f17f..992bd9ffac70 100644
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
@@ -1023,11 +1024,27 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 	return frames_before_su_entry;
 }
 
+static bool intel_psr_allow_pr_bw_optimization(struct intel_dp *intel_dp)
+{
+	if (intel_dp_is_edp(intel_dp))
+		return false;
+
+	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return false;
+
+	if (!intel_dp_tunnel_pr_optimization_supported(intel_dp))
+		return false;
+
+	return true;
+}
+
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	u32 dp2_ctl_set = TRANS_DP2_PANEL_REPLAY_ENABLE;
+	u32 dp2_ctl_clear = 0;
 
 	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
 		u32 val = psr->su_region_et_enabled ?
@@ -1040,12 +1057,16 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 			       val);
 	}
 
+	if (intel_psr_allow_pr_bw_optimization(intel_dp))
+		dp2_ctl_set |= TRANS_DP2_PR_TUNNELING_ENABLE;
+	else
+		dp2_ctl_clear = TRANS_DP2_PR_TUNNELING_ENABLE;
+
 	intel_de_rmw(display,
 		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
 		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
 
-	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
-		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), dp2_ctl_clear, dp2_ctl_set);
 }
 
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
-- 
2.29.0

