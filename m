Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y9BoEp+HQ2pUaQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:08:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72916E1EEF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:08:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=meGBImZo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A11D10EAC7;
	Tue, 30 Jun 2026 09:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31C310E1C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2026 09:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782810522; x=1814346522;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=45uRP4SrF4u69QMuDOHlESaipbrA/8wqLnL5h14UTiE=;
 b=meGBImZoUsVSwZEB8knoAd6YImwkmMoKN2Mpvo0QoxgUcUcdogQjNd3d
 CptZTIoN8TfaRlLsKSovBIXpkMl0n5Wcyt/gWg23tGSIfxwoKsSOEpyo1
 MImzOm73dkU+F7i/aP3u6k5Wm02ZyZl6PHCv55EirqSv0Pi9+RnmrFndV
 VwSKKYh5iN8T2GgJRiXfuiqLFbG6355Ub6plto3KoI3bojE6D7q0hRpYy
 EAGrWYAb4I1FqL+fNxXCJ8QqeAfTmwJ7KnWbft0jPafdUAWrO6qfzJQfH
 9o9HfR8YhigXOjMn1Kq2RMfHgdPXojlgAkP5nc+xNVQiiMMv9WvB4pe/J Q==;
X-CSE-ConnectionGUID: X6MC6JzKQRWTYsHucq4OBg==
X-CSE-MsgGUID: VMkIwwbyT0SyXZAIzwJGWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94900340"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="94900340"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:08:42 -0700
X-CSE-ConnectionGUID: R22hUrDFQSeXFDoJKf1ZQA==
X-CSE-MsgGUID: 7CjxIMFERou2PjEet4Sd5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="256605015"
Received: from amilburn-desk.amilburn-desk (HELO hazy.intel.com)
 ([10.245.245.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:08:41 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/display: combine clock_gating init functions
 called early into one
Date: Tue, 30 Jun 2026 12:03:26 +0300
Message-ID: <20260630090829.2778879-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260630090829.2778879-1-luciano.coelho@intel.com>
References: <20260630090829.2778879-1-luciano.coelho@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E72916E1EEF

There are several separate display functions, one for each different
platform, that are called by the i915 driver, creating an
unnecessarily large interface complexity between them.

Combine all the functions that are called early in the initialization
into a single one, to reduce the interface surface between the core
and the display code.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c | 24 +++++++++++++++----
 .../i915/display/intel_display_clock_gating.h |  6 +----
 drivers/gpu/drm/i915/intel_clock_gating.c     | 18 +++++++-------
 3 files changed, 29 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index d036c7e5863d..62f086341a1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -27,7 +27,7 @@ static void intel_display_gen9_init_clock_gating(struct intel_display *display)
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
 }
 
-void intel_display_skl_init_clock_gating(struct intel_display *display)
+static void intel_display_skl_init_clock_gating(struct intel_display *display)
 {
 	/*
 	 * WaCompressedResourceDisplayNewHashMode:skl,kbl
@@ -47,7 +47,7 @@ void intel_display_skl_init_clock_gating(struct intel_display *display)
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 }
 
-void intel_display_kbl_init_clock_gating(struct intel_display *display)
+static void intel_display_kbl_init_clock_gating(struct intel_display *display)
 {
 	/*
 	 * WaCompressedResourceDisplayNewHashMode:skl,kbl
@@ -67,7 +67,7 @@ void intel_display_kbl_init_clock_gating(struct intel_display *display)
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 }
 
-void intel_display_cfl_init_clock_gating(struct intel_display *display)
+static void intel_display_cfl_init_clock_gating(struct intel_display *display)
 {
 	/*
 	 * WaCompressedResourceDisplayNewHashMode:skl,kbl (and cfl, cml)
@@ -93,7 +93,7 @@ void intel_display_cfl_init_clock_gating(struct intel_display *display)
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 }
 
-void intel_display_bxt_init_clock_gating(struct intel_display *display)
+static void intel_display_bxt_init_clock_gating(struct intel_display *display)
 {
 	intel_display_gen9_init_clock_gating(display);
 
@@ -120,7 +120,7 @@ void intel_display_bxt_init_clock_gating(struct intel_display *display)
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 }
 
-void intel_display_glk_init_clock_gating(struct intel_display *display)
+static void intel_display_glk_init_clock_gating(struct intel_display *display)
 {
 	intel_display_gen9_init_clock_gating(display);
 
@@ -268,3 +268,17 @@ void intel_display_i965gm_init_clock_gating(struct intel_display *display)
 {
 	intel_de_write(display, DSPCLK_GATE_D, 0);
 }
+
+void intel_display_init_clock_gating_early(struct intel_display *display)
+{
+	if (display->platform.skylake)
+		intel_display_skl_init_clock_gating(display);
+	else if (display->platform.kabylake)
+		intel_display_kbl_init_clock_gating(display);
+	else if (display->platform.coffeelake || display->platform.cometlake)
+		intel_display_cfl_init_clock_gating(display);
+	else if (display->platform.broxton)
+		intel_display_bxt_init_clock_gating(display);
+	else if (display->platform.geminilake)
+		intel_display_glk_init_clock_gating(display);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
index b6dd34ca92dd..09124d6d438c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -8,11 +8,7 @@
 
 struct intel_display;
 
-void intel_display_skl_init_clock_gating(struct intel_display *display);
-void intel_display_kbl_init_clock_gating(struct intel_display *display);
-void intel_display_cfl_init_clock_gating(struct intel_display *display);
-void intel_display_bxt_init_clock_gating(struct intel_display *display);
-void intel_display_glk_init_clock_gating(struct intel_display *display);
+void intel_display_init_clock_gating_early(struct intel_display *display);
 void intel_display_bdw_clock_gating_disable_fbcq(struct intel_display *display);
 void intel_display_bdw_clock_gating_vblank_in_srd(struct intel_display *display);
 void intel_display_bdw_clock_gating_kvm_notif(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 86bdeb20f427..6d58ce8605a8 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -48,6 +48,8 @@ struct drm_i915_clock_gating_funcs {
 
 static void bxt_init_clock_gating(struct drm_i915_private *i915)
 {
+	intel_display_init_clock_gating_early(i915->display);
+
 	/* WaDisableSDEUnitClockGating:bxt */
 	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
@@ -56,13 +58,11 @@ static void bxt_init_clock_gating(struct drm_i915_private *i915)
 	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
 	 */
 	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
-
-	intel_display_bxt_init_clock_gating(i915->display);
 }
 
 static void glk_init_clock_gating(struct drm_i915_private *i915)
 {
-	intel_display_glk_init_clock_gating(i915->display);
+	intel_display_init_clock_gating_early(i915->display);
 }
 
 static void ilk_init_clock_gating(struct drm_i915_private *i915)
@@ -165,16 +165,18 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
 
 static void cfl_init_clock_gating(struct drm_i915_private *i915)
 {
+	intel_display_init_clock_gating_early(i915->display);
+
 	intel_pch_init_clock_gating(i915->display);
 
 	/* WAC6entrylatency:cfl */
 	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
-
-	intel_display_cfl_init_clock_gating(i915->display);
 }
 
 static void kbl_init_clock_gating(struct drm_i915_private *i915)
 {
+	intel_display_init_clock_gating_early(i915->display);
+
 	/* WAC6entrylatency:kbl */
 	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
@@ -187,20 +189,18 @@ static void kbl_init_clock_gating(struct drm_i915_private *i915)
 	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, 0, STEP_C0))
 		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
 				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
-
-	intel_display_kbl_init_clock_gating(i915->display);
 }
 
 static void skl_init_clock_gating(struct drm_i915_private *i915)
 {
+	intel_display_init_clock_gating_early(i915->display);
+
 	/* WaDisableDopClockGating:skl */
 	intel_uncore_rmw(&i915->uncore, GEN7_MISCCPCTL,
 			 GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
 	/* WAC6entrylatency:skl */
 	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
-
-	intel_display_skl_init_clock_gating(i915->display);
 }
 
 static void bdw_init_clock_gating(struct drm_i915_private *i915)
-- 
2.53.0

