Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNppFuYvuWkYuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099DD2A8229
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB7510E5C8;
	Tue, 17 Mar 2026 10:41:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgD4+bts";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FCC10E5C8;
 Tue, 17 Mar 2026 10:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773744099; x=1805280099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=txx5pQEmzbX1EBJbnAf3WpA72ecervetwKMYv+shB/Q=;
 b=XgD4+btst3ASVia4cr+sEYd1zyuNPuXz/Pd3WtCqplnRMlRiBPfov3lJ
 xWVCPeerrt5UT1Yfx1Q0AD2lyaICacLCvBvc9lpqviFq8cg6RUZlBwwSW
 nbPX2nkWak30v3IpdNYHc2+9g/ZahhHF5wVPdwdItm8nMh2rz3lU0kHE/
 eIlt+Wa91hmkORqc4y+U80DPfx2RlyQxfNjzhQTMBIyaskiuDYPhX4IHj
 kXQIqExRwZZ7XOj0Y6dhEF/2Sm0ry+UC6kQB7mqnnfNPGyVi8uNGTVMz7
 TJI3kpfZB3RIyXh0MM/kYNKwQchA4NRZMBrBz+BOg8CRdM29CwdbQh/OQ A==;
X-CSE-ConnectionGUID: hQVhJHcbR3iAtfF8/2HzFA==
X-CSE-MsgGUID: 2n98hDN3RX2g0UkCXtaWzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="77381980"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="77381980"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:39 -0700
X-CSE-ConnectionGUID: OH1gRiynSgOqyysozXWRPA==
X-CSE-MsgGUID: /8tSSMlvQb2m1xeyHhZXuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221455839"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.118])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:38 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 3/4] drm/i915: move LPT clock gating init into intel_pch
Date: Tue, 17 Mar 2026 12:40:50 +0200
Message-ID: <20260317104119.1690065-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260317104119.1690065-1-luciano.coelho@intel.com>
References: <20260317104119.1690065-1-luciano.coelho@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 099DD2A8229
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the LPT PCH clock gating programming into
intel_pch_init_clock_gating() and switch the corresponding
Haswell/Broadwell callers to the display-specific code.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c  | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_clock_gating.c | 21 ++-------------------
 2 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index bcd66bdf2a22..b7fade66b1da 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -264,6 +264,21 @@ static void intel_pch_cpt_init_clock_gating(struct intel_display *display)
 			       TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 }
 
+static void intel_pch_lpt_init_clock_gating(struct intel_display *display)
+{
+	/*
+	 * TODO: this bit should only be enabled when really needed, then
+	 * disabled when not needed anymore in order to save power.
+	 */
+	if (HAS_PCH_LPT_LP(display))
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, 0,
+			     PCH_LP_PARTITION_LEVEL_DISABLE);
+
+	/* WADPOClockGatingDisable:hsw */
+	intel_de_rmw(display, TRANS_CHICKEN1(PIPE_A), 0,
+		     TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
+}
+
 void intel_pch_init_clock_gating(struct intel_display *display)
 {
 	switch (INTEL_PCH_TYPE(display)) {
@@ -273,6 +288,10 @@ void intel_pch_init_clock_gating(struct intel_display *display)
 	case PCH_CPT:
 		intel_pch_cpt_init_clock_gating(display);
 		break;
+	case PCH_LPT_H:
+	case PCH_LPT_LP:
+		intel_pch_lpt_init_clock_gating(display);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 0218196d183a..4c19028a9e20 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -266,23 +266,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *i915)
 	gen6_check_mch_setup(i915);
 }
 
-static void lpt_init_clock_gating(struct drm_i915_private *i915)
-{
-	struct intel_display *display = i915->display;
-
-	/*
-	 * TODO: this bit should only be enabled when really needed, then
-	 * disabled when not needed anymore in order to save power.
-	 */
-	if (HAS_PCH_LPT_LP(display))
-		intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D,
-				 0, PCH_LP_PARTITION_LEVEL_DISABLE);
-
-	/* WADPOClockGatingDisable:hsw */
-	intel_uncore_rmw(&i915->uncore, TRANS_CHICKEN1(PIPE_A),
-			 0, TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
-}
-
 static void gen8_set_l3sqc_credits(struct drm_i915_private *i915,
 				   int general_prio_credits,
 				   int high_prio_credits)
@@ -422,7 +405,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR2_1,
 			 0, KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
 
-	lpt_init_clock_gating(i915);
+	intel_pch_init_clock_gating(i915->display);
 
 	/* WaDisableDopClockGating:bdw
 	 *
@@ -456,7 +439,7 @@ static void hsw_init_clock_gating(struct drm_i915_private *i915)
 	/* WaSwitchSolVfFArbitrationPriority:hsw */
 	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
-	lpt_init_clock_gating(i915);
+	intel_pch_init_clock_gating(i915->display);
 }
 
 static void ivb_init_clock_gating(struct drm_i915_private *i915)
-- 
2.51.0

