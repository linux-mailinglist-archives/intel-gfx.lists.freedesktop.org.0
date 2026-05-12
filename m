Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLZALm4vA2qN1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD1E521940
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 831E110EAD6;
	Tue, 12 May 2026 13:47:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKVJ7GnS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1716010EA9D;
 Tue, 12 May 2026 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593642; x=1810129642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X9rHKUCtbwMfNPkw8SWa6xrQcyqIY1lVs08hF08tfxU=;
 b=PKVJ7GnS77dcsXqHlymwofChmzpDUciACkIgfxk1xN9Qf1R10VxlrCfn
 ShkjivBm+0+UEHM3VjhBwhWUBYLgWNkB9Z1iz4jo8b1EM58yLzZewLxcg
 YMoti8Wt5c9LdIIlkOGe/ya6hveiIiluvwEIugpC1Zsx6HS1chufl48zy
 demUD6vyq05cgtgZ8ILhzn2MXJ5H1AskBaAh2bwVOIoNqf7mINuxh5ESa
 L9uofsZNQhhSm5fx5nIBIr1bGGCFsG9neArr6NAj+CpfaJKeoI8ePl1hQ
 2wAjmEokXCG6I1RNW6vDWWwu5F6O4xV//IaIhgfO7gt4QANqeuCIrpvij g==;
X-CSE-ConnectionGUID: l5mj2N+RQHu1iZIYHOLvRQ==
X-CSE-MsgGUID: IgUW09P5Qhm9hDPxt6QQQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90604312"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90604312"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:22 -0700
X-CSE-ConnectionGUID: lXQEcmAQS4+7fN7tdntaOQ==
X-CSE-MsgGUID: CpSdnqD8RZu8ElMeHLRHww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261257374"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/6] drm/i915/display: Deprecate TRANS_VSYNC where VRR TG is
 always on
Date: Tue, 12 May 2026 19:02:44 +0530
Message-ID: <20260512133249.2475882-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
References: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 6AD1E521940
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

The VRR Timing generator does not use TRANS_VSYNC register, instead it
use TRANS_VRR_VSYNC registers for both variable and fixed timings.

Avoid using TRANS_VSYNC registers for platforms that always use VRR
timing generator. The crtc_vsync_{start, end} fields of the adjusted
mode can still be filled with the Vsync start/end values, while readback
these can be derived from TRANS_VRR_VSYNC. Since the TRANS_VRR_VSYNC
register has vrr_vsync_{start,end} measured from the Vtotal, to get the
crtc_vsync_{start, end} we need to subtract the vrr values from the
Vtotal.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.c     | 31 ++++++++++++++------
 2 files changed, 37 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5cf1476c7b9..548a12aff88f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2653,6 +2653,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+	u32 crtc_vsync_start, crtc_vsync_end;
 	int vsyncshift = 0;
 
 	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
@@ -2727,9 +2728,17 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		crtc_vsync_start = 1;
+		crtc_vsync_end = 1;
+	} else {
+		crtc_vsync_start = adjusted_mode->crtc_vsync_start;
+		crtc_vsync_end = adjusted_mode->crtc_vsync_end;
+	}
+
 	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
-		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
-		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+		       VSYNC_START(crtc_vsync_start - 1) |
+		       VSYNC_END(crtc_vsync_end - 1));
 
 	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
@@ -5162,8 +5171,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
 	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+	if (!intel_vrr_always_use_vrr_tg(display)) { \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+	} \
 	if (!fastset || !pipe_config->update_lrr) { \
 		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1b09992ce9fd..24aa74475e64 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1099,24 +1099,37 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
 		}
 
+		if (HAS_AS_SDP(display)) {
+			trans_vrr_vsync =
+				intel_de_read(display,
+					      TRANS_VRR_VSYNC(display, cpu_transcoder));
+			crtc_state->vrr.vsync_start =
+				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
+			crtc_state->vrr.vsync_end =
+				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
+		}
+
 		/*
 		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
 		 * bits are not filled. Since for these platforms TRAN_VMIN is always
 		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
 		 * adjusted_mode.
+		 *
+		 * Similarly Vsync start/end are also not used when VRR TG is used.
+		 * Use the TRANS_VRR_VSYNC to fill these. Since these are relative
+		 * from the Vtotal, subtract from the crtc_vtotal to get the correct
+		 * value.
 		 */
-		if (intel_vrr_always_use_vrr_tg(display))
+		if (intel_vrr_always_use_vrr_tg(display)) {
 			crtc_state->hw.adjusted_mode.crtc_vtotal =
 				intel_vrr_vmin_vtotal(crtc_state);
 
-		if (HAS_AS_SDP(display)) {
-			trans_vrr_vsync =
-				intel_de_read(display,
-					      TRANS_VRR_VSYNC(display, cpu_transcoder));
-			crtc_state->vrr.vsync_start =
-				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
-			crtc_state->vrr.vsync_end =
-				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
+			crtc_state->hw.adjusted_mode.crtc_vsync_start =
+				crtc_state->hw.adjusted_mode.crtc_vtotal -
+				crtc_state->vrr.vsync_start;
+			crtc_state->hw.adjusted_mode.crtc_vsync_end =
+				crtc_state->hw.adjusted_mode.crtc_vtotal -
+				crtc_state->vrr.vsync_end;
 		}
 	}
 
-- 
2.45.2

