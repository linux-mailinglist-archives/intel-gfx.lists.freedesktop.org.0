Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0V8wJta6QmoxAQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 20:35:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCCD6DE147
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 20:35:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZNf71i6F;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81A210E0DA;
	Mon, 29 Jun 2026 18:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7691710E0DA;
 Mon, 29 Jun 2026 18:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782758097; x=1814294097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UUXdA2xBJyAOvZGHUf33yg+Q6o9g3iThobMHK5D4m6k=;
 b=ZNf71i6F7DWPVy3gQcvtA8B/rlyJE0UCRjUpQvrMt5CxLeqL7RE8QEMl
 +Ib6U/4mTV++9xb8+Rstz9nf1eJJBlQyVTyjb6A7AvZAWbGIptR8K+Dfk
 EjoyCv9bTS4cjWIqbZY91TwGRqYwayaMkKbYbDgqBFLvDyK45D9JQCdWZ
 cdi4Sz6FunsUsvfOYEtdtWomRj9DVR/Xhy0A+e1s6t4OHDMKssPwHNJMp
 VbTG+XykbXGPqc1XhpUC+jli0sY0HxFh6h0x919MNZ0TZo383sXPVBW4i
 NVIuzuCoUALtC64dVgW9bDWI7LZlMv3fxOepBgdkncxC8Sh7jsQUxx2N1 A==;
X-CSE-ConnectionGUID: UdTsq0B7Rly3glB/Qu0mIA==
X-CSE-MsgGUID: KxLucWBuQJm/itqdsdHKRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="86010632"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="86010632"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 11:34:57 -0700
X-CSE-ConnectionGUID: mDZ5sArsQ7qG6F3znymAFg==
X-CSE-MsgGUID: 52BwTkxPSB619Jcqi1CGEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="256956678"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa005.fm.intel.com with ESMTP; 29 Jun 2026 11:34:56 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 suraj.kandpal@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Guard CMTG disable with
 intel_cmtg_is_allowed()
Date: Mon, 29 Jun 2026 23:32:35 +0530
Message-Id: <20260629180236.1353704-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260629180236.1353704-1-animesh.manna@intel.com>
References: <20260629180236.1353704-1-animesh.manna@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BCCD6DE147

intel_cmtg_disable() maps crtc_state->cpu_transcoder to a CMTG transcoder
via to_cmtg_transcoder(), which only returns a valid transcoder for
TRANSCODER_A/B. The disable call sites in hsw_crtc_disable() and the
fastset/VRR path only check the sticky crtc->cmtg.enabled flag, so during
a big-joiner reconfiguration that moves the eDP across pipes
intel_cmtg_disable() can be reached with a crtc_state whose cpu_transcoder
does not map to a CMTG transcoder. That results in a negative
register-array index (trans_offsets[-1]) and a UBSAN
array-index-out-of-bounds splat:

  UBSAN: array-index-out-of-bounds in .../display/intel_cmtg.c:187:24
  intel_cmtg_disable+0x395/0x3d0 [xe]
  intel_old_crtc_state_disables+0xfb/0x1f0 [xe]
  intel_atomic_commit_tail+0xca6/0x2040 [xe]

Gate both call sites with intel_cmtg_is_allowed() so that
intel_cmtg_disable() is only invoked for configurations that actually map
to a CMTG transcoder.

v2:
- Guard the intel_cmtg_disable() call sites with intel_cmtg_is_allowed()
  instead of a silent return (Suraj).

Fixes: 3bb44e8d421a ("drm/i915/cmtg: Modify existing hook to disable CMTG")
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 805066b02aaa..b39f404f9717 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1790,7 +1790,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
-	if (crtc->cmtg.enabled) {
+	if (crtc->cmtg.enabled && intel_cmtg_is_allowed(old_crtc_state)) {
 		intel_cmtg_set_clk_select(old_crtc_state);
 		intel_cmtg_disable(old_crtc_state);
 	}
@@ -6886,7 +6886,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
 
-	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
+	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc) &&
+	    intel_cmtg_is_allowed(new_crtc_state)) {
 		intel_cmtg_set_clk_select(new_crtc_state);
 		intel_cmtg_disable(new_crtc_state);
 	}
-- 
2.29.0

