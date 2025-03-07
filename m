Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85349A565CF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086FB10EB5E;
	Fri,  7 Mar 2025 10:53:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ITI+Lk++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C426310EB5B;
 Fri,  7 Mar 2025 10:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344779; x=1772880779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bObsQ6aAFY8gkvRFg8ZyWy1zT1LYek6LWQVfSlCn94c=;
 b=ITI+Lk++znFIj4nnFnJQn4QXF6c514jwRTMIa9fWUQg+xQcqCdbabFa+
 /nP0cfJ2ZDzL6DXS8UqAjP/R9tRij3xwHfC93WcHPd+TLQZEof184ky1d
 hZSJdeeR4uXtXGNYLNlXbPhQ8LKA9MpIhjIeB4v2T7vk71uFW498dQYTO
 SR096xhhPRX25cGjpAYyqLuSDC58ywc4wXUrN+8U3N5fFquRdGMr7g5M9
 tTszrSaDzxLvjW2jeGinTd3wTc+dfBdWYGltBBwQAZ2EjlXGhWWlvQcl/
 q73esIWNKMHTOykG911wFWgNR5MlFhYvCg9r8wm8NWIMuiYUn4nCXEMkl w==;
X-CSE-ConnectionGUID: Zc0a77aSQdmwRIeqKrUF2Q==
X-CSE-MsgGUID: h4pBBWCnQM64A4212V5u1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301655"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301655"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:59 -0800
X-CSE-ConnectionGUID: aPcgOHDRR6qFNVi9YLpUuQ==
X-CSE-MsgGUID: UnjWfQEGT2mOpY22VMpcyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481601"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 07/11] drm/i915/psr: Add mechanism to notify PSR of DC5/6
 enable disable
Date: Fri,  7 Mar 2025 12:52:33 +0200
Message-ID: <20250307105237.2909849-8-jouni.hogander@intel.com>
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
index 7360ad39b1cc..b765a2ef9a6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -573,6 +573,8 @@ struct intel_display {
 	struct intel_vbt_data vbt;
 	struct intel_dmc_wl wl;
 	struct intel_wm wm;
+
+	struct work_struct psr_dc5_dc6_wa_work;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4b62d5832cbf..baf6a7110a55 100644
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
index 273e70a50915..bfe368239bc2 100644
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

