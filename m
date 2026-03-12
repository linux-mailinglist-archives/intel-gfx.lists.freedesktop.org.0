Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LwXBoBPsmmLLgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:30:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBD926D63A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2997410E962;
	Thu, 12 Mar 2026 05:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJWCFw1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 304A310E962;
 Thu, 12 Mar 2026 05:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773293437; x=1804829437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nl8l/gq16Ct6l+hhsI2GjSGjcEZ22nnkS6/15IuNoQg=;
 b=hJWCFw1edQFhvCPLc7UcNszLDVh39vxZBNfVV9+1ZeVFsA1kNkAnO9XJ
 CTE7Mz9nDuSFWp7hpPBVnUeFplpMHl5ikgAcG6WGEsojsFYpBh/uduRoD
 WQhWwHHpcNRBRSbW9eERz4uKEMJ8IAqaIKUoxJbeWJhyLmMKtqt/z+uhH
 sfcIxCG039RETJHdNmrC8tgJ2yCIde56hkMci8RkleO0NElY/7+zvkVbk
 hOUjdU6Uc2IiBqoM0pSZwMaBHLRj0ubwCjJqz86gwPBgX/tXN4dMiYW8R
 y2ThRrNMnMadzMRsvzgFerytVtotagtdR/nTILL62h9oFvOOPivsFTgYZ w==;
X-CSE-ConnectionGUID: ML55TFQnR42Z0R+827ke7A==
X-CSE-MsgGUID: VGq1GMnVR/akHcxcxjbHSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74253903"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74253903"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 22:30:37 -0700
X-CSE-ConnectionGUID: Z6zGs97URra2bl2NbONApw==
X-CSE-MsgGUID: gtIT5EvMS7GSjeHqvr0oOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="258611059"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 11 Mar 2026 22:30:34 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 2/3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Date: Thu, 12 Mar 2026 10:30:34 +0530
Message-Id: <20260312050035.3493690-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260312050035.3493690-1-animesh.manna@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BDBD926D63A
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

Bspec: 68920
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 24 +++++++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

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
index 5041a5a138d1..632527ede29f 100644
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
@@ -1023,11 +1024,28 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 	return frames_before_su_entry;
 }
 
+static bool intel_psr_allow_pr_bw_optimization(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 35)
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
+	u32 dp2_ctl_val = TRANS_DP2_PANEL_REPLAY_ENABLE;
 
 	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
 		u32 val = psr->su_region_et_enabled ?
@@ -1040,12 +1058,14 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 			       val);
 	}
 
+	if (!intel_dp_is_edp(intel_dp) && intel_psr_allow_pr_bw_optimization(intel_dp))
+		dp2_ctl_val |= TRANS_DP2_PR_TUNNELING_ENABLE;
+
 	intel_de_rmw(display,
 		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
 		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
 
-	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
-		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0, dp2_ctl_val);
 }
 
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
-- 
2.29.0

