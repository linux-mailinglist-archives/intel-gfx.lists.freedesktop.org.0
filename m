Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MhrTFWxFMWolfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D313768F7D5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EUsckTRW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EDD10EAF8;
	Tue, 16 Jun 2026 12:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD3A10EAE1;
 Tue, 16 Jun 2026 12:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613927; x=1813149927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WGbuwFXZxly96h4C3q5EF/EIGjZKflY5JgO9hr8RnlU=;
 b=EUsckTRWGBDNZkIDGbNYAMXyGC7oc0fcEGqC9ocOVJAFkDo+DlLq5OzR
 IssxsPkR3pYsrDYXqUde3Fbi94Fp+Il/KZDC4B1l6ASnoj8aeRalnB7ZC
 QybNhKht4uglh81ZBlOglsgV7FEkDRTIWJCZxFw+wgUSci6LUAznQhM5C
 FE4e72vMmfhhWbYHVaDenDc12Npihce5eNyg+hDecJVsZvoYZJ/s06qIQ
 XQ7c2pAxznHWx0PEKWnlb7vt9MwXPkmxihaYzRivJhykez18zPaQ4X2qR
 DtIa8NSaW01cyOITOaUy4nqlGAyRZE+k/XT0FoI8/4AR+MqQJ5C0J6mvu w==;
X-CSE-ConnectionGUID: yOJqYYbIQSKZB5HhTUBmoA==
X-CSE-MsgGUID: alAfibN4TxOnOjXL74psWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513232"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513232"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:27 -0700
X-CSE-ConnectionGUID: NziSIVb0Rfij9ohP3BPHzw==
X-CSE-MsgGUID: IJUcc+NqRSKJ0L5FvVylHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876260"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:26 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 07/39] drm/i915/display: Pass transcoder to
 intel_set_transcoder_timings_lrr()
Date: Tue, 16 Jun 2026 18:13:43 +0530
Message-ID: <20260616124416.2442161-8-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D313768F7D5

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
2.43.0

