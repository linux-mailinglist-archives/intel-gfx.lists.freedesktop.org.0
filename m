Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE62A565CE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA4710EB5B;
	Fri,  7 Mar 2025 10:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UbjpNfia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D61910EB58;
 Fri,  7 Mar 2025 10:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344781; x=1772880781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gAsKhk+4DnwMf8zLYpxWUeRJ+ncQ2N83ZUBfk+j8E5o=;
 b=UbjpNfiaKGL0jOJ2MEGfmkcn5IErhVElA0TS4hb+9R1ZEhtW/O/BPprB
 VTSbhsw0+dEfgb4EAAaYd9A0Hub7ce9s9wiTJ0OfWjmWyB4o3BwZ9ybrq
 TkLhrQ0R5xcNQ25TZl3vhQ1/1dEA9COi6EeD/jb4358ef6rw92ApfWFLF
 xa0X9lfNENr3UD8viwtGbdJ16F9mHyuzo3KglLN+3INSSMZs7+zxVhX6j
 q6ouL2RAog6drsiZ0FRTDOxUWuQwaXx9zhz16/oNrlMLdTc3U7qki8ynx
 KyqQIX+0/hKleDBrey3mkKrS8i5GlO0FTnO0AAAK1zvnPjSLIGAx91HJy Q==;
X-CSE-ConnectionGUID: bNqDHVCcSUyvEt5ET1Dtkg==
X-CSE-MsgGUID: oVwLVwTaTPO3GSZhltDvdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301658"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301658"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:53:01 -0800
X-CSE-ConnectionGUID: HG5vFPrYQOKJI0A8i5Q8+A==
X-CSE-MsgGUID: BKZPVF60SoK8eEvKr+kP5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481609"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:53:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 08/11] drm/i915/psr: Add interface to notify PSR of vblank
 enable/disable
Date: Fri,  7 Mar 2025 12:52:34 +0200
Message-ID: <20250307105237.2909849-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307105237.2909849-1-jouni.hogander@intel.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
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

To implement Wa_16025596647 we need to get notification of vblank interrupt
enable/disable. Add new interface to PSR code for this notification.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 40 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index baf6a7110a55..afb9faed7784 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3820,6 +3820,46 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 	}
 }
 
+/**
+ * intel_psr_notify_vblank_enable_disable - Notify PSR about enable/disable of vblank
+ * @display: intel display struct
+ * @enable: enable/disable
+ *
+ * This is targeted for underrun on idle PSR HW bug (Wa_16025596647) to apply
+ * remove the workaround when vblank is getting enabled/disabled
+ */
+void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
+					    bool enable)
+{
+	struct intel_encoder *encoder;
+
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		mutex_lock(&intel_dp->psr.lock);
+		if (intel_dp->psr.panel_replay_enabled) {
+			mutex_unlock(&intel_dp->psr.lock);
+			break;
+		}
+
+		if (intel_dp->psr.enabled)
+			intel_psr_apply_underrun_on_idle_wa_locked(intel_dp);
+
+		mutex_unlock(&intel_dp->psr.lock);
+		return;
+	}
+
+	/*
+	 * NOTE: intel_display_power_set_target_dc_state is used
+	 * only by PSR * code for DC3CO handling. DC3CO target
+	 * state is currently disabled in * PSR code. If DC3CO
+	 * is taken into use we need take that into account here
+	 * as well.
+	 */
+	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
+						DC_STATE_EN_UPTO_DC6);
+}
+
 static void
 psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index bfe368239bc2..a914b7ee3756 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -64,6 +64,8 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc, bool enable);
 void intel_psr_notify_dc5_dc6(struct intel_display *display);
 void intel_psr_dc5_dc6_wa_init(struct intel_display *display);
+void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
+					    bool enable);
 bool intel_psr_link_ok(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

