Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6C4A6450A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A574910E023;
	Mon, 17 Mar 2025 08:19:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A1I4ePQ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE39710E3BF;
 Mon, 17 Mar 2025 08:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199567; x=1773735567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=idYYdiFNdHFgLVt5+uqIP+AUHkvFcNz6fXyI4njTA1s=;
 b=A1I4ePQ0XlSdt/pN/+Qx7ZSHwiZf/p0+EfUQ9MVaniJBiXPhhxkI06ME
 aBVwy7mHOzbkj5dJsOBAtJb0icSnHyaH0B04EkePmL493Vbr4i7slS++c
 RuDVszlxpZO1nG0dOkxx+6sC2Wi4ywSxxityV+VcF8oi6sFWeb5gnLs8d
 0Zqvl9/i41Z/5u2fX2j6B8nKvZYbhdke2hdGrbsRK2xu+USz5sQZ3cSbB
 Z2vriLzk6Z+2PVzIOEn6mGkyAzK+/fezEXHIcKSsWHQjuUGBIkAVZSY0c
 1joy/nY23DX8EuRq+03lATpO2HWkW92+SXFxNdBdOZXFtbj9/EYe0t6Uv Q==;
X-CSE-ConnectionGUID: Kblj8i5pTwK8JNB19k37+g==
X-CSE-MsgGUID: EBnq1DZ5QXe4VS78wfevRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653511"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653511"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:27 -0700
X-CSE-ConnectionGUID: MtbsP6DFRNO3T2iZXI4KkA==
X-CSE-MsgGUID: Rq+EJxHoQzaDZ7C1Im81+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677161"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 07/11] drm/i915/psr: Add mechanism to notify PSR of DC5/6
 enable disable
Date: Mon, 17 Mar 2025 10:19:01 +0200
Message-ID: <20250317081905.3683654-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

