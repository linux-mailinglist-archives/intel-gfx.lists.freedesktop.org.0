Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAwJKnnLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A09650DBD5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E116F10E725;
	Mon, 11 May 2026 12:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mEGertW6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2003C10E726;
 Mon, 11 May 2026 12:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502519; x=1810038519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gYx23AbQz5mZ3QvoOe2ut4bHxR++z3r+p1L1LoNlaKE=;
 b=mEGertW6J4c90Bu6dCWgLVogDENSPkE7FSQevXr8Sy0IkavId+hc9iYP
 F0w5DSAiJlIjBWEWDqjalwdU+CahV5A06nybzAZ444czlbnG774MWMeCj
 2GLNGlvEUf1/aBuTNUCjOsIagFUFBy9ufs4B5lbz67u8CLRyeiwYYsWmm
 dtvqu+Yz/gGCASylFA0+VjFvpv+dp+YAEuYkYSZSjIJXDJYK2EYE9Z7z3
 fby/Nm1IRSSxxZlejCiFUoCn/3OT1If4PWVwVapr8/cG7ldqWGzr6yFH0
 Phl5HcRRqUi9VJ3hTspJmuYuiohSY40OkeTLn4YF0z2PbVWTXC0uyJ0Of Q==;
X-CSE-ConnectionGUID: MsMEWnexQt+rhc3AdTw1WA==
X-CSE-MsgGUID: SjV1PydaRnqMHug3ks0WJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762750"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762750"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:39 -0700
X-CSE-ConnectionGUID: hoBJNn1vRUmSO9VW4XAH3g==
X-CSE-MsgGUID: jQAf1M9nQR+AjklkmbndcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801423"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:37 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 02/11] drm/i915/pm_demand: introduce HAS_PMDEMAND macro
Date: Mon, 11 May 2026 15:28:07 +0300
Message-ID: <20260511122816.1235478-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: 5A09650DBD5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

PM demand feature introduces a new way to set bw, power and
performance requirements to pcode from display version 14 onwards.
Use an identifiable name as a macro to distinguish the pm demand
specific changes in the code.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c             |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_device.h |  1 +
 drivers/gpu/drm/i915/display/intel_display_irq.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_pmdemand.c       | 12 ++++++------
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 9c3a9bbb49f6..d99e921df0b9 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -181,7 +181,7 @@ static int icl_pcode_restrict_qgv_points(struct intel_display *display,
 {
 	int ret;
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
@@ -1206,7 +1206,7 @@ static int intel_bw_check_qgv_points(struct intel_display *display,
 
 	data_rate = DIV_ROUND_UP(data_rate, 1000);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		return mtl_find_qgv_points(display, data_rate, num_active_planes,
 					   new_bw_state);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 074e3ba8fb77..65283286771a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -194,6 +194,7 @@ struct intel_display_platforms {
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
 #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >= 35)
+#define HAS_PMDEMAND(__display)		(DISPLAY_VER(__display) >= 14)
 #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
 #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 70c1bba7c0a8..69bc9101d21d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1260,7 +1260,7 @@ gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
 		}
 	}
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_PMDEMAND(display)) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
 			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 80ecf373fb19..94e025e231d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1122,7 +1122,7 @@ static void gen9_dbuf_enable(struct intel_display *display)
 
 	slices_mask = BIT(DBUF_S1) | display->dbuf.enabled_slices;
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		intel_pmdemand_program_dbuf(display, slices_mask);
 
 	/*
@@ -1136,7 +1136,7 @@ static void gen9_dbuf_disable(struct intel_display *display)
 {
 	gen9_dbuf_slices_update(display, 0);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		intel_pmdemand_program_dbuf(display, 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 7819b724795b..3a2e7825eb52 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -152,7 +152,7 @@ intel_pmdemand_update_phys_mask(struct intel_display *display,
 {
 	enum phy phy;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	if (!encoder)
@@ -174,7 +174,7 @@ intel_pmdemand_update_port_clock(struct intel_display *display,
 				 struct intel_pmdemand_state *pmdemand_state,
 				 enum pipe pipe, int port_clock)
 {
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	pmdemand_state->ddi_clocks[pipe] = port_clock;
@@ -326,7 +326,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 	const struct intel_dbuf_state *new_dbuf_state;
 	struct intel_pmdemand_state *new_pmdemand_state;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return 0;
 
 	if (!intel_pmdemand_needs_update(state))
@@ -406,7 +406,7 @@ intel_pmdemand_init_pmdemand_params(struct intel_display *display,
 {
 	u32 reg1, reg2;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	mutex_lock(&display->pmdemand.lock);
@@ -639,7 +639,7 @@ void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
 	const struct intel_pmdemand_state *old_pmdemand_state =
 		intel_atomic_get_old_pmdemand_state(state);
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	if (!new_pmdemand_state ||
@@ -662,7 +662,7 @@ void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
 	const struct intel_pmdemand_state *old_pmdemand_state =
 		intel_atomic_get_old_pmdemand_state(state);
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	if (!new_pmdemand_state ||
-- 
2.43.0

