Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +A1TLj0Ll2kcuAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 14:08:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABB215EE85
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 14:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB32B10E6E3;
	Thu, 19 Feb 2026 13:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIxNjWXL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D552210E6E3;
 Thu, 19 Feb 2026 13:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771506490; x=1803042490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=unVTTUzWN+ifDx7jJkcPbyjdHBX0omtFSeOWCoZAP8g=;
 b=hIxNjWXLmjmAxuhaYEQ/KL0N+xSzvtaDh6Kixu/hPpaRpzMo07R0U9/H
 b7ePiATmH9CUNmzdJxHy7Gcrh5J0HtNoWHRejEsZ6S+FqlZ0mGmLkuws4
 3qkMfVrLk4W14hyxcP4lDCCSMxh/OVAvJV/nItTBkH/74iMXXoKasi7RB
 MVLscxXcK9sulFbytUkNC3ZK9ueON4XmTVmglBdzseQolokCsbcPKf5dY
 mqUs5mSgRKblvMJGvz/ZyvRMnfIFm1z+bGTh0jXEWcqtg/nfTkIRK6LW+
 f6AlmniLb5DdLd9mt9NPl8P4DopTYj3zEO1XAv+VKVQPDVhmLiDx963ck g==;
X-CSE-ConnectionGUID: ciodj6tLQnyj5PV5vSxufg==
X-CSE-MsgGUID: pRTmsL7RRxaIAHEETE+h5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72475536"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="72475536"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 05:08:10 -0800
X-CSE-ConnectionGUID: Zf9NvM+1S+Ox6ZdwJsBtBw==
X-CSE-MsgGUID: iCT8GFILQ6qJ1YwOa1PvpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="212458620"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.120])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 05:08:09 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/5] drm/i915/psr: Drop cursor_in_su_area from
 intel_psr2_sel_fetch_et_alignment
Date: Thu, 19 Feb 2026 15:07:43 +0200
Message-ID: <20260219130743.1232188-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219130743.1232188-1-jouni.hogander@intel.com>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 8ABB215EE85
X-Rspamd-Action: no action

Boolean variable cursor_in_su_area is not really used for anything. Remove
it.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0a2948ec308d..55d93db72691 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2744,8 +2744,7 @@ static bool intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_st
  */
 static void
 intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc,
-				  bool *cursor_in_su_area)
+				  struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state;
@@ -2773,7 +2772,6 @@ intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
 
 		clip_area_update(&crtc_state->psr2_su_area, &new_plane_state->uapi.dst,
 				 &crtc_state->pipe_src);
-		*cursor_in_su_area = true;
 	}
 }
 
@@ -2869,7 +2867,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
-	bool full_update = false, cursor_in_su_area = false;
+	bool full_update = false;
 	int i, ret;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -2983,8 +2981,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		 * drm_atomic_add_affected_planes to ensure visible cursor is added into
 		 * affected planes even when cursor is not updated by itself.
 		 */
-		intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
-
+		intel_psr2_sel_fetch_et_alignment(state, crtc);
 	} while (intel_psr2_sel_fetch_pipe_alignment(crtc_state));
 
 	/*
-- 
2.43.0

