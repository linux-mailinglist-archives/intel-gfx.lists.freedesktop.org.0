Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h49wGedoKmqnowMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:51:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8AC66F90B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:51:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MWnYZ5+6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A49010ED4B;
	Thu, 11 Jun 2026 07:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247B710ED52;
 Thu, 11 Jun 2026 07:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781164260; x=1812700260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eUOzjy1w8NlluuodkpWCsuexb7tcqJ1sVaks0gfrfn0=;
 b=MWnYZ5+6uLJRU1RdQHkVt3cCacM1BOaAozjKgCIst96e3VxDDz4YJAy0
 zwd49GgCqHrC7FxWUaLK2oijkaKKzVdVHJ3vEuOlPzoMF1oVx8DIblhPE
 2Z47pIAwtPU4vEV+44XfybwgpzM2GUIRdXiQQH5718GhlNTYRjuEe5vfV
 uC689+dzyF+Ghkk/VUbSdL39axWggOfZC/Vjb1RPVWK+SH1ijU/GmkAYp
 8DNYocH4/1htNv60kQe9iPWAKYPSkskKqTNktxJFcMutBXLBNxnPqp/zD
 oiaKKWLm2McsqgTFzF6hBy7ES7TQap5MzD4E+BjvwAIFDH2+nuXGGpBNG A==;
X-CSE-ConnectionGUID: G/q5KBtkRGOHvMmYJ7QwQA==
X-CSE-MsgGUID: PY6QYIm3QFymo6BRR7Mjjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93078744"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93078744"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:51:00 -0700
X-CSE-ConnectionGUID: 6Dbp3HuCTie+uQVAN6nHuQ==
X-CSE-MsgGUID: TmNjRVrYTfmLPSoso+3zvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="251503329"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:50:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v4 03/12] drm/i915/intel_dip: Add check for DP encoder
Date: Thu, 11 Jun 2026 13:03:05 +0530
Message-ID: <20260611073316.1439306-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
References: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE8AC66F90B

At the moment, the common register for programming Transmission line for
Extended Metadata Packet and Adaptive-Sync Secondary Data Packet
(EMP_AS_SDP_TL) is only used to program Adaptive-Sync SDP (AS SDP).

Since VRR and Video Timing Extended Metadat Packet (VTEMP) are not yet
implemented for HDMI, add an explicit check to write the register only
for DP encoders (that may use AS SDP) and reset the register for non-DP
encoders.

In subsequent changes, instead of directly writing the value,
appropriate helpers will be called, that will supply the transmission line
for these packets.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dip.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
index 2e2bdb2b199c..450a599b5053 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.c
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -26,14 +26,19 @@ void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 transmission_line = 0;
 
 	if (!HAS_EMP_AS_SDP_TL(display))
 		return;
 	/*
-	 * Since currently we support VRR only for DP/eDP, so this is programmed
-	 * only for Adaptive Sync SDP to Vsync start.
+	 * Since currently we support VRR only for DP/eDP, program the register
+	 * for Adaptive Sync SDP using vsync start. For non-DP encoders,
+	 * the register is reset to 0.
 	 */
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		transmission_line = crtc_state->vrr.vsync_start;
+
 	intel_de_write(display,
 		       EMP_AS_SDP_TL(display, cpu_transcoder),
-		       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+		       EMP_AS_SDP_DB_TL(transmission_line));
 }
-- 
2.45.2

