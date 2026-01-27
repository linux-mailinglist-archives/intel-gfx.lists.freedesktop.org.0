Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCLTAIqyeGkksQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58879469D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF8A10E565;
	Tue, 27 Jan 2026 12:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVUOj8P5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7D410E564;
 Tue, 27 Jan 2026 12:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769517703; x=1801053703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=czC2OP/edBBKpmixk7f8d1jfWqpMNzaqzLTekgdoZEM=;
 b=VVUOj8P5XaehZF84rPClMTyDxByNIyRiaJfK/M7YfNkHNBLxwImlOhWR
 ehGobbQUyRf7RD6OZ9s5vC6SYVqvbRWu6zRxV26fjqgQ7EVprBCMg58ao
 FQ+lknHuFqP0N0qU3xqnljF763QebeiviKOw13G1g2bc0qIE75Trk3HgK
 hhKsVuRxuQKIaU/OdD22jMN0vfUcf+mVQFkpRq+gliJC9pehcYpiIR8Ad
 S8CwcVsASnDsURf2nIssNPxTpTsp0gn+zMd0zMdKfRpm0ZMG0uZmdUeyK
 oqSlAqpdDXGREPJRN7aaHN8hXT981P9KcH2JpHps+y/tpDqSZzfbL/QVm A==;
X-CSE-ConnectionGUID: CxEIZqPjSYOIO85Q52jcow==
X-CSE-MsgGUID: fySQDWr2TcuotgSUA4K/YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70767649"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70767649"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:43 -0800
X-CSE-ConnectionGUID: Eq28yApoTwya/k9ffooU3Q==
X-CSE-MsgGUID: I4rzFSbuTRq2sNCg/wrhtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239231228"
Received: from ettammin-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:41 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v11 05/11] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism
 for PSR frame change
Date: Tue, 27 Jan 2026 14:41:14 +0200
Message-ID: <20260127124120.1069026-6-jouni.hogander@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: A58879469D
X-Rspamd-Action: no action

On Lunarlake and onward it is possible to generate PSR Frame Change
event using TRANS_PUSH mechanism:

Ensure push is performed on flip if needed by PSR.

Don't use intel_psr_trigger_frame_change_event if PSR uses trans push as
Frame Change event: When not using trans push to generate Frame Change
event plane/pipe register writes are triggering the event. This is causing
problems when transiting to PSR active/idle and the event is coming in. To
tackle this we are waiting PSR to idle and using
intel_psr_trigger_frame_change_event to ensure PSR exit. If the Frame
change event is triggered after everything is configured (on trans push) we
don't need to worry about all this.

Ensure possible intel_vrr_tg_disable call is not overwriting
LNL_TRANS_PUSH_PSR_PR_EN.

v8:
  - split adding intel_vrr_psr_frame_change_enable as a separate change
  - update commit message
v7:
  - HAS_PSR_FRAME_CHANGE macro moved to separate patch and renamed as
    HAS_PSR_TRANS_PUSH_FRAME_CHANGE
  - use intel_psr_use_trans_push instead of HAS_PSR_FRAME_CHANGE in
    intel_psr_trigger_frame_change
  - moved calling intel_vrr_psr_frame_change_enable away from this patch
v6:
  - add HAS_PSR_FRAME_CHANGE macro
  - use TRANS_PUSH in instead of TRAN_VRR_CTL
v5: use intel_psr_use_trans_push for intel_vrr_psr_frame_change_enable
v4:
  - use rmw when enabling/disabling transcoder
  - set TRANS_PUSH_EN conditionally in intel_vrr_send_push
  - do not call intel_vrr_send_push from intel_psr_trigger_frame_change
  - do not enable using TRANS_PUSH mechanism for PSR "Frame Change"
v3:
  - use rmw when enabling/disabling
  - keep LNL_TRANS_PUSH_PSR_PR_EN set always on LunarLake and onwards
v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 8 +++++---
 drivers/gpu/drm/i915/display/intel_vrr.c  | 5 +++--
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 778ebc5095c3..ed3c6c4ce025 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -747,7 +747,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 * which would cause the next frame to terminate already at vmin
 	 * vblank start instead of vmax vblank start.
 	 */
-	if (!state->base.legacy_cursor_update)
+	if (!state->base.legacy_cursor_update ||
+	    (intel_psr_use_trans_push(new_crtc_state) &&
+	     !new_crtc_state->vrr.enable))
 		intel_vrr_send_push(NULL, new_crtc_state);
 
 	local_irq_enable();
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b0d72c04db45..9613c50623dc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2516,9 +2516,11 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 		intel_pre_commit_crtc_state(state, crtc);
 	struct intel_display *display = to_intel_display(crtc);
 
-	if (crtc_state->has_psr)
-		intel_de_write_dsb(display, dsb,
-				   CURSURFLIVE(display, crtc->pipe), 0);
+	if (!crtc_state->has_psr || intel_psr_use_trans_push(crtc_state))
+		return;
+
+	intel_de_write_dsb(display, dsb,
+			   CURSURFLIVE(display, crtc->pipe), 0);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 66c68e7f3a49..8a072f90049f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -698,7 +698,7 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && !intel_psr_use_trans_push(crtc_state))
 		return;
 
 	if (dsb)
@@ -920,7 +920,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 				       VRR_STATUS_VRR_EN_LIVE, 1000))
 		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder),
+		     TRANS_PUSH_EN, 0);
 }
 
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
-- 
2.43.0

