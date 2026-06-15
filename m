Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6jicMTdiMGptSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8C8689E89
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ly2vyPhi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C022210E6D0;
	Mon, 15 Jun 2026 20:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8FEF10E6D2;
 Mon, 15 Jun 2026 20:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555764; x=1813091764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=13J8DZBgZGqDUinGpuk0keq9glQhKNYS/1F3TDJTt8s=;
 b=ly2vyPhikWbC4Fv3VEpdH5Tumj0XSW32m6/zuktmO9NSySYO3pQXR+PR
 zYrOEZQ9BLrUYH/CfNf5iuMZDO/A3bR0uJf9BZ1AuGPl4BE5h1Xhcvjrf
 RINiBI6IxSptcZcDocB8VnipHKO7El7o9FG7SsG4D8/RaXMYRXHllRgvg
 WgfTsmPq3at9KOpPUHNogABXyWt2TbXdQMdW/QiRcajvy+yNb0H35ONOk
 TsxWxBH+uCR9U6gppKHe1DPghd4VMQ7w7wIitZLbogUdRyYFgLa/nHElK
 gUhG+I9eBWtHWfAZzIKOYZM0TqcyQJ+m8/gZUXWalDMWQxbQ3xnDseoj6 w==;
X-CSE-ConnectionGUID: B9yMgjP0QfGcPEiepTiE4g==
X-CSE-MsgGUID: N0P6uPQ9TMKyTJUuwoMJyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694755"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694755"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:36:04 -0700
X-CSE-ConnectionGUID: U/9pwDPmSvqBjklmboR/Gg==
X-CSE-MsgGUID: scK0upUIS+2vNuEsTXTAHQ==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2026 13:36:02 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 07/22] drm/i915/display: Pass transcoder to
 intel_set_transcoder_timings_lrr()
Date: Tue, 16 Jun 2026 01:33:24 +0530
Message-Id: <20260615200339.885190-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260615200339.885190-1-animesh.manna@intel.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A8C8689E89

Make intel_set_transcoder_timings_lrr() take the target transcoder as an
explicit parameter instead of always using crtc_state->cpu_transcoder.
This allows the LRR timing programming sequence to be reused for other
transcoders (e.g. CMTG).

Move the intel_vrr_set_fixed_rr_timings() and intel_vrr_transcoder_enable()
calls out of intel_set_transcoder_timings_lrr() and into its only caller
intel_pipe_fastset(), so the helper now strictly programs the LRR timing
registers for the given transcoder.

No functional change intended.

v2:
- Add separate patch for renaming the cpu_transcoder variable. [Ville]

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8f8e24565a6d..049038742517 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2777,10 +2777,10 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	}
 }
 
-static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
+static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
+					     enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 
@@ -2845,9 +2845,6 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
-
-	intel_vrr_set_fixed_rr_timings(crtc_state);
-	intel_vrr_transcoder_enable(crtc_state);
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
@@ -6694,8 +6691,11 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
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
2.29.0

