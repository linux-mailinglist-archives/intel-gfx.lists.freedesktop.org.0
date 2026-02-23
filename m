Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJZ9I2pWnGkAEQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:30:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 635B2176EC5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E03B110E3A4;
	Mon, 23 Feb 2026 13:30:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RshaN0Dd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF1910E3B1;
 Mon, 23 Feb 2026 13:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771853416; x=1803389416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fG6afppwNIStttpu3zZ1HvIhmenzRZBzLKAsDOHnNIY=;
 b=RshaN0DdZcFi78AQBLbWmFYo26i+TuhNK9wM9IVr7NN1bLKnN4aAUD1Q
 zJ/yzngwsno0RF4hzJ3ffAYFQvQe5Htw5/AT5euR/vutpUOpEkSOIPf+0
 nMABHzdx11lfygFu8J/SDiVKs18kwBRusOVQaNEAD6UZo+TfzPdClMs1i
 SGLfD7YjF0cX6PD/ZzhfVjWVOpLGMi9ARIj9KMZeDM2o9fM+0JpavRmfz
 u+S6LoiMAdggdoZsQGSkUIdnZsQTk8aVWMWmrswvFvRXL7Ls2RPZNl0E4
 MK53h/CW9/KtVCrZjwTltkdZMVSwpkyqgpsMD4dhwX+OXah3NIGIHOwgV w==;
X-CSE-ConnectionGUID: pW6TC6RCScSqiNMIPFeNwQ==
X-CSE-MsgGUID: +Bv5os6QQe6SCXaZCfNJqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72724184"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72724184"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:30:16 -0800
X-CSE-ConnectionGUID: w55TMJ86T12MP9Q9Ywxf+Q==
X-CSE-MsgGUID: qmjRhuSgSm63FTH8wf+wGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="215580438"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:30:13 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/14] drm/i915/dp: Add AS SDP support for PR with link ON
Date: Mon, 23 Feb 2026 18:44:20 +0530
Message-ID: <20260223131426.1638946-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260223131426.1638946-1-ankit.k.nautiyal@intel.com>
References: <20251111093007.3771409-3-ankit.k.nautiyal@intel.com>
 <20260223131426.1638946-1-ankit.k.nautiyal@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 635B2176EC5
X-Rspamd-Action: no action

Adaptive Sync SDP (AS SDP) is also used for Panel Replay (PR).
For PR with Link ON, the AS SDP version V1 is used. When using
AS SDP Version 1, AS SDP payload and parity bytes are all set to zeroes.

Bspec: 75639
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d08db4938638..5952db6197cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3115,7 +3115,8 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.enable ||
-	       crtc_state->cmrr.enable;
+	       crtc_state->cmrr.enable ||
+	       crtc_state->has_panel_replay;
 }
 
 static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
@@ -3137,6 +3138,16 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
 	as_sdp->version = 0x2;
+
+	if (crtc_state->vrr.enable)
+		as_sdp->version = 0x2;
+	else
+		as_sdp->version = 0x1;
+
+	/* No payload data bytes for Version 1 */
+	if (as_sdp->version == 0x1)
+		return;
+
 	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
 
 	if (crtc_state->cmrr.enable) {
@@ -5005,6 +5016,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	sdp->sdp_header.HB2 = as_sdp->version;
 	sdp->sdp_header.HB3 = as_sdp->length;
 
+	/* No Payload Data bytes for Version 1 */
+	if (as_sdp->version == 0x1)
+		return length;
+
 	/* Fill AS (Adaptive Sync) SDP Payload */
 	sdp->db[0] = as_sdp->mode;
 	sdp->db[1] = as_sdp->vtotal & 0xFF;
-- 
2.45.2

