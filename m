Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOl8BOcS82k4xAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69B549F40C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3046410F2A8;
	Thu, 30 Apr 2026 08:29:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LGBhVosM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F4D10F2A0;
 Thu, 30 Apr 2026 08:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777537763; x=1809073763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5gFgUyvfL7WPRorQoWSUVmwhqB//r+c/d1zwwhGdGzY=;
 b=LGBhVosMCW0FBEruljje0YB2RCn4QUGUR1sMAN8be3ZJQzGs/gqzvEVj
 esUQKnnBg3GOi29oGJ0qqi+F1DUEZsGxhSeWt3fdEF8KIePMIZaZy29XR
 KIW+7RZvWyC06UB8am76V/mkkbMbxVnpM5H6kgYMmK0+mB8U+UsBctltT
 09eklLSd18whScwsukd+ht0a9sO3aQM4JdzQoiHJbLR8UuDH0MCI/QLfc
 QSCBK5IvrPXZfTvOGkn76DNr5zP376DR0bfI7f+3hvG45lA8Xp/LOPbWa
 NvEk2DDiZwNiKRG0AnQH04BWiFos9X1KzgoHCqfGel5nC0PBfzICMJ/NK A==;
X-CSE-ConnectionGUID: nhGuC5utQxK/6F+IbHeC4Q==
X-CSE-MsgGUID: aZj2/lAzTlazhX+QVm0POA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77646064"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="77646064"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:23 -0700
X-CSE-ConnectionGUID: kupTt9nrSh2IeAjWOyizVQ==
X-CSE-MsgGUID: /xvY5MiBSiOCQOycFAc3LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="229911378"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/8] drm/i915/display: move cdclk funcs under cdclk sub-struct
Date: Thu, 30 Apr 2026 11:28:51 +0300
Message-ID: <a3cadca7cfd03486404af497fa62efb8e2d2adcd.1777537663.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: B69B549F40C
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

Move cdclk related functions under cdclk sub-struct of struct
intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 84 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  6 +-
 2 files changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 57d714c81fc4..a1bf01021d65 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -170,27 +170,27 @@ struct intel_cdclk_funcs {
 void intel_cdclk_get_cdclk(struct intel_display *display,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	display->funcs.cdclk->get_cdclk(display, cdclk_config);
+	display->cdclk.funcs->get_cdclk(display, cdclk_config);
 }
 
 static void intel_cdclk_set_cdclk(struct intel_display *display,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
 {
-	display->funcs.cdclk->set_cdclk(display, cdclk_config, pipe);
+	display->cdclk.funcs->set_cdclk(display, cdclk_config, pipe);
 }
 
 static int intel_cdclk_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 
-	return display->funcs.cdclk->modeset_calc_cdclk(state);
+	return display->cdclk.funcs->modeset_calc_cdclk(state);
 }
 
 static u8 intel_cdclk_calc_voltage_level(struct intel_display *display,
 					 int cdclk)
 {
-	return display->funcs.cdclk->calc_voltage_level(cdclk);
+	return display->cdclk.funcs->calc_voltage_level(cdclk);
 }
 
 static void fixed_133mhz_get_cdclk(struct intel_display *display,
@@ -2619,7 +2619,7 @@ static void intel_set_cdclk(struct intel_display *display,
 	if (!intel_cdclk_changed(&display->cdclk.hw, cdclk_config))
 		return;
 
-	if (drm_WARN_ON_ONCE(display->drm, !display->funcs.cdclk->set_cdclk))
+	if (drm_WARN_ON_ONCE(display->drm, !display->cdclk.funcs->set_cdclk))
 		return;
 
 	intel_cdclk_dump_config(display, cdclk_config, context);
@@ -4042,100 +4042,100 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
 void intel_init_cdclk_hooks(struct intel_display *display)
 {
 	if (DISPLAY_VER(display) >= 35) {
-		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
+		display->cdclk.funcs = &xe3lpd_cdclk_funcs;
 		display->cdclk.table = xe3p_lpd_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 30) {
-		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
+		display->cdclk.funcs = &xe3lpd_cdclk_funcs;
 		display->cdclk.table = xe3lpd_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 20) {
-		display->funcs.cdclk = &rplu_cdclk_funcs;
+		display->cdclk.funcs = &rplu_cdclk_funcs;
 		display->cdclk.table = xe2lpd_cdclk_table;
 	} else if (DISPLAY_VERx100(display) >= 1401) {
-		display->funcs.cdclk = &rplu_cdclk_funcs;
+		display->cdclk.funcs = &rplu_cdclk_funcs;
 		display->cdclk.table = xe2hpd_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 14) {
-		display->funcs.cdclk = &rplu_cdclk_funcs;
+		display->cdclk.funcs = &rplu_cdclk_funcs;
 		display->cdclk.table = mtl_cdclk_table;
 	} else if (display->platform.dg2) {
-		display->funcs.cdclk = &tgl_cdclk_funcs;
+		display->cdclk.funcs = &tgl_cdclk_funcs;
 		display->cdclk.table = dg2_cdclk_table;
 	} else if (display->platform.alderlake_p) {
 		/* Wa_22011320316:adl-p[a0] */
 		if (intel_display_wa(display, INTEL_DISPLAY_WA_22011320316)) {
 			display->cdclk.table = adlp_a_step_cdclk_table;
-			display->funcs.cdclk = &tgl_cdclk_funcs;
+			display->cdclk.funcs = &tgl_cdclk_funcs;
 		} else if (display->platform.alderlake_p_raptorlake_u) {
 			display->cdclk.table = rplu_cdclk_table;
-			display->funcs.cdclk = &rplu_cdclk_funcs;
+			display->cdclk.funcs = &rplu_cdclk_funcs;
 		} else {
 			display->cdclk.table = adlp_cdclk_table;
-			display->funcs.cdclk = &tgl_cdclk_funcs;
+			display->cdclk.funcs = &tgl_cdclk_funcs;
 		}
 	} else if (display->platform.rocketlake) {
-		display->funcs.cdclk = &tgl_cdclk_funcs;
+		display->cdclk.funcs = &tgl_cdclk_funcs;
 		display->cdclk.table = rkl_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 12) {
-		display->funcs.cdclk = &tgl_cdclk_funcs;
+		display->cdclk.funcs = &tgl_cdclk_funcs;
 		display->cdclk.table = icl_cdclk_table;
 	} else if (display->platform.jasperlake || display->platform.elkhartlake) {
-		display->funcs.cdclk = &ehl_cdclk_funcs;
+		display->cdclk.funcs = &ehl_cdclk_funcs;
 		display->cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 11) {
-		display->funcs.cdclk = &icl_cdclk_funcs;
+		display->cdclk.funcs = &icl_cdclk_funcs;
 		display->cdclk.table = icl_cdclk_table;
 	} else if (display->platform.geminilake || display->platform.broxton) {
-		display->funcs.cdclk = &bxt_cdclk_funcs;
+		display->cdclk.funcs = &bxt_cdclk_funcs;
 		if (display->platform.geminilake)
 			display->cdclk.table = glk_cdclk_table;
 		else
 			display->cdclk.table = bxt_cdclk_table;
 	} else if (DISPLAY_VER(display) == 9) {
-		display->funcs.cdclk = &skl_cdclk_funcs;
+		display->cdclk.funcs = &skl_cdclk_funcs;
 	} else if (display->platform.broadwell) {
-		display->funcs.cdclk = &bdw_cdclk_funcs;
+		display->cdclk.funcs = &bdw_cdclk_funcs;
 	} else if (display->platform.haswell) {
-		display->funcs.cdclk = &hsw_cdclk_funcs;
+		display->cdclk.funcs = &hsw_cdclk_funcs;
 	} else if (display->platform.cherryview) {
-		display->funcs.cdclk = &chv_cdclk_funcs;
+		display->cdclk.funcs = &chv_cdclk_funcs;
 	} else if (display->platform.valleyview) {
-		display->funcs.cdclk = &vlv_cdclk_funcs;
+		display->cdclk.funcs = &vlv_cdclk_funcs;
 	} else if (display->platform.sandybridge || display->platform.ivybridge) {
-		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
+		display->cdclk.funcs = &fixed_400mhz_cdclk_funcs;
 	} else if (display->platform.ironlake) {
-		display->funcs.cdclk = &ilk_cdclk_funcs;
+		display->cdclk.funcs = &ilk_cdclk_funcs;
 	} else if (display->platform.gm45) {
-		display->funcs.cdclk = &gm45_cdclk_funcs;
+		display->cdclk.funcs = &gm45_cdclk_funcs;
 	} else if (display->platform.g45) {
-		display->funcs.cdclk = &g33_cdclk_funcs;
+		display->cdclk.funcs = &g33_cdclk_funcs;
 	} else if (display->platform.i965gm) {
-		display->funcs.cdclk = &i965gm_cdclk_funcs;
+		display->cdclk.funcs = &i965gm_cdclk_funcs;
 	} else if (display->platform.i965g) {
-		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
+		display->cdclk.funcs = &fixed_400mhz_cdclk_funcs;
 	} else if (display->platform.pineview) {
-		display->funcs.cdclk = &pnv_cdclk_funcs;
+		display->cdclk.funcs = &pnv_cdclk_funcs;
 	} else if (display->platform.g33) {
-		display->funcs.cdclk = &g33_cdclk_funcs;
+		display->cdclk.funcs = &g33_cdclk_funcs;
 	} else if (display->platform.i945gm) {
-		display->funcs.cdclk = &i945gm_cdclk_funcs;
+		display->cdclk.funcs = &i945gm_cdclk_funcs;
 	} else if (display->platform.i945g) {
-		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
+		display->cdclk.funcs = &fixed_400mhz_cdclk_funcs;
 	} else if (display->platform.i915gm) {
-		display->funcs.cdclk = &i915gm_cdclk_funcs;
+		display->cdclk.funcs = &i915gm_cdclk_funcs;
 	} else if (display->platform.i915g) {
-		display->funcs.cdclk = &i915g_cdclk_funcs;
+		display->cdclk.funcs = &i915g_cdclk_funcs;
 	} else if (display->platform.i865g) {
-		display->funcs.cdclk = &i865g_cdclk_funcs;
+		display->cdclk.funcs = &i865g_cdclk_funcs;
 	} else if (display->platform.i85x) {
-		display->funcs.cdclk = &i85x_cdclk_funcs;
+		display->cdclk.funcs = &i85x_cdclk_funcs;
 	} else if (display->platform.i845g) {
-		display->funcs.cdclk = &i845g_cdclk_funcs;
+		display->cdclk.funcs = &i845g_cdclk_funcs;
 	} else if (display->platform.i830) {
-		display->funcs.cdclk = &i830_cdclk_funcs;
+		display->cdclk.funcs = &i830_cdclk_funcs;
 	}
 
-	if (drm_WARN(display->drm, !display->funcs.cdclk,
+	if (drm_WARN(display->drm, !display->cdclk.funcs,
 		     "Unknown platform. Assuming i830\n"))
-		display->funcs.cdclk = &i830_cdclk_funcs;
+		display->cdclk.funcs = &i830_cdclk_funcs;
 }
 
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 5a1aee340728..a319fb97dafa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -313,9 +313,6 @@ struct intel_display {
 	struct {
 		/* Top level crtc-ish functions */
 		const struct intel_display_funcs *display;
-
-		/* Display CDCLK functions */
-		const struct intel_cdclk_funcs *cdclk;
 	} funcs;
 
 	struct {
@@ -345,6 +342,9 @@ struct intel_display {
 	} bw;
 
 	struct {
+		/* Internal CDCLK functions */
+		const struct intel_cdclk_funcs *funcs;
+
 		/* The current hardware cdclk configuration */
 		struct intel_cdclk_config hw;
 
-- 
2.47.3

