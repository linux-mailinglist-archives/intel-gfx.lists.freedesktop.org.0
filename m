Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB2EA60FC1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 12:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBC610E9C9;
	Fri, 14 Mar 2025 11:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQIEjFi8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE2E10E9D3;
 Fri, 14 Mar 2025 11:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741951142; x=1773487142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=idYYdiFNdHFgLVt5+uqIP+AUHkvFcNz6fXyI4njTA1s=;
 b=LQIEjFi8aEv+Ufcyd8HUnK0QcmK/zwN6yNoVG0TkXI4tOGZGLS70ed2e
 lijpnRncMwxjgtfCnAFf7/Gd8H4XGuiB17JdP27zbTF31YucGKzHVpIXc
 lE3a8ufmINLtXRmhfmEnngDsgs2fO4WN4ugG8YNjsjHT3ALD9I8rjWV1e
 utM6RjqCatO0vuYY66GkMtR2sUmum2TlZd0E5eqAnfwXxKRWrY1hUxsYA
 NVFPJ+wMDl+obgVgrrsRMyCS3o2KGNeuhZfETsAnu2DChj9EJW+zj5NWD
 aA/uqHqNGmtLzA1LymJ7V3SETWHSNVwzI3grWHUbR5O32p01IrxvzynbT Q==;
X-CSE-ConnectionGUID: amXAHaWNTkCt+sfwjHrR0A==
X-CSE-MsgGUID: jd0iOQAqQDeuVYFDT7mGmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68467022"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68467022"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:19:01 -0700
X-CSE-ConnectionGUID: ARs1/FKmTIeq6Pa9hPnpiw==
X-CSE-MsgGUID: ih24yl78S5i2ybsjvDHvfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126289670"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:19:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 06/11] drm/i915/psr: Add mechanism to notify PSR of DC5/6
 enable disable
Date: Fri, 14 Mar 2025 13:18:34 +0200
Message-ID: <20250314111839.1051945-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314111839.1051945-1-jouni.hogander@intel.com>
References: <20250314111839.1051945-1-jouni.hogander@intel.com>
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

We need to apply/remove workaround for underrun on idle PSR HW issue
(Wa_16025596647) when DC5/6 is enabled/disabled. This patch implements
mechanism to notify PSR about DC5/6 enable/disable and applies/removes the
workaround using this notification.

Bspec: 74115

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 50 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +
 3 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 3673275f9061a..7ca1e7d710133 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -575,6 +575,8 @@ struct intel_display {
 	struct intel_vbt_data vbt;
 	struct intel_dmc_wl wl;
 	struct intel_wm wm;
+
+	struct work_struct psr_dc5_dc6_wa_work;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4b62d5832cbfa..baf6a7110a555 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3718,6 +3718,56 @@ static void intel_psr_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp
 		psr1_apply_underrun_on_idle_wa_locked(intel_dp, dc5_dc6_blocked);
 }
 
+static void psr_dc5_dc6_wa_work(struct work_struct *work)
+{
+	struct intel_display *display = container_of(work, typeof(*display),
+						     psr_dc5_dc6_wa_work);
+	struct intel_encoder *encoder;
+
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		mutex_lock(&intel_dp->psr.lock);
+
+		if (intel_dp->psr.enabled && !intel_dp->psr.panel_replay_enabled)
+			intel_psr_apply_underrun_on_idle_wa_locked(intel_dp);
+
+		mutex_unlock(&intel_dp->psr.lock);
+	}
+}
+
+/**
+ * intel_psr_notify_dc5_dc6 - Notify PSR about enable/disable dc5/dc6
+ * @display: intel atomic state
+ *
+ * This is targeted for underrun on idle PSR HW bug (Wa_16025596647) to schedule
+ * psr_dc5_dc6_wa_work used for applying/removing the workaround.
+ */
+void intel_psr_notify_dc5_dc6(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) != 20 &&
+	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		return;
+
+	schedule_work(&display->psr_dc5_dc6_wa_work);
+}
+
+/**
+ * intel_psr_dc5_dc6_wa_init - Init work for underrun on idle PSR HW bug wa
+ * @display: intel atomic state
+ *
+ * This is targeted for underrun on idle PSR HW bug (Wa_16025596647) to init
+ * psr_dc5_dc6_wa_work used for applying the workaround.
+ */
+void intel_psr_dc5_dc6_wa_init(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) != 20 &&
+	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		return;
+
+	INIT_WORK(&display->psr_dc5_dc6_wa_work, psr_dc5_dc6_wa_work);
+}
+
 /**
  * intel_psr_notify_pipe_change - Notify PSR about enable/disable of a pipe
  * @state: intel atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 273e70a50915c..bfe368239bc27 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -62,6 +62,8 @@ void intel_psr_resume(struct intel_dp *intel_dp);
 bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
 void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc, bool enable);
+void intel_psr_notify_dc5_dc6(struct intel_display *display);
+void intel_psr_dc5_dc6_wa_init(struct intel_display *display);
 bool intel_psr_link_ok(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

