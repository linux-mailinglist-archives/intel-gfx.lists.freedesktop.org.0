Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MZyF1Fs3GmdQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173863E7240
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CCA10E2FF;
	Mon, 13 Apr 2026 04:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+bgTWPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF8510E2FD;
 Mon, 13 Apr 2026 04:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053326; x=1807589326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z5gFFtsotVm9ZEIlyyFMVlFd33VIrAf7ndC0EseCbzA=;
 b=E+bgTWPRV/C2isop9CjLq95KAuOCD6OA6TRq0xb6Wypvse5I+aRUigi5
 nVhla94YGpBfqY8R2VgyKYrXXExrgADBHwWoZSscOp23JaZudp9f2DyFg
 tqMjT+WBBLBpB+AodsS+h57sZwAxRcW8h/qMZzRiSXMPgRF9Sd0AglfBy
 SXDago9aDlYvR98FoQuA5K6JsMGm5StMpDtflnOCw7EF6bBd4LdbxXmP2
 Deo0EMLwTXUy4QNhtwv6XFIhMF7JlslEJw1LyN2LxGEzanX51EC8G1GgO
 5odoaDGs3iir5oOxt9ppdljly/QSM8E0ulssoTQj5JQPUNh2elNeBj2vY Q==;
X-CSE-ConnectionGUID: vAAnioLTT3mZ5o23C6fFog==
X-CSE-MsgGUID: RPLSMt7GTjmSbnKmdcGvVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568736"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568736"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:46 -0700
X-CSE-ConnectionGUID: R4wWflCWTpa8Sk2ggfV6+w==
X-CSE-MsgGUID: 5oD03rPsSXy0B8C4C7JwDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546593"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 01/12] drm/i915/vrr: Add HAS_EMP_AS_SDP_TL macro
Date: Mon, 13 Apr 2026 09:23:38 +0530
Message-ID: <20260413035349.1730312-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 173863E7240
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
double buffering point and transmission line for VRR packets for
HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.

Add a macro for this and use it in intel_vrr.c

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_vrr.c            | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1170ac346615..9338ea087e92 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -173,6 +173,7 @@ struct intel_display_platforms {
 #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
 #define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
 #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
+#define HAS_EMP_AS_SDP_TL(__display)	(DISPLAY_VERx100(__display) == 1401 || DISPLAY_VER(__display) >= 20)
 #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
 #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fae1186a90b2..1fed597439b0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -656,7 +656,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	 * Since currently we support VRR only for DP/eDP, so this is programmed
 	 * to for Adaptive Sync SDP to Vsync start.
 	 */
-	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
+	if (HAS_EMP_AS_SDP_TL(display))
 		intel_de_write(display,
 			       EMP_AS_SDP_TL(display, cpu_transcoder),
 			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
-- 
2.45.2

