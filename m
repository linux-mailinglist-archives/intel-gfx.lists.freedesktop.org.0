Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA78497C956
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E08C10E1DC;
	Thu, 19 Sep 2024 12:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a5zOONeM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7421610E1DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726749470; x=1758285470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xeiwmO/B6NwVpBf5fWOlLQrj7ias5gddDiiv3teajWM=;
 b=a5zOONeM8pcMcjxqn7mWnjwY7SoH4IVV27rwpIvbJhuoswR/sTjg7tIG
 L8DxViOxH+t8Q6lhQlcHJC3XLfoF9oOO3yhO2H6BJIA4LCaRKdPuMM5/R
 jSnaMKZ94/wpNWf9X3X4vfQmsvBlg8XaGSRIBsVjjHwHtFGdq3lO76BzR
 HIJMLK2RdB1g/duAHx/vXH07VSRyl1Ob/E6yohF0bIQAZPZwr4sWiLKBC
 RdoA6AWQb5DgOQgRhAgnLC0jtuGfZmsGx3pYow/HTujXaMq5KFJdI9zt8
 KIZQGq07QjYsgkdEkzJOzEfjps1bAE8Ma2dqXvxZpuBnKcBcxWRbY7sJE w==;
X-CSE-ConnectionGUID: hmQEq+D2ThWWiiame7QWRw==
X-CSE-MsgGUID: AfOaGFQkTzO2zmzDPVyYOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48240564"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="48240564"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:37:50 -0700
X-CSE-ConnectionGUID: yh2+goCiT1iVLHQPiTFwyw==
X-CSE-MsgGUID: TLi3VLy/QCeH1HBjGdNrmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74900468"
Received: from jhogande-mobl1.fi.intel.com ([10.237.72.58])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:37:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 1/2] drm/i915/psr: Add intel_psr_needs_block_dc_vblank for
 blocking dc entry
Date: Thu, 19 Sep 2024 15:37:24 +0300
Message-Id: <20240919123725.1222869-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240919123725.1222869-1-jouni.hogander@intel.com>
References: <20240919123725.1222869-1-jouni.hogander@intel.com>
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent it in case of Panel Replay. Panel Replay switches main link off on
DC entry. This means vblank interrupts are not fired and is a problem if
user-space is polling for vblank events. For this purpose add new function
to query need for dc entry blocking on.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5ed446f1e3bab..a25039c70be91 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -35,6 +35,7 @@
 #include "intel_cursor_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
@@ -2227,6 +2228,36 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
+/**
+ * intel_psr_needs_block_dc_vblank - Check if block dc entry is needed
+ * @crtc_state: CRTC status
+ *
+ * We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
+ * prevent it in case of Panel Replay. Panel Replay switches main link off on
+ * DC entry. This means vblank interrupts are not fired and is a problem if
+ * user-space is polling for vblank events.
+ */
+bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_encoder *encoder;
+
+	for_each_encoder_on_crtc(crtc->base.dev, &crtc->base, encoder) {
+		struct intel_dp *intel_dp;
+
+		if (!intel_encoder_is_dp(encoder))
+			continue;
+
+		intel_dp = enc_to_intel_dp(encoder);
+
+		if (intel_dp_is_edp(intel_dp) &&
+		    CAN_PANEL_REPLAY(intel_dp))
+			return true;
+	}
+
+	return false;
+}
+
 static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 6eb5f15f674fa..5f26f61f82aa9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -58,6 +58,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
+bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

