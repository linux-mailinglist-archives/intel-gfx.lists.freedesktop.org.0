Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5xZkNOAoMmq5vwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 06:56:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7D56968AA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 06:56:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UUUsIvUP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28E410EDE2;
	Wed, 17 Jun 2026 04:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CE010E916;
 Wed, 17 Jun 2026 04:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781672157; x=1813208157;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EQHgE5OFehfVc6fpZyoK0Zt70CyWEFds+8zcLMpa/mY=;
 b=UUUsIvUPYLt+A3uaXKgxz/4gLMcxV0zUw0tnBJVuEdI0lYHi+rM0MiLl
 EXwxfc5HnZsc8NCHRuN1iqCeik6mkg0/h3uaipQnCbSqvInPDITavOU5H
 Q/ygMZ903680RgDfiO4+6/alCas/PGEDbR/OaLyaPn8nhAXDQYjF2qpI+
 /j14fQLiYUsySk0SWe2IuXWoiu+hHOaGDVvh6b8snfPNVk6W7PEDMajAE
 Ob7ABcjkTo066poVTToArcRLUaRTq93wbNXAntZJUzyAsR8xOFdDm8Zeq
 6UibuQ3uqHY1hCy4FfHR011Ve7LxnXDz3MCjZ5sJRGh31THmhDX7z37lC A==;
X-CSE-ConnectionGUID: wkKhhrzBSYqMfqWjhizbUQ==
X-CSE-MsgGUID: TrEwB2B5SyWItjyErgiQJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93023809"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93023809"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 21:55:57 -0700
X-CSE-ConnectionGUID: y8Y8f412SNy29xXAwv5TDA==
X-CSE-MsgGUID: YKwlPhrjShehfxgWDKiufA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="249869911"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 16 Jun 2026 21:55:54 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com, suraj.kandpal@intel.com
Subject: [PATCH RESEND v2] drm/i915/display: Program TRANS_VTOTAL from mode
 vtotal
Date: Wed, 17 Jun 2026 10:15:17 +0530
Message-ID: <20260617044517.844010-1-mitulkumar.ajitkumar.golani@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C7D56968AA

There are monitors being sensitive to MSA and end up
blanking out when we override Vtotal, DP transcoder
uses TRANS_VTOTAL to derive MSA VTotal. Avoid overriding
crtc_vtotal to 1 on platform which supports VRR Timing
generator and always program VTOTAL from mode timing in
transcoder timing paths.

--v2:
- Remove write to crtc_state->hw.adjusted_mode.crtc_vtotal
during intel_vrr_get_config. (Ankit)

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
index e2e4b00a8fa9..eb54f20b1859 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2731,15 +2731,6 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
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
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
@@ -2826,14 +2817,6 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
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
index e03b5daac5be..bd90282b2ad2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1097,16 +1097,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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

