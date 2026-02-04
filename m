Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGwBO7HWgml5cQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A06E1DC1
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512B610E26E;
	Wed,  4 Feb 2026 05:18:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjB4idgP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F5A10E26E;
 Wed,  4 Feb 2026 05:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770182318; x=1801718318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XmBJdc1SSpPcTwuPNr8vq8i0vVX5qMgNU3EKX46q8Qk=;
 b=QjB4idgPJ3zk8uNbl7a6F2xNx1dH7gUR/f1cfyECTDlMJ55XMt/r+xt5
 tZVmxwj5yL2G5D+RnPkhPl3a5yjMTApWrjdOMY0V/H1cDBZ9ksebV5iWC
 WNWyugMSPByn0/suEzs5kBhdOk/yuJ5u6ExbL6FUBGKbzX69sdW5iY+6S
 KE/Zg8aSnlb6e6SbFWZwduncuY1b5pg8+cNTNQK4B+HUt4fOy9RukbbgS
 s9Im82JuV1pI660dDzihJj4qbkil4ys3OFdbov8rws+DtAZBd5wHQQOnb
 5azIoFODE/rrVzuUQ90sJ4pCsIoFlwDSIlmXRj6FPbIXDD2002e4WpwjE g==;
X-CSE-ConnectionGUID: NTxuNiCKRqio7hQFGSes6w==
X-CSE-MsgGUID: NFtkJQx5T3OegGUSkUv/Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82102820"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="82102820"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:38 -0800
X-CSE-ConnectionGUID: iJynhQE4TXeOvHHez6xfZg==
X-CSE-MsgGUID: ib0seTVFRyOYf3ShJR5c/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210127483"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, michal.grzelak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND 2/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Date: Wed,  4 Feb 2026 10:32:47 +0530
Message-ID: <20260204050250.762718-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
References: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C4A06E1DC1
X-Rspamd-Action: no action

LOBF must be disabled if the number of lines within Window 1 is not greater
than ALPM_CTL[ALPM Entry Check]

v2: Consider the case where SCL is in the active region. (Ville)

Bspec:71041
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 055184a3c7d5..27b26e5813dc 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -270,6 +270,23 @@ int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
 	return first_sdp_position + waketime_in_lines + crtc_state->set_context_latency;
 }
 
+static bool intel_alpm_lobf_is_window1_sufficient(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vblank = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
+	int window1;
+
+	/*
+	 * LOBF must be disabled if the number of lines within Window 1 is not
+	 * greater than ALPM_CTL[ALPM Entry Check]
+	 */
+	window1 = vblank - min(vblank,
+			       crtc_state->vrr.guardband +
+			       crtc_state->set_context_latency);
+
+	return window1 > crtc_state->alpm_state.check_entry_lines;
+}
+
 void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *crtc_state)
 {
@@ -279,6 +296,11 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	if (!crtc_state->has_lobf)
 		return;
 
+	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
+		crtc_state->has_lobf = false;
+		return;
+	}
+
 	/*
 	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
 	 * window to the position of the first SDP is greater than the time it takes
-- 
2.45.2

