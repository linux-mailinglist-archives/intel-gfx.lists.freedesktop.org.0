Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB3FA87CE0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892AB10E555;
	Mon, 14 Apr 2025 10:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BxDi7W4C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A98210E550;
 Mon, 14 Apr 2025 10:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625135; x=1776161135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bhHoJlPQ3jAfgG76FMuIFYkrvAXS8gmjHUOnf3e03ec=;
 b=BxDi7W4CDudoTGGb7YBFFDOzmerlpKK9I3aMkO2rQKjy8RvbM0TUMXcs
 jtp0DCfq1DaVZlHXNMkGvpZCQWHPYCbrVfiUw7kb3jpcuzYrRjM0eEc8v
 EiFWOtu9Oi9uq+Dgf7Qdu0DDNGWs1UYggO+EgwvqzlaXUM6ZJ6vGIg3CM
 qDyz+LIqiqyyDCLkAAWmsDF70ZDec4DFMD+wTfhxxV8vtZCpmHOfoXwU2
 y82Nyp73kElJy4i/2PCkr/MISvutIJ51S7R3RoXAM3CHBbG7gpQVeca37
 Hi9biLmKuGmPXLYSA3TTpPvFLcA2oe4Qa/Rvn5duRoqeBpuKMrHZO+rer g==;
X-CSE-ConnectionGUID: CeeWJ+G2QEmRHbncRfCEbg==
X-CSE-MsgGUID: hFTQ2ufnSiieyBptlhezrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789122"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789122"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:35 -0700
X-CSE-ConnectionGUID: eKGbDnaCTYCnjWWzv/vM+A==
X-CSE-MsgGUID: cy+1LZ7HQGyouxYlSj1VyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743206"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 08/13] drm/i915/psr: Add mechanism to notify PSR of DC5/6
 enable disable
Date: Mon, 14 Apr 2025 13:05:03 +0300
Message-ID: <20250414100508.1208774-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 50 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +
 3 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 48e47f0fd8b7..650ab055e148 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -579,6 +579,8 @@ struct intel_display {
 	struct intel_vbt_data vbt;
 	struct intel_dmc_wl wl;
 	struct intel_wm wm;
+
+	struct work_struct psr_dc5_dc6_wa_work;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9a79a16268cb..cc69a5b6463d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3695,6 +3695,56 @@ static void intel_psr_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp
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

