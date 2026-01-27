Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGUYD5qyeGkksQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:42:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EAF946CF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F0510E564;
	Tue, 27 Jan 2026 12:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iD8bFy0P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA0510E55C;
 Tue, 27 Jan 2026 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769517714; x=1801053714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Ty/KQEjaDNVyb2hFyzjApcNe2AvkIkWS4E2C/g2XzQ=;
 b=iD8bFy0PXruFxoHMe5Q4Hdyp1HFb5K+At/UQgpsKDaOnC6QJ0ZaPkqKl
 87CI5g8wWtefe5aEFTMq+gZdjM+dPWoZ8g+GbwuZYmu3VNBg1kZnRgAcc
 Z0CX3ZBpP4DOLmLdrPZEx4uxFDufezX06PETtuoiQ2x5p9ggC9FHTBESr
 jjKaiqUp4I/PA5HYfyQyXYmkgABGL0IKvwzrNikRvK6WuDDL+j45zNIw4
 aW9+teB239BJgfOaCn/fMzYrvGZWU6VVTd+9BhgeoXkYbQbLTP3mBunu1
 1d/AM36Mzyz0qrFgy6wpn2wZf11DH/DmX+QaB2JoW9hMUHC+CaEbq8y8j w==;
X-CSE-ConnectionGUID: 3OnMmPDyRAWdpdWqA2Q6Gg==
X-CSE-MsgGUID: sSU5I0X1RhC7om0Tgtypgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70767668"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70767668"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:54 -0800
X-CSE-ConnectionGUID: /pnePh2IQEKe0csgEAGhIg==
X-CSE-MsgGUID: v9PjgCsqS3CjPmDDW+vv7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239231249"
Received: from ettammin-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v11 11/11] drm/i915/psr: Use TRANS_PUSH to trigger frame
 change event
Date: Tue, 27 Jan 2026 14:41:20 +0200
Message-ID: <20260127124120.1069026-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127124120.1069026-1-jouni.hogander@intel.com>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D2EAF946CF
X-Rspamd-Action: no action

Now we have everything in place for triggering PSR "frame change" event
using TRANS_PUSH: use TRANS_PUSH for LunarLake and onwards.

v4:
  - Added call to intel_vrr_psr_frame_change_enable call
  - added setting LNL_TRANS_PUSH_PSR_PR_EN into intel_vrr_send_push
v3: use HAS_PSR_FRAME_CHANGE macro
v2: use AND instead of OR in intel_psr_use_trans_push

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9a4354c6bdda..4e644711c571 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2125,6 +2125,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
 
 	intel_alpm_configure(intel_dp, crtc_state);
+
+	if (HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display))
+		intel_vrr_psr_frame_change_enable(crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -4569,6 +4572,7 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
 
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
 {
-	/* TODO: Enable using trans push when everything is in place */
-	return false;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display) && crtc_state->has_psr;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8a072f90049f..9d814cc2d608 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -689,6 +689,9 @@ static u32 trans_vrr_push(const struct intel_crtc_state *crtc_state,
 	if (send_push)
 		trans_vrr_push |= TRANS_PUSH_SEND;
 
+	if (HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display))
+		trans_vrr_push |= LNL_TRANS_PUSH_PSR_PR_EN;
+
 	return trans_vrr_push;
 }
 
-- 
2.43.0

