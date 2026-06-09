Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MZpwICgBKGo/7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1B165FCBA
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Rvx4GgnW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 956FB10E2E3;
	Tue,  9 Jun 2026 12:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE5510E2D4;
 Tue,  9 Jun 2026 12:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006629; x=1812542629;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A91e2QNU6lYvFyMzuir1ZlT8FjKdElo+9ScOTS8jV28=;
 b=Rvx4GgnWQIR2W6cvigO6jGVOoYmiWf64rjkw/0LGSxz5AiaFXWdswyXk
 Gw8pAEtnEhZ0mVJ2Gsq8LP817mj9NA/RoSs8eWukPC2QDSvInj2ehlgQR
 TjeAbvOzl7QizijrRCGqeFInWKOU+SelHL1XCUo/U5V/h+mZ8Ltr3fU5L
 Ir6645x1V6+DrUIgDy6DlSOJ4tnYMGnhZZXMLNw+D2+zVUvZ2NvihmEE0
 vrZ/wcXWZx0lOxWhezLyGj7vNoBjuRt+tH9T0HfXIYtBYLBfupVMWHfJg
 Y4pbzFTpNyVSG4VmxlHCYs0rybNKVPHi2heE8BrfiTJIq6gX/DC1GQ8Pv A==;
X-CSE-ConnectionGUID: n0NP1NO/TY+oIZ4e5Px5rA==
X-CSE-MsgGUID: n2ELWpr9RQm9R8PWMWKiuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340347"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340347"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:48 -0700
X-CSE-ConnectionGUID: wWMGnYd0QEK6C0TcVLN4gQ==
X-CSE-MsgGUID: oFghGz01QZadtgIWkjHZLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988252"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:47 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 06/36] drm/i915/display: Pass transcoder to
 intel_set_transcoder_timings_lrr()
Date: Tue,  9 Jun 2026 17:32:20 +0530
Message-ID: <20260609120250.867750-7-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E1B165FCBA

From: Animesh Manna <animesh.manna@intel.com>

Make intel_set_transcoder_timings_lrr() take the target transcoder as an
explicit parameter instead of always using crtc_state->cpu_transcoder.
This allows the LRR timing programming sequence to be reused for other
transcoders (e.g. CMTG).

Move the intel_vrr_set_fixed_rr_timings() and intel_vrr_transcoder_enable()
calls out of intel_set_transcoder_timings_lrr() and into its only caller
intel_pipe_fastset(), so the helper now strictly programs the LRR timing
registers for the given transcoder.

No functional change intended.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e0593c2c0fc2..dd33d1c55adb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2777,14 +2777,14 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	}
 }
 
-static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
+static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
+					     enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
 
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
@@ -2799,7 +2799,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
-			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
+			       TRANS_SET_CONTEXT_LATENCY(display, transcoder),
 			       crtc_state->set_context_latency);
 
 		/*
@@ -2816,7 +2816,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
 	 * But let's write it anyway to keep the state checker happy.
 	 */
-	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VBLANK(display, transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
 	/*
@@ -2832,12 +2832,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
-
-	intel_vrr_set_fixed_rr_timings(crtc_state);
-	intel_vrr_transcoder_enable(crtc_state);
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
@@ -6682,8 +6679,11 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_transcoder,
 					       &new_crtc_state->dp_m_n);
 
-	if (new_crtc_state->update_lrr)
-		intel_set_transcoder_timings_lrr(new_crtc_state);
+	if (new_crtc_state->update_lrr) {
+		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
+		intel_vrr_set_fixed_rr_timings(new_crtc_state);
+		intel_vrr_transcoder_enable(new_crtc_state);
+	}
 }
 
 static void commit_pipe_pre_planes(struct intel_atomic_state *state,
-- 
2.43.0

