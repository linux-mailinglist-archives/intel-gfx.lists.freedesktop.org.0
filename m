Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L8sKyF922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8483E37D2
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E130210E2B5;
	Sun, 12 Apr 2026 11:08:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jv1g1Nrc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23B110E2B3;
 Sun, 12 Apr 2026 11:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992095; x=1807528095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Iq2A8HTXdlZoHhXR2IhAltfnGX3h+yENMdY9/rFRVvw=;
 b=jv1g1NrcW4S7KxPtcO6f5pD5PAQvX6Sk93RhNwybiVSji2m5z7xOSprl
 WW7Humrw3IXzX9Aqn3qEi025xFeNWRQYZ66JyQ/AaCHjzGPaMJX2PVYc1
 uTNUBdKIWMYnKNielpC8Po9usKImKzACDD6EJ95mopUfL5BMDZxUN84c0
 nMOor5dvbIAFRdcjUSwc7cn4JDdNJo7Pm5qDBcf5pxUsXXE5KMtDcywkZ
 refoyM0sVlPZN3OGUVvv8umn0GhZKJVMIsjp3F7piQSKm1Uqpk8bqDH0S
 BhhoTf1JjBSYD3orX3bJk78bBgh6PEhJ1tMmMs7XSCCR7Fs3ZMW4zWJw3 w==;
X-CSE-ConnectionGUID: 8VmZ63OtRdG0g51CcyIWew==
X-CSE-MsgGUID: L03jRTTiTAaAQMnlWJEBgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115128"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115128"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:08:12 -0700
X-CSE-ConnectionGUID: 7l1L9mHFQRGl6fU4f6G5Gg==
X-CSE-MsgGUID: uS6QkOf8QQCo+AEZeNk9vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507745"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:08:10 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 10/13] drm/i915/cmtg: Add trigger to enable/disable cmtg
Date: Sun, 12 Apr 2026 16:07:09 +0530
Message-Id: <20260412103712.4021213-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260412103712.4021213-1-animesh.manna@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5C8483E37D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable CMTG with fixed refresh rate mode and with dynamic
dc state enabled.

Disable CMTG with transcoder disable or if there is a transition
to vrr mode from fixed refresh rate mode.

v2:
- Move the enabled flag update to avoid issue in the disable timeout
path. [Uma]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c          |  5 +++++
 drivers/gpu/drm/i915/display/intel_display.c       | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_types.h |  4 ++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 00e5bdd1b063..fc4595efec2d 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -172,11 +172,14 @@ static void intel_cmtg_disable_all(struct intel_display *display,
 void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!intel_cmtg_is_supported(crtc_state))
 		return;
 
+	crtc->cmtg.enabled = false;
+
 	intel_de_rmw(display, TRANS_VRR_CTL_CMTG(cpu_transcoder),
 		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
 
@@ -384,6 +387,7 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
 void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!intel_cmtg_is_allowed(crtc_state))
@@ -391,5 +395,6 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
 
+	crtc->cmtg.enabled = true;
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e8470b7ce13f..30bc209d8fb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1061,6 +1061,11 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_alpm_lobf_enable(new_crtc_state);
 
 	intel_psr_post_plane_update(state, crtc);
+
+	if (!crtc->cmtg.enabled && intel_vrr_is_fixed_rr(new_crtc_state)) {
+		intel_cmtg_enable_sync(new_crtc_state);
+		intel_cmtg_enable_ddi(new_crtc_state);
+	}
 }
 
 static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
@@ -1771,6 +1776,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	struct intel_crtc *pipe_crtc;
 	int i;
 
+	if (crtc->cmtg.enabled)
+		intel_cmtg_disable(old_crtc_state);
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
@@ -6865,6 +6872,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_needs_fastset(new_crtc_state) &&
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
+
+	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc))
+		intel_cmtg_disable(new_crtc_state);
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ca2581fb7bbd..f5c9ceb87e58 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1571,6 +1571,10 @@ struct intel_crtc {
 #endif
 
 	bool vblank_psr_notify;
+
+	struct {
+		bool enabled;
+	} cmtg;
 };
 
 struct intel_plane_error {
-- 
2.29.0

