Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O+6UAk2EJ2rZyQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 05:11:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A458B65BFCC
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 05:11:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VX8ymA8F;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E0E10E06F;
	Tue,  9 Jun 2026 03:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B9C10E064;
 Tue,  9 Jun 2026 03:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780974666; x=1812510666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yQXHpNToIvpIhKaG+ghb4K2hzAFg2zxeRAu3B/My5q8=;
 b=VX8ymA8FmNg6qXgG314qKaRyfATCDOaVBhHVYZqgDDr+UYWPwvZ64jih
 GqROrCXlIuCHiUdU2gRnGetcPOevVJS1UoNq0xudXrxeBdNuRK7inHygP
 HRteQ1dnDY13uiipEpGKjlcWEHkKtWSYTklegcQJJPuTuKta0cPXCGKg2
 S7Ogq2eSo6veTztfTurAkKb1nkZt3Xl8hc64XsUE99TBbYxDYIFM2+Wwj
 iS0D0+ovPpMK/70jI62J8pEUJDDOdriBR7UzoHZnc4Omvq3C869LRj1pX
 I6A/OcCcmAWPActrHi+PSQc2RncJ3OJIFh8aTpJdhCOhe5sRSWj111XhL g==;
X-CSE-ConnectionGUID: 4Y6df4O9QD2viGM1+Fjwyw==
X-CSE-MsgGUID: 4aNphwlfRQ2xRPkHYKsHLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85351716"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="85351716"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 20:11:06 -0700
X-CSE-ConnectionGUID: kgQBk1CFRsqRXChwyL1gDw==
X-CSE-MsgGUID: TVrfpTf5QMO8Po0ElEWEfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="241287287"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 20:11:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Handle VSYNC timing in LRR path
Date: Tue,  9 Jun 2026 08:23:24 +0530
Message-ID: <20260609025325.1128543-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260609025325.1128543-1-ankit.k.nautiyal@intel.com>
References: <20260609025325.1128543-1-ankit.k.nautiyal@intel.com>
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
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A458B65BFCC

LRR already updates crtc_vtotal/crtc_vblank_end seamlessly.
Extend the same handling to crtc_vsync_start/crtc_vsync_end so
VSYNC timing changes are programmed and accepted via the LRR path instead
of forcing a full modeset.

v2: Add comment explaining why TRANS_VSYNC update is safe for DP LRR.
    (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8e269b71f18e..90a0f3799476 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2816,6 +2816,16 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
+
+	/*
+	 * DP doesn't have vertical sync, so TRANS_VSYNC only affects
+	 * the position of the vsync interrupt (and does so even when
+	 * using the VRR timing generator!). Thus updating TRANS_VSYNC
+	 * here seems fine even if it isn't double buffered.
+	 */
+	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 	/*
 	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
 	 * bits are not required. Since the support for these bits is going to
@@ -5189,9 +5199,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
 	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 	if (!fastset || !pipe_config->update_lrr) { \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
 	} \
@@ -5805,6 +5815,8 @@ static bool lrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 
 	return old_adjusted_mode->crtc_vblank_start != new_adjusted_mode->crtc_vblank_start ||
 		old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
+		old_adjusted_mode->crtc_vsync_start != new_adjusted_mode->crtc_vsync_start ||
+		old_adjusted_mode->crtc_vsync_end != new_adjusted_mode->crtc_vsync_end ||
 		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal ||
 		old_crtc_state->set_context_latency != new_crtc_state->set_context_latency;
 }
-- 
2.45.2

