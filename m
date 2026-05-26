Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HY/MsipFWqJXAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCC55D7243
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B3710E66A;
	Tue, 26 May 2026 14:10:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7JwUSGq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D759E10E667;
 Tue, 26 May 2026 14:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804615; x=1811340615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=htFv+ctnbS6DbMbX5QMmBstalWVucY1z1c2tIb8Twtc=;
 b=C7JwUSGqphVZo7id0Clu09uwC11pUQGbedUoIvPW5kQr4EeBEuc5bdia
 fhpjeLKUzJz4EhJEP6LMFbz1W+gIXA8V850diWIQKtufPtRS8pQ4WNeRL
 TaDODrd/0BPaiS7WuDHIPSRSHZet8qBEYLyjafyYaTCTHpwriFd6VhezP
 GZCjgIH//d92Ftic5HcOvtEY71HswtQ3Bkm3G2iZwtY/qwIlVFNkxNKiN
 egTJwWq9P6NFwg8zxCZfzkbqngib6GYme3PFZU4tOy2KK+6sqhwtKMXRk
 MCgS9iaJ+ibUw863kmLupg8pPoF053VHZL3YfSeiqERKfYR50q0fD7nrq g==;
X-CSE-ConnectionGUID: B8swAsu1SpOGa8oB+LNEbw==
X-CSE-MsgGUID: /4bVLdpMSTq0F54RV4jXSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041779"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041779"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:10:14 -0700
X-CSE-ConnectionGUID: puJi6F4fRyONlM+YB3ZEZA==
X-CSE-MsgGUID: 35gsIuIRR4GgiuQO1jB86w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578231"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:10:11 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 14/15] drm/i915/cmtg: Restore CMTG after DC6 exit
Date: Tue, 26 May 2026 19:08:10 +0530
Message-Id: <20260526133811.2621675-15-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260526133811.2621675-1-animesh.manna@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 7BCC55D7243
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Restore CMTG registers after DC6 exit, as they lose their values
in the low-power state.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c    | 15 ++++++++++++---
 .../gpu/drm/i915/display/intel_display_power.c  | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_power.h  |  2 ++
 3 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 36ff17b88be7..4662bccf30f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7556,12 +7556,21 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+		bool dc3co_to_dc6 = intel_display_power_get_and_reset_dc3co_to_dc6(display);
 
 		/*
-		 * TODO: CMTG needs to be restored on DC6 exit and DC3co entry condition
-		 * need to be checked before calling CMTG functions.
+		 * TODO: DC3co entry condition need to be checked before calling CMTG functions.
 		 */
-		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+		if ((modeset || dc3co_to_dc6) &&
+		    new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+			if (dc3co_to_dc6) {
+				intel_cmtg_set_clk_select(new_crtc_state);
+				intel_cmtg_set_timings(new_crtc_state, false);
+				intel_cmtg_set_vrr_timings(new_crtc_state);
+				intel_cmtg_set_vrr_ctl(new_crtc_state);
+				intel_cmtg_set_m_n(new_crtc_state);
+			}
+
 			intel_cmtg_enable_sync(new_crtc_state);
 			intel_cmtg_set_hwgb(new_crtc_state);
 			intel_cmtg_enable_ddi(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 751e6b7d4a29..637d547831c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -285,6 +285,19 @@ sanitize_target_dc_state(struct intel_display *display,
 	return target_dc_state;
 }
 
+bool intel_display_power_get_and_reset_dc3co_to_dc6(struct intel_display *display)
+{
+	struct i915_power_domains *power_domains = &display->power.domains;
+	bool ret;
+
+	mutex_lock(&power_domains->lock);
+	ret = power_domains->dc3co_to_dc6;
+	power_domains->dc3co_to_dc6 = false;
+	mutex_unlock(&power_domains->lock);
+
+	return ret;
+}
+
 /**
  * intel_display_power_set_target_dc_state - Set target dc state.
  * @display: display device
@@ -320,6 +333,10 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
 	if (!dc_off_enabled)
 		intel_power_well_enable(display, power_well);
 
+	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO &&
+	    state == DC_STATE_EN_UPTO_DC6)
+		power_domains->dc3co_to_dc6 = true;
+
 	power_domains->target_dc_state = state;
 
 	if (!dc_off_enabled)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d616d5d09cbe..b43d4146a78a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -138,6 +138,7 @@ struct i915_power_domains {
 	 */
 	bool initializing;
 	bool display_core_suspended;
+	bool dc3co_to_dc6;
 	int power_well_count;
 
 	u32 dc_state;
@@ -183,6 +184,7 @@ void intel_display_power_suspend_late(struct intel_display *display, bool s2idle
 void intel_display_power_resume_early(struct intel_display *display);
 void intel_display_power_suspend(struct intel_display *display);
 void intel_display_power_resume(struct intel_display *display);
+bool intel_display_power_get_and_reset_dc3co_to_dc6(struct intel_display *display);
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
-- 
2.29.0

