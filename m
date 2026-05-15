Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QElQMF3QBmqKoAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:50:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7125754AD28
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF7410F447;
	Fri, 15 May 2026 07:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKcazpRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8052110E425;
 Fri, 15 May 2026 07:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778831446; x=1810367446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fc5qMshkvAFRwTu0Nb37Yfwf/ho7y3XJPiHsAGaLCCM=;
 b=jKcazpRyGB17GOHmHyiF80lvDTZzh6LI1SIlPR7OUbd2Bwujfr4QANrm
 SvufFI0CI/YmOIoFd7EE1OW7q9136latfjKrDmJUU72gGpDHZ/fXu7Qu7
 tj/PZn7JNe1GTco3ra/4/pdBmooy7FBl/MWR5EmNDX0s8stAHGyO1KbtI
 mW92o1eBQaNk1sVrgft2lbSOZenH/3xAMSXOJJHFGcp8+cB36RMdQqCGG
 0T+HYnKIXRZipoNhb73ibobKttpvN2JnIkjDwQjy8y5+rD0R4vgvGYEyZ
 bxXqion2vQHKbOQ/hTRN6WARCF6bhStc1PkIjf4tzOm6fVAEUvkHZHWrg Q==;
X-CSE-ConnectionGUID: mphkSY8ARnuDxa07HgIO6w==
X-CSE-MsgGUID: KLEum3kgTYyZoKrJxwwKAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="90480655"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90480655"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 00:50:46 -0700
X-CSE-ConnectionGUID: ucm1njCrRCKpqgQeEtDzEQ==
X-CSE-MsgGUID: GJ12YmwbS5mo/lvf2L3XRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243604216"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 00:50:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL computation
Date: Fri, 15 May 2026 13:06:15 +0530
Message-ID: <20260515073616.2794146-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
References: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 7125754AD28
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

The SCL condition checks can be combined into one expression.
needs_sel_update is common for both display version branches, so check it
once and keep the version specific checks together.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8f70b7dcd881..5bf1d782188c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1477,15 +1477,12 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
 	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
 	 */
 
-	if (DISPLAY_VER(display) >= 30 && (needs_panel_replay ||
-					   needs_sel_update))
+	if (needs_sel_update ||
+	    (DISPLAY_VER(display) >= 30 && needs_panel_replay) ||
+	    (DISPLAY_VER(display) < 30 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)))
 		return 0;
-	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
-					       intel_crtc_has_type(crtc_state,
-								   INTEL_OUTPUT_EDP)))
-		return 0;
-	else
-		return 1;
+
+	return 1;
 }
 
 static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,
-- 
2.45.2

