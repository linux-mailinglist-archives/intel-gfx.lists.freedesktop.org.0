Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I/rkJimOIGoZ5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:27:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485D063B1D6
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:27:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=k0zdwGcV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7620112372;
	Wed,  3 Jun 2026 20:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F482112373;
 Wed,  3 Jun 2026 20:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518438; x=1812054438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tx80BEKGhxdTw094AWGgUTWGJIQiXHhz3XuHb5CgvxQ=;
 b=k0zdwGcVljm0jNVVGS3HxFioKIUBkEqwKAqAzKnqCP1uqhFBsr5yJjy5
 4Y7RBjhRvwqqTfFugGW+E/+z4BfXsscTJGe2dDwcwyLLptJ8TCs0bvzJj
 7EGX7mhOcdFBVSqUj0uwXL8OWvx3jgJCYgNVlnktkvrDO+vhtddfISWag
 UfgLrc7U1NX5B4XWFdpdQnz0FtEmVCLuEzFXwcAyNQgpwIEEJCcEX4N9l
 5K1z6lTqDEBSLSI9gWQGagIdOFOoT+tx+8m4jDajFQWfR/6nOOIShDknj
 1CDScZTU1JCElr4DhNYK5gaVcVIEvSSeQoyEfi9tEvy0xAHeSPwJU52bW A==;
X-CSE-ConnectionGUID: UwuuNjE5Ra2qx/QArZmWjQ==
X-CSE-MsgGUID: dHc1wKnBQFK9k1zR6ff5tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337479"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337479"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:27:18 -0700
X-CSE-ConnectionGUID: UgBmI+EtRfO1nLm0s6abhA==
X-CSE-MsgGUID: GxtSuf3WSAaoSfnssRIBPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424977"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:27:16 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 19/20] drm/i915/cmtg: Restore CMTG after DC6 exit
Date: Thu,  4 Jun 2026 01:24:15 +0530
Message-Id: <20260603195416.91639-20-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260603195416.91639-1-animesh.manna@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 485D063B1D6

Restore CMTG registers after DC6 exit, as they lose their values
in the low-power state.

v2: Introduce intel_cmtg_restore() instead of calling multiple cmtg
functions. [Uma]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c       |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h       |  1 +
 drivers/gpu/drm/i915/display/intel_display.c    | 10 +++++++---
 .../gpu/drm/i915/display/intel_display_power.c  | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_power.h  |  2 ++
 5 files changed, 36 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index b7f4be33ce2e..8be6f7f28e35 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -434,3 +434,12 @@ void intel_cmtg_program(const struct intel_crtc_state *crtc_state)
 	intel_cmtg_set_hwgb(crtc_state);
 	intel_cmtg_enable_ddi(crtc_state);
 }
+
+void intel_cmtg_restore(const struct intel_crtc_state *crtc_state)
+{
+	intel_cmtg_set_clk_select(crtc_state);
+	intel_cmtg_set_timings(crtc_state, false);
+	intel_cmtg_set_vrr_timings(crtc_state);
+	intel_cmtg_set_vrr_ctl(crtc_state);
+	intel_cmtg_set_m_n(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 51fc3f5a89f4..37f90123c397 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -22,5 +22,6 @@ bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_program(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_restore(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e751a4c37842..35fbf1ae210e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7560,12 +7560,16 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
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
+			if (dc3co_to_dc6)
+				intel_cmtg_restore(new_crtc_state);
+
 			intel_cmtg_program(new_crtc_state);
 			intel_cmtg_enable_interrupt(new_crtc_state);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2e51dfcd5dce..e75002819bf5 100644
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
index 56dc89eed3f8..b9c9b68072af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -138,6 +138,7 @@ struct i915_power_domains {
 	 */
 	bool initializing;
 	bool display_core_suspended;
+	bool dc3co_to_dc6;
 	int power_well_count;
 
 	u32 dc_state;
@@ -179,6 +180,7 @@ void intel_display_power_sanitize_state(struct intel_display *display);
 
 void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
 void intel_display_power_resume_early(struct intel_display *display);
+bool intel_display_power_get_and_reset_dc3co_to_dc6(struct intel_display *display);
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
-- 
2.29.0

