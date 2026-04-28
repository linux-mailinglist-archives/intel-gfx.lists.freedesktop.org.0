Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJ7VOYWq8GkOXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:39:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937A9484F77
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9522E10EB69;
	Tue, 28 Apr 2026 12:39:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8KWvRNO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9650410EB6A;
 Tue, 28 Apr 2026 12:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777379971; x=1808915971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GvVsj8qqHVOe7KdW/qnDOc1kBFNin1ndHc8fhiEIai0=;
 b=U8KWvRNO7cLaeWTPNMYGlKGdlT0L/KKL18QpwAP+lT1E+4ib1+wtdaTE
 zWZ1OvvQVJqz3bBSO7rx+bX50Xa6MFBqEZlp262N/LIVXn7zi/T4KzAz1
 gCOwkU5fPbfbd0/w1gy/O4nJacPHHzHG7RTzEpgiHjRsGV/vJSdIsyLzb
 4LgsvCsBVVa94BFxC0TXC8gHbsMO0KfwEJEZN1cT3/8lw/08S+DmQZyAT
 LDQF0feSJVEcp1aevUB680fz2kY5nvRuZlKz/W/kiIvkMX/C/QItEUPDi
 3JQu5Zc/W7uLRPOH/Gpeqhf95K3EHKbfS6OkfTEZktR4J6c3KKUp3GYDE Q==;
X-CSE-ConnectionGUID: sEcv4hhHQWy/3SgNv9tCng==
X-CSE-MsgGUID: JKIcgzMzSri9VMJ9fWMNIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100943549"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100943549"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:39:30 -0700
X-CSE-ConnectionGUID: /XiPFHjSRUSPbyB5BqjEhQ==
X-CSE-MsgGUID: 7auUtERxRQ2na/ki0yPHcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="232926741"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:39:29 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com
Subject: [RFC PATCH] drm/i915/psr: Prevent DC entry during active vblank for
 Panel Replay
Date: Tue, 28 Apr 2026 18:09:51 +0530
Message-ID: <20260428123951.3803703-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Queue-Id: 937A9484F77
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On PTL+ (display ver >= 30), hold the DMC wakelock while vblank is
enabled for Panel Replay. Older platforms rely on
intel_display_power_set_target_dc_state() for this.

The wakelock is acquired/released at two places:
1) Dynamically when vblank is enabled/disabled via
   intel_psr_notify_vblank_enable_disable().
2) In the PSR enable/disable path.

This handles the following ordering scenarios:
1) Panel Replay is enabled before vblank enable arrives.
2) Vblank enable arrives before Panel Replay is updated in
   intel_psr_post_plane_update().
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 55 +++++++++++++++++--
 2 files changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c81916761850..f386d6dba9e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1775,6 +1775,8 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool panel_replay_enabled;
+	bool panel_replay_wakelock;
+	bool vblank_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 63c19958a9e3..82bc63054906 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2192,6 +2192,34 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	return true;
 }
 
+static void intel_panel_replay_get_wakelock_locked(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	if (intel_dp->psr.panel_replay_wakelock)
+		return;
+
+	intel_dmc_wl_get_noreg(display);
+	intel_dp->psr.panel_replay_wakelock = true;
+}
+
+static void intel_panel_replay_put_wakelock_locked(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	if (!intel_dp->psr.panel_replay_wakelock)
+		return;
+
+	intel_dmc_wl_put_noreg(display);
+	intel_dp->psr.panel_replay_wakelock = false;
+}
+
 static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
@@ -2224,8 +2252,11 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
 
-	if (intel_dp->psr.panel_replay_enabled)
+	if (intel_dp->psr.panel_replay_enabled) {
+		if (intel_dp->psr.vblank_enabled)
+			intel_panel_replay_get_wakelock_locked(intel_dp);
 		drm_dbg_kms(display->drm, "Enabling Panel Replay\n");
+	}
 	else
 		drm_dbg_kms(display->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.sel_update_enabled ? "2" : "1");
@@ -2344,8 +2375,10 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return;
 
-	if (intel_dp->psr.panel_replay_enabled)
+	if (intel_dp->psr.panel_replay_enabled) {
+		intel_panel_replay_put_wakelock_locked(intel_dp);
 		drm_dbg_kms(display->drm, "Disabling Panel Replay\n");
+	}
 	else
 		drm_dbg_kms(display->drm, "Disabling PSR%s\n",
 			    intel_dp->psr.sel_update_enabled ? "2" : "1");
@@ -4143,9 +4176,24 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		mutex_lock(&intel_dp->psr.lock);
+		intel_dp->psr.vblank_enabled = enable;
 		if (intel_dp->psr.panel_replay_enabled) {
+			/*
+			 * wakelock handling for panel replay
+			 * for older platform rely on intel_display_power_set_target_dc_state().
+			 */
+			if (DISPLAY_VER(display) < 30) {
+				mutex_unlock(&intel_dp->psr.lock);
+				break;
+			}
+
+			if (enable)
+				intel_panel_replay_get_wakelock_locked(intel_dp);
+			else
+				intel_panel_replay_put_wakelock_locked(intel_dp);
+
 			mutex_unlock(&intel_dp->psr.lock);
-			break;
+			return;
 		}
 
 		if (intel_dp->psr.enabled && intel_dp->psr.pkg_c_latency_used)
@@ -4154,7 +4202,6 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		mutex_unlock(&intel_dp->psr.lock);
 		return;
 	}
-
 	/*
 	 * NOTE: intel_display_power_set_target_dc_state is used
 	 * only by PSR * code for DC3CO handling. DC3CO target
-- 
2.43.0

