Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJVcLNMS82k4xAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6329F49F3E9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FD010F29A;
	Thu, 30 Apr 2026 08:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hdz6rzM4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6AC10F297;
 Thu, 30 Apr 2026 08:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777537745; x=1809073745;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/gRA569Td9nst/GsfBCFM1+RmY+izsyNFUuK3H9OndY=;
 b=Hdz6rzM45NjF31NKPhqqo47vsqulrYuon62hdzRxSQ6Lq+0R1HnJiks+
 J0Qbp5+2xq+pv9gKiuIZ6lAbY4HVZ0yT1RFA3SJk83ylKIPjr7t5sQzKR
 NbZs/R9cYIiBPa5gbrcg/bQjIHrnAFrBzp/cAzozHKPDTjYerjdt0TxVT
 xNLD8d6ZY4mY3MZ4urm9wJCTc0szYwo9D3/TxYeiSh/5EZQ+mMDNVC7WC
 fPfG7gpXHEx5j97f8w2rq3vum/OOwxM/dTgGGp9byLjoOmkfsZvHjgbDN
 dqwExE0+7Q9MZrqLudPiJq/i3R5ji99Dgz0T2xtk0ZWJV9g187ZTQP+tN g==;
X-CSE-ConnectionGUID: h3jE8ZheSFWflWDOSHERYA==
X-CSE-MsgGUID: Q06jIlGZRcau48FNCRUA/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="88793350"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="88793350"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:05 -0700
X-CSE-ConnectionGUID: RMGKM9cCR7moAharlCcbzA==
X-CSE-MsgGUID: yXvufFeXR2mDovycGf0pMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="228015316"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/8] drm/i915/display: move color funcs under color sub-struct
Date: Thu, 30 Apr 2026 11:28:46 +0300
Message-ID: <77cc5dd365f3346c4cbbe7a5d883bca413138c94.1777537663.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 6329F49F3E9
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

Move color related functions under color sub-struct of struct
intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 58 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  6 +-
 2 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e7950655434b..0531c60e5e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1933,7 +1933,7 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->dsb_color)
 		return;
 
-	display->funcs.color->load_luts(crtc_state);
+	display->color.funcs->load_luts(crtc_state);
 }
 
 void intel_color_commit_noarm(struct intel_dsb *dsb,
@@ -1941,8 +1941,8 @@ void intel_color_commit_noarm(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (display->funcs.color->color_commit_noarm)
-		display->funcs.color->color_commit_noarm(dsb, crtc_state);
+	if (display->color.funcs->color_commit_noarm)
+		display->color.funcs->color_commit_noarm(dsb, crtc_state);
 }
 
 void intel_color_commit_arm(struct intel_dsb *dsb,
@@ -1950,15 +1950,15 @@ void intel_color_commit_arm(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	display->funcs.color->color_commit_arm(dsb, crtc_state);
+	display->color.funcs->color_commit_arm(dsb, crtc_state);
 }
 
 void intel_color_post_update(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (display->funcs.color->color_post_update)
-		display->funcs.color->color_post_update(crtc_state);
+	if (display->color.funcs->color_post_update)
+		display->color.funcs->color_post_update(crtc_state);
 }
 
 void intel_color_modeset(const struct intel_crtc_state *crtc_state)
@@ -2022,7 +2022,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!intel_color_uses_dsb(crtc_state))
 		return;
 
-	display->funcs.color->load_luts(crtc_state);
+	display->color.funcs->load_luts(crtc_state);
 
 	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
@@ -2113,19 +2113,19 @@ int intel_color_check(struct intel_atomic_state *state,
 	if (!intel_crtc_needs_color_update(new_crtc_state))
 		return 0;
 
-	return display->funcs.color->color_check(state, crtc);
+	return display->color.funcs->color_check(state, crtc);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	display->funcs.color->get_config(crtc_state);
+	display->color.funcs->get_config(crtc_state);
 
-	display->funcs.color->read_luts(crtc_state);
+	display->color.funcs->read_luts(crtc_state);
 
-	if (display->funcs.color->read_csc)
-		display->funcs.color->read_csc(crtc_state);
+	if (display->color.funcs->read_csc)
+		display->color.funcs->read_csc(crtc_state);
 }
 
 bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
@@ -2142,7 +2142,7 @@ bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
 	if (!is_pre_csc_lut && crtc_state->c8_planes)
 		return true;
 
-	return display->funcs.color->lut_equal(crtc_state, blob1, blob2,
+	return display->color.funcs->lut_equal(crtc_state, blob1, blob2,
 					       is_pre_csc_lut);
 }
 
@@ -4253,8 +4253,8 @@ intel_color_load_plane_csc_matrix(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(plane_state);
 
-	if (display->funcs.color->load_plane_csc_matrix)
-		display->funcs.color->load_plane_csc_matrix(dsb, plane_state);
+	if (display->color.funcs->load_plane_csc_matrix)
+		display->color.funcs->load_plane_csc_matrix(dsb, plane_state);
 }
 
 static void
@@ -4263,8 +4263,8 @@ intel_color_load_plane_luts(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(plane_state);
 
-	if (display->funcs.color->load_plane_luts)
-		display->funcs.color->load_plane_luts(dsb, plane_state);
+	if (display->color.funcs->load_plane_luts)
+		display->color.funcs->load_plane_luts(dsb, plane_state);
 }
 
 bool
@@ -4346,29 +4346,29 @@ void intel_color_init_hooks(struct intel_display *display)
 {
 	if (HAS_GMCH(display)) {
 		if (display->platform.cherryview)
-			display->funcs.color = &chv_color_funcs;
+			display->color.funcs = &chv_color_funcs;
 		else if (display->platform.valleyview)
-			display->funcs.color = &vlv_color_funcs;
+			display->color.funcs = &vlv_color_funcs;
 		else if (DISPLAY_VER(display) >= 4)
-			display->funcs.color = &i965_color_funcs;
+			display->color.funcs = &i965_color_funcs;
 		else
-			display->funcs.color = &i9xx_color_funcs;
+			display->color.funcs = &i9xx_color_funcs;
 	} else {
 		if (DISPLAY_VER(display) >= 12)
-			display->funcs.color = &tgl_color_funcs;
+			display->color.funcs = &tgl_color_funcs;
 		else if (DISPLAY_VER(display) == 11)
-			display->funcs.color = &icl_color_funcs;
+			display->color.funcs = &icl_color_funcs;
 		else if (DISPLAY_VER(display) == 10)
-			display->funcs.color = &glk_color_funcs;
+			display->color.funcs = &glk_color_funcs;
 		else if (DISPLAY_VER(display) == 9)
-			display->funcs.color = &skl_color_funcs;
+			display->color.funcs = &skl_color_funcs;
 		else if (DISPLAY_VER(display) == 8)
-			display->funcs.color = &bdw_color_funcs;
+			display->color.funcs = &bdw_color_funcs;
 		else if (display->platform.haswell)
-			display->funcs.color = &hsw_color_funcs;
+			display->color.funcs = &hsw_color_funcs;
 		else if (DISPLAY_VER(display) == 7)
-			display->funcs.color = &ivb_color_funcs;
+			display->color.funcs = &ivb_color_funcs;
 		else
-			display->funcs.color = &ilk_color_funcs;
+			display->color.funcs = &ilk_color_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c61990ca9e29..db07e332af5a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -319,9 +319,6 @@ struct intel_display {
 
 		/* fdi display functions */
 		const struct intel_fdi_funcs *fdi;
-
-		/* Display internal color functions */
-		const struct intel_color_funcs *color;
 	} funcs;
 
 	struct {
@@ -365,6 +362,9 @@ struct intel_display {
 	} cdclk;
 
 	struct {
+		/* internal color functions */
+		const struct intel_color_funcs *funcs;
+
 		struct drm_property_blob *glk_linear_degamma_lut;
 	} color;
 
-- 
2.47.3

