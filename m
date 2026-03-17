Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDIfFegvuWkYuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED5C2A8230
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A3410E5CA;
	Tue, 17 Mar 2026 10:41:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWs+gGWE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB2C10E5CA;
 Tue, 17 Mar 2026 10:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773744101; x=1805280101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=woejEm/oNRi3wzfj2vXQaYhCfLNG98PXlhlmm4IsFJk=;
 b=IWs+gGWEySrTBPZWL14uPvQ5tl80NYunaVU3Wia4f5A6eMrAqpF3Hbjy
 3N99/MNUWNd4L/jNKItqVnPBUKnWyewm7pWivaLAR5ltji2M7WL+shHIM
 veDNv/0OrCqqUgBuSAMhGl0+LjN7nGlXi8d5Q3SFI6JV+lFeX5GHUgVGW
 u0O6oG/rMX9ZRUj/8N690T19dXWAVeTQV6kqkQ0NjN2p2Ao+WSEPLcgih
 P4pC4TOf6SI4irmEwVcoOJagdP8PpQpur4oxwb5PX+8/iUnwk2uo2SMwC
 DQFrnWVSqGhQvkesnqf0VmHBUsT328LZUYf70wWH/eTtgedSaYQazN8IG w==;
X-CSE-ConnectionGUID: L90C0lhUTru7/GqqHYpxzQ==
X-CSE-MsgGUID: Zrim0SL5Q6GwPPBAXI/NEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="77381983"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="77381983"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:41 -0700
X-CSE-ConnectionGUID: Tw+x0jXsSDCdUy2kDvIDmQ==
X-CSE-MsgGUID: B3CPlwjVQU6VBlkRVPEWeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221455844"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.118])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:39 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 4/4] drm/i915: move CNP clock gating init into intel_pch
Date: Tue, 17 Mar 2026 12:40:51 +0200
Message-ID: <20260317104119.1690065-5-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: 0ED5C2A8230
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the CNP PCH clock gating programming into
intel_pch_init_clock_gating() and switch the corresponding
CFL/CML caller to the display-specific code.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c  | 10 ++++++++++
 drivers/gpu/drm/i915/intel_clock_gating.c | 13 +------------
 2 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index b7fade66b1da..d2c1b1751838 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -279,6 +279,13 @@ static void intel_pch_lpt_init_clock_gating(struct intel_display *display)
 		     TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 }
 
+static void intel_pch_cnp_init_clock_gating(struct intel_display *display)
+{
+	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
+	intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, 0,
+		     CNP_PWM_CGE_GATING_DISABLE);
+}
+
 void intel_pch_init_clock_gating(struct intel_display *display)
 {
 	switch (INTEL_PCH_TYPE(display)) {
@@ -292,6 +299,9 @@ void intel_pch_init_clock_gating(struct intel_display *display)
 	case PCH_LPT_LP:
 		intel_pch_lpt_init_clock_gating(display);
 		break;
+	case PCH_CNP:
+		intel_pch_cnp_init_clock_gating(display);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 4c19028a9e20..ee2489a2fbe7 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -299,20 +299,9 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
 			 SGSI_SIDECLK_DIS);
 }
 
-static void cnp_init_clock_gating(struct drm_i915_private *i915)
-{
-	struct intel_display *display = i915->display;
-
-	if (!HAS_PCH_CNP(display))
-		return;
-
-	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
-	intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
-}
-
 static void cfl_init_clock_gating(struct drm_i915_private *i915)
 {
-	cnp_init_clock_gating(i915);
+	intel_pch_init_clock_gating(i915->display);
 	gen9_init_clock_gating(i915);
 
 	/* WAC6entrylatency:cfl */
-- 
2.51.0

