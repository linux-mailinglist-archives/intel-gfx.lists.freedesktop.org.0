Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8353A64508
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C4C10E3BC;
	Mon, 17 Mar 2025 08:19:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jh8QjufG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3884710E3BC;
 Mon, 17 Mar 2025 08:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199568; x=1773735568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wZyi+sI91Uf3UWKM/2Y4ZCzu4hW6dIBV0/j9UJybMvs=;
 b=jh8QjufGDj82UQ0Dxn2F8AE3DoTglyyj1pkG6VP59mDOcvwkwitSTvB9
 SMzw69FB2gqzy3iJ88//eLb69e9cu03BupMLBogRUS83+wukgQO0wrH6t
 5AYia+A5PBvvIkAbZKzwD8Tg/DGJT4oCadx1qAND1zi52DXTBFySaHlj4
 3ZKYuGG4UJepbTGLVlrvKBpLXJq0RidugpNC+o1Om7Rvf7y3lOdm71B1w
 qTPjU87Am+PU1hDgPF9Pi+qAnkJb79IqZIBEV0r2yCJU6BnA+2Z+N7iPs
 nQ8QcK7brNKbxpBdmeMNJxQ3H8McqY7ur0B09A6ryLlUvAjA3z5wNBqln A==;
X-CSE-ConnectionGUID: x+aIFZmySfeB5SLhBRLiAw==
X-CSE-MsgGUID: eCWjywTgShKFYwK8el3kPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653515"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653515"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:28 -0700
X-CSE-ConnectionGUID: HBpkRORzQAKE0ZVBYIOFSA==
X-CSE-MsgGUID: nvunQJQLTy+G1LNGpQMiqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677164"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 08/11] drm/i915/psr: Add interface to notify PSR of vblank
 enable/disable
Date: Mon, 17 Mar 2025 10:19:02 +0200
Message-ID: <20250317081905.3683654-9-jouni.hogander@intel.com>
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

To implement Wa_16025596647 we need to get notification of vblank interrupt
enable/disable. Add new interface to PSR code for this notification.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 40 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index baf6a7110a555..afb9faed7784b 100644
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
index bfe368239bc27..a914b7ee3756a 100644
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

