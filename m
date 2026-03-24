Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPcxObFFwmlQbQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:05:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DD4304524
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BEAB10E5FC;
	Tue, 24 Mar 2026 08:05:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMMpidY8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B7C10E5FC;
 Tue, 24 Mar 2026 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774339503; x=1805875503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dH2l9z/kYpfCKdyhexsPzjvkbLGx4vvJ5d7KwadHnRQ=;
 b=hMMpidY8Y245/onY4flVPoupfZt55QeysaHE4z4sOM75XobSGi7ciMM4
 Y4M5nFRBTu4D7kuGthlsZ9ncUO+jllnRdXEQMp+z1YDFPeVKenLt/UDVu
 YPEqEaPGtKGWyjTdwXir4HK+vDr1rlRZ3TH11NmUQgY+MQ1Q1TSfbk782
 svSkYeTx8ybJfd8RV/Gg9/aRgIJ3tgmMdIoO+52kwu3I61wfotRrRuH6H
 nq246+zyw3JoOgc6oDNnMI8IV1av2KBIQPzPOv/FOmV55K/8y9DjNfCHH
 YdYwgU+eMuIC6TDdcR0yzBHJdHssIMWyiWrsrd6AwuxmkgefvphB6uwGY g==;
X-CSE-ConnectionGUID: ZrAVcRHoSe+Vwe6cWSsYLw==
X-CSE-MsgGUID: A7pbxFG1SUGbNe1F3zqz6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="86045478"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="86045478"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:05:03 -0700
X-CSE-ConnectionGUID: TyFBwNgjSAGSMepwM1PYZA==
X-CSE-MsgGUID: Akj4ohWCQditf1FyX7eL/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="223494976"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.170])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:05:01 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v2 4/4] drm/i915: move CNP clock gating init into intel_pch
Date: Tue, 24 Mar 2026 10:04:28 +0200
Message-ID: <20260324080441.154609-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260324080441.154609-1-luciano.coelho@intel.com>
References: <20260324080441.154609-1-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: B9DD4304524
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the CNP PCH clock gating programming into
intel_pch_init_clock_gating() and switch the corresponding
CFL/CML caller to the display-specific code.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
2.53.0

