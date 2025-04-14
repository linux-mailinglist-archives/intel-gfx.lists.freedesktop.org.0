Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A103A87CE2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01BE10E553;
	Mon, 14 Apr 2025 10:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdraCeX1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5B010E556;
 Mon, 14 Apr 2025 10:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625137; x=1776161137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=STNRM/fPr83BseZ/OtR3DdnpwdGSHJuiABdaJd2rrn4=;
 b=kdraCeX17u6qW9z1q/QI1wRrf3qO0D8b6E7rP49h+bBBBQZpUAyvGHTd
 xPj1B7i82AFkEByCmMKuIS8VwXEUFZKNnjbVgUqFAPllgJy+6zxWX46fr
 oULz4BIKWI0eyXjnXkWzIOYMjTCFYcMcAklfTPrNFaxz6c9qHS/Cc5wOH
 wJ/3RWPguXLjs01cyRal4ckSOO6jpOt+GtHbV+fjWXse/AXF1BWm1+VbZ
 34IBPyo2ctcjp+xJWys1pwk2tYqjI1TqABYj4OGTiO9TZ1okPWcbFXWuH
 GGF99E0qWP/J44CS/hCddrDRsCcy9VHVSQOMFs6kU/V65rn/jV6iVMuVP A==;
X-CSE-ConnectionGUID: Xe9RIM4LSiqTX6yJ87LTvA==
X-CSE-MsgGUID: z7C9q0FPQsmy4t/zOtev0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789126"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789126"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:37 -0700
X-CSE-ConnectionGUID: 0H1Ip2i3Ta2qu8OzuE/UDg==
X-CSE-MsgGUID: K1jSH/irRhy5QfkffWFqmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743209"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 09/13] drm/i915/psr: Add interface to notify PSR of vblank
 enable/disable
Date: Mon, 14 Apr 2025 13:05:04 +0300
Message-ID: <20250414100508.1208774-10-jouni.hogander@intel.com>
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

To implement Wa_16025596647 we need to get notification of vblank interrupt
enable/disable. Add new interface to PSR code for this notification.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 40 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cc69a5b6463d..5e9277ccfe84 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3797,6 +3797,46 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
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

