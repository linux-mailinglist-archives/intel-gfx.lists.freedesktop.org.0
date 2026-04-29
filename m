Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO+lIpTc8WnKkwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C337492CB3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B697510EF48;
	Wed, 29 Apr 2026 10:25:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NX18svjI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551A610EF48;
 Wed, 29 Apr 2026 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777458322; x=1808994322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EjRoylg81VuzEv3SBooloBLKXUIX03h0i4SYO54I7cE=;
 b=NX18svjI10Bv+1z5pl20GYx0H2zBE5JhyEroL0m9ZLBaHzmyF3zNGmwL
 K9UCzWhFIyARM9lSq59EomTh67IWuL4GfJhQWG76WJ/bffpBOIMXOW9dE
 v3UkxdpZuHsU8YRwBc3cGQU3NTpD9J8WnFKpd5NUYeJJh5qZQRO9GDNIU
 nO/KtmukEkVA+c0lT9Bq7P35HZNgto/9ujSMbN6pC2mI5XPQMkjL/jVk/
 VKTyJ2Mw6YyUtXVoWbRYaTIpNyjXAOcRjOymV6TAQNn4dk0y3P+tQtrUl
 Eq6znSSElkdTk0XlPyDMA5/E/kxMxrDSNUYzwK+SRzDJfs+OIKFkyLMLM Q==;
X-CSE-ConnectionGUID: RA4odrYUT5WIFy3WISdakg==
X-CSE-MsgGUID: xFE1npS2QuqyC8cwuP0phg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89078546"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="89078546"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:22 -0700
X-CSE-ConnectionGUID: 62ZJTRzwSgWTaakgBLkP2g==
X-CSE-MsgGUID: dJ71pAMjT0qk33hg/Pk41Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="238554413"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.175])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/15] drm/i915/display: move hotplug irq funcs under hotplug
 sub-struct
Date: Wed, 29 Apr 2026 13:24:45 +0300
Message-ID: <2a072d385e70b473daf3726d877a87c17194b172.1777458161.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777458161.git.jani.nikula@intel.com>
References: <cover.1777458161.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 3C337492CB3
X-Rspamd-Action: no action
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
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]

Move hotplug irq related functions under hotplug sub-struct of struct
intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  8 ++---
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 30 +++++++++----------
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 01394724abc9..0c2e17edbd5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -47,7 +47,7 @@ struct intel_dpll_global_funcs;
 struct intel_dpll_mgr;
 struct intel_fbdev;
 struct intel_fdi_funcs;
-struct intel_hotplug_funcs;
+struct intel_hotplug_irq_funcs;
 struct intel_initial_plane_config;
 struct intel_opregion;
 struct intel_overlay;
@@ -155,6 +155,9 @@ struct intel_frontbuffer_tracking {
 };
 
 struct intel_hotplug {
+	/* internal hotplug irq functions */
+	const struct intel_hotplug_irq_funcs *funcs;
+
 	struct delayed_work hotplug_work;
 
 	const u32 *hpd, *pch_hpd;
@@ -313,9 +316,6 @@ struct intel_display {
 
 		/* Display pll funcs */
 		const struct intel_dpll_global_funcs *dpll;
-
-		/* irq display functions */
-		const struct intel_hotplug_funcs *hotplug;
 	} funcs;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 8865cb2ac569..539fd555edce 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1420,7 +1420,7 @@ static void i915_hpd_irq_setup(struct intel_display *display)
 					     hotplug_en);
 }
 
-struct intel_hotplug_funcs {
+struct intel_hotplug_irq_funcs {
 	/* Enable HPD sense and interrupts for all present encoders */
 	void (*hpd_irq_setup)(struct intel_display *display);
 	/* Enable HPD sense for a single encoder */
@@ -1428,7 +1428,7 @@ struct intel_hotplug_funcs {
 };
 
 #define HPD_FUNCS(platform)					 \
-static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
+static const struct intel_hotplug_irq_funcs platform##_hpd_funcs = { \
 	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
 	.hpd_enable_detection = platform##_hpd_enable_detection, \
 }
@@ -1447,8 +1447,8 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	if (display->funcs.hotplug)
-		display->funcs.hotplug->hpd_enable_detection(encoder);
+	if (display->hotplug.funcs)
+		display->hotplug.funcs->hpd_enable_detection(encoder);
 }
 
 void intel_hpd_irq_setup(struct intel_display *display)
@@ -1457,8 +1457,8 @@ void intel_hpd_irq_setup(struct intel_display *display)
 	    !display->irq.vlv_display_irqs_enabled)
 		return;
 
-	if (display->funcs.hotplug)
-		display->funcs.hotplug->hpd_irq_setup(display);
+	if (display->hotplug.funcs)
+		display->hotplug.funcs->hpd_irq_setup(display);
 }
 
 void intel_hotplug_irq_init(struct intel_display *display)
@@ -1469,23 +1469,23 @@ void intel_hotplug_irq_init(struct intel_display *display)
 
 	if (HAS_GMCH(display)) {
 		if (HAS_HOTPLUG(display))
-			display->funcs.hotplug = &i915_hpd_funcs;
+			display->hotplug.funcs = &i915_hpd_funcs;
 	} else {
 		if (HAS_PCH_DG2(display))
-			display->funcs.hotplug = &icp_hpd_funcs;
+			display->hotplug.funcs = &icp_hpd_funcs;
 		else if (HAS_PCH_DG1(display))
-			display->funcs.hotplug = &dg1_hpd_funcs;
+			display->hotplug.funcs = &dg1_hpd_funcs;
 		else if (DISPLAY_VER(display) >= 14)
-			display->funcs.hotplug = &xelpdp_hpd_funcs;
+			display->hotplug.funcs = &xelpdp_hpd_funcs;
 		else if (DISPLAY_VER(display) >= 11)
-			display->funcs.hotplug = &gen11_hpd_funcs;
+			display->hotplug.funcs = &gen11_hpd_funcs;
 		else if (display->platform.geminilake || display->platform.broxton)
-			display->funcs.hotplug = &bxt_hpd_funcs;
+			display->hotplug.funcs = &bxt_hpd_funcs;
 		else if (INTEL_PCH_TYPE(display) >= PCH_ICP)
-			display->funcs.hotplug = &icp_hpd_funcs;
+			display->hotplug.funcs = &icp_hpd_funcs;
 		else if (INTEL_PCH_TYPE(display) >= PCH_SPT)
-			display->funcs.hotplug = &spt_hpd_funcs;
+			display->hotplug.funcs = &spt_hpd_funcs;
 		else
-			display->funcs.hotplug = &ilk_hpd_funcs;
+			display->hotplug.funcs = &ilk_hpd_funcs;
 	}
 }
-- 
2.47.3

