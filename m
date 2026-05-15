Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oO0INzvuBmrOowIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 11:58:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF8854CE21
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 11:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205E610F4F2;
	Fri, 15 May 2026 09:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EiQW1pR4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093A610F4D5;
 Fri, 15 May 2026 09:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778839097; x=1810375097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fYWEs6S/Jv/dRRNX82nz/jNJYVjOgt3uQPdwbEUCAVg=;
 b=EiQW1pR4N59Frf0dkN4ANBl9kCAUVUNnvsc/A3Men3F77/jpFCojbmG2
 B8umSXARaIDZFViUJrdB23nIIzA4d+bedIBNWmfmmqVpym3b4nOOvLphV
 ovltwnGGBZiE//Ic38HpeoLHwx6SC+3FPlpNxG7qtgwkx5Dso7Vihj24u
 HLcf12cla9hexgMS1fh3xmboXIshDnUVW20+mWX8LN9hI4Mb42thBjFAE
 1hSZjceZXj4VsHYwbRsNJvHsTk4DA5XgI6RoA4OjFVR1s/IEQsNZgDiQC
 0BE+VEuvzFDB5ZINWUe9TBqggCCUUxDs84HNIUro9XVP4fWU4u1I47y3E A==;
X-CSE-ConnectionGUID: +eLDFMLlSx+8N0ZQR404Aw==
X-CSE-MsgGUID: 7ZnLKtpMSdq+2befXd9QTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="82360384"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="82360384"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 02:58:16 -0700
X-CSE-ConnectionGUID: YxSHagJTTYiEKhfZ5Z7lxQ==
X-CSE-MsgGUID: xL/BolAhT9u9gpYyECbyxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="235601815"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 02:58:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for Xe3p
Date: Fri, 15 May 2026 12:57:56 +0300
Message-ID: <20260515095756.2799483-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515095756.2799483-1-jouni.hogander@intel.com>
References: <20260515095756.2799483-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Rspamd-Queue-Id: 8FF8854CE21
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

In Xe3p there is an HW optimization done. When there is an SU triggered in
Capture state, Link will be kept ON post Capture CRC SDP. Before valid SU
pixels Intel source will transmit dummy pixels. Some TCONS are improperly
considering these dummy pixels as a valid pixel data. Prior Xe3p link was
was turned off even if there was SU triggered in capture state and no dummy
pixels were transmitted. These dummy pixels are problem only if SDP on
prior scanline is used and Early Transport is not in use. The workaround is
to start SU area always at scanline 0.

v2: use intel_display_wa

Bspec: 74741, 79482
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c        | 5 +++++
 3 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 7d3d63a59882..2094eda09c91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -136,6 +136,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return DISPLAY_VER(display) == 20 &&
 			IS_DISPLAY_VERx100_STEP(display, 3000,
 						STEP_A0, STEP_B0);
+	case INTEL_DISPLAY_WA_16029024088:
+		return DISPLAY_VER(display) >= 35;
 	case INTEL_DISPLAY_WA_18034343758:
 		return DISPLAY_VER(display) == 20 ||
 			(display->platform.pantherlake &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 15fec843f15e..9cdd148ea4fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -52,6 +52,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_16025596647,
+	INTEL_DISPLAY_WA_16029024088,
 	INTEL_DISPLAY_WA_18034343758,
 	INTEL_DISPLAY_WA_22010178259,
 	INTEL_DISPLAY_WA_22010947358,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2f78d76c4ee1..8d8a9ff31718 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2913,6 +2913,11 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
 
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16029024088) &&
+	    crtc_state->req_psr2_sdp_prior_scanline &&
+	    !crtc_state->enable_psr2_su_region_et)
+		crtc_state->psr2_su_area.y1 = 0;
+
 	/* Wa 14019834836 */
 	if (DISPLAY_VER(display) == 30)
 		intel_psr_apply_pr_link_on_su_wa(crtc_state);
-- 
2.43.0

