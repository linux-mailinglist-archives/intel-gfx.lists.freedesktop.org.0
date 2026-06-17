Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F+MiNRYsMmpkwAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:09:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E43D69692C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:09:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=S+wb1Un1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC91410EDEE;
	Wed, 17 Jun 2026 05:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD2F710EDEB;
 Wed, 17 Jun 2026 05:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781672977; x=1813208977;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pvqD/LwyyT6DdEXrOSjkO6U5xoVebvxsqKnOIH30l4M=;
 b=S+wb1Un1V0FwnA54+jCiOwHSDDwzLXb4qNQGHZpFc09B6QaTnSfHueY4
 DpXCadqmV0Zs+d66sxEcojsjDRFiHm2Zfchm7/+fdCxpgFOhKCMqO+KI5
 Sa/m9qy8lgt2tTwUPfE0vPxKxNEgN9wdx+MPd9fJAP/NOuGLVTRHxvu7R
 efQmojiB2ar3Zoq9zaUp1ytg+4/dKYcjYrL6wp4sYgV500F9BonjtwYke
 rTvKWo87q/eU8K1dkw2fAJ78IjgGrCoUwaNewktFUKyan3FMpayWOqjYq
 zBg5EwOCel48SmCK+ppVUk/IvJDaIJEOr/U78SvujjanluzxDcfhWeodi w==;
X-CSE-ConnectionGUID: GosqJTv9SQSwkW1gwxXOVw==
X-CSE-MsgGUID: 9/Xu7ciXQc+mm5J1Llx+wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82242287"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82242287"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:09:29 -0700
X-CSE-ConnectionGUID: eKPFmqgiScCB8GNbfKxQCA==
X-CSE-MsgGUID: wV5s5y0LRSWT/ssIy6MS4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="247835869"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 16 Jun 2026 22:09:28 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com, suraj.kandpal@intel.com
Subject: [PATCH RESEND v2] drm/i915/display: Program TRANS_VTOTAL from mode
 vtotal
Date: Wed, 17 Jun 2026 10:28:50 +0530
Message-ID: <20260617045850.862100-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E43D69692C

There are monitors being sensitive to MSA and end up
blanking out when we override Vtotal, DP transcoder
uses TRANS_VTOTAL to derive MSA VTotal. Avoid overriding
crtc_vtotal to 1 on platform which supports VRR Timing
generator and always program VTOTAL from mode timing in
transcoder timing paths.

--v2:
- Remove write to crtc_state->hw.adjusted_mode.crtc_vtotal
during intel_vrr_get_config. (Ankit)
- Fix merge conflicts.

Bspec: 70001
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 -----------------
 drivers/gpu/drm/i915/display/intel_vrr.c     | 10 ----------
 2 files changed, 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e76aa6c8dab6..42eb4c5bc9b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2737,15 +2737,6 @@ void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
-	/*
-	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
-	 * bits are not required. Since the support for these bits is going to
-	 * be deprecated in upcoming platforms, avoid writing these bits for the
-	 * platforms that do not use legacy Timing Generator.
-	 */
-	if (intel_vrr_always_use_vrr_tg(display))
-		crtc_vtotal = 1;
-
 	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
@@ -2834,14 +2825,6 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
 	intel_de_write(display, TRANS_VSYNC(display, transcoder),
 		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
 		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
-	/*
-	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
-	 * bits are not required. Since the support for these bits is going to
-	 * be deprecated in upcoming platforms, avoid writing these bits for the
-	 * platforms that do not use legacy Timing Generator.
-	 */
-	if (intel_vrr_always_use_vrr_tg(display))
-		crtc_vtotal = 1;
 
 	/*
 	 * The double buffer latch point for TRANS_VTOTAL
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index cd380fe8fd01..5d9b11185296 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1102,16 +1102,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
 		}
 
-		/*
-		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
-		 * bits are not filled. Since for these platforms TRAN_VMIN is always
-		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
-		 * adjusted_mode.
-		 */
-		if (intel_vrr_always_use_vrr_tg(display))
-			crtc_state->hw.adjusted_mode.crtc_vtotal =
-				intel_vrr_vmin_vtotal(crtc_state);
-
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
 				intel_de_read(display,
-- 
2.48.1

