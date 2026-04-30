Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFCrFuMS82k4xAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B45BE49F405
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A41810F297;
	Thu, 30 Apr 2026 08:29:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DjIoG9S9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B235310F297;
 Thu, 30 Apr 2026 08:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777537759; x=1809073759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3fX2ziVZooxUjv2h1LLv/Hv9UJD8Ey5zfNvRUBvBNFw=;
 b=DjIoG9S93f8ZptFehuJPEafzDnVuMuCJf6DdsJycLIPbDuNN0mb2ohfJ
 DPGBPN2nffg5Dcdszj/MotrwnO042KdAgVUTFNRatdXon9icRSyEQtumV
 KLudb+wGYZ7FesUaeJTcaJMY805gzX8hYoZ8W7z+Hk0jBLjtf0qALFzKQ
 n7G+AGu0mPI/zAveyJ84cHvXVoHyxO06FFze0aYFMR92pSBLUWVlygZPL
 aAl4liCxwU+ARPXqCeHnm3T2JnrNrqjGrJSUh4f440ryxiIpMzEISlxEG
 BDAtEsjgn3Xy74VaLzdqljrXi+xz3UC8/cu7Czw9GX98WjPZMLruhXE01 A==;
X-CSE-ConnectionGUID: NsODFQtxTTSDApHUAS0D1g==
X-CSE-MsgGUID: HDqFBJ92RKCzo9voMIhswQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77646060"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="77646060"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:19 -0700
X-CSE-ConnectionGUID: CLVaIDyUTMWwDMTmeBsR7A==
X-CSE-MsgGUID: qu5vj54iS6K8xnIO4Wy+Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="229911374"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/8] drm/i915/display: move dpll funcs under dpll sub-struct
Date: Thu, 30 Apr 2026 11:28:50 +0300
Message-ID: <02efd924d7efdf42655f5c9bfd0f79a6df5fe2b4.1777537663.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777537663.git.jani.nikula@intel.com>
References: <cover.1777537663.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: B45BE49F405
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Move dpll related functions under dpll sub-struct of struct
intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  6 ++--
 drivers/gpu/drm/i915/display/intel_dpll.c     | 28 +++++++++----------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0c2e17edbd5f..5a1aee340728 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -127,6 +127,9 @@ struct intel_audio {
  * dpll, because on some platforms plls share registers.
  */
 struct intel_dpll_global {
+	/* internal dpll functions */
+	const struct intel_dpll_global_funcs *funcs;
+
 	struct mutex lock;
 
 	int num_dpll;
@@ -313,9 +316,6 @@ struct intel_display {
 
 		/* Display CDCLK functions */
 		const struct intel_cdclk_funcs *cdclk;
-
-		/* Display pll funcs */
-		const struct intel_dpll_global_funcs *dpll;
 	} funcs;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a1aa88598013..f40807a5566b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1735,7 +1735,7 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	ret = display->funcs.dpll->crtc_compute_clock(state, crtc);
+	ret = display->dpll.funcs->crtc_compute_clock(state, crtc);
 	if (ret) {
 		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't calculate DPLL settings\n",
 			    crtc->base.base.id, crtc->base.name);
@@ -1759,10 +1759,10 @@ int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable || crtc_state->intel_dpll)
 		return 0;
 
-	if (!display->funcs.dpll->crtc_get_dpll)
+	if (!display->dpll.funcs->crtc_get_dpll)
 		return 0;
 
-	ret = display->funcs.dpll->crtc_get_dpll(state, crtc);
+	ret = display->dpll.funcs->crtc_get_dpll(state, crtc);
 	if (ret) {
 		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
@@ -1776,27 +1776,27 @@ void
 intel_dpll_init_clock_hook(struct intel_display *display)
 {
 	if (HAS_LT_PHY(display))
-		display->funcs.dpll = &xe3plpd_dpll_funcs;
+		display->dpll.funcs = &xe3plpd_dpll_funcs;
 	else if (DISPLAY_VER(display) >= 14)
-		display->funcs.dpll = &mtl_dpll_funcs;
+		display->dpll.funcs = &mtl_dpll_funcs;
 	else if (display->platform.dg2)
-		display->funcs.dpll = &dg2_dpll_funcs;
+		display->dpll.funcs = &dg2_dpll_funcs;
 	else if (DISPLAY_VER(display) >= 9 || HAS_DDI(display))
-		display->funcs.dpll = &hsw_dpll_funcs;
+		display->dpll.funcs = &hsw_dpll_funcs;
 	else if (HAS_PCH_SPLIT(display))
-		display->funcs.dpll = &ilk_dpll_funcs;
+		display->dpll.funcs = &ilk_dpll_funcs;
 	else if (display->platform.cherryview)
-		display->funcs.dpll = &chv_dpll_funcs;
+		display->dpll.funcs = &chv_dpll_funcs;
 	else if (display->platform.valleyview)
-		display->funcs.dpll = &vlv_dpll_funcs;
+		display->dpll.funcs = &vlv_dpll_funcs;
 	else if (display->platform.g4x)
-		display->funcs.dpll = &g4x_dpll_funcs;
+		display->dpll.funcs = &g4x_dpll_funcs;
 	else if (display->platform.pineview)
-		display->funcs.dpll = &pnv_dpll_funcs;
+		display->dpll.funcs = &pnv_dpll_funcs;
 	else if (DISPLAY_VER(display) != 2)
-		display->funcs.dpll = &i9xx_dpll_funcs;
+		display->dpll.funcs = &i9xx_dpll_funcs;
 	else
-		display->funcs.dpll = &i8xx_dpll_funcs;
+		display->dpll.funcs = &i8xx_dpll_funcs;
 }
 
 static bool i9xx_has_pps(struct intel_display *display)
-- 
2.47.3

