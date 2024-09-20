Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267C697D11C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 08:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F1510E1C4;
	Fri, 20 Sep 2024 06:24:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jI/32quc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F45810E1C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 06:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726813439; x=1758349439;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nhkzQRKW3t3GFHvu3IwWisYUlmyeJRujfc5CDLweqQw=;
 b=jI/32qucdHEGJ16JgcdvGOPIUVeNk54+dUvtBJjxNBr5XclzdEJhqLWb
 MB0hgpIRjR/fAgOl6HoA5p1ZZ95jFzdNy58xt+qyl3AocuFQgzkpxVDao
 9tjL5F50bpzi44GFFC9l1iIVVA5WxcNXigt5bO8IILyfiiUa+eMldWjhK
 FDkT1mH/STuepdDYTgcKdvz5MYCSWgsIlXpTlHJjTrAB7N4x9i5HeBQ0W
 tKrXFaVsny1cpSPfL8caEu933tCirl0RKqwd0q8Hqu0ssaAu+cCTc639P
 y2EeFDuRB1fIBFgeKeYt0uTvxr6B0l3MV2Kvew+W/L6oH+wgeYtrf8De/ w==;
X-CSE-ConnectionGUID: XEP7UwcRQ7Sth4+iRzV6sw==
X-CSE-MsgGUID: hJzs6k7YTxG02rV58ihNZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="29704284"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="29704284"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:23:59 -0700
X-CSE-ConnectionGUID: Kq4Qm3r/Sv6TSQi9vHOSMQ==
X-CSE-MsgGUID: 9GyOW8oAQLWujeQ9+srr9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="107656097"
Received: from carterle-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:23:57 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 1/2] drm/i915/psr: Add intel_psr_needs_block_dc_vblank for
 blocking dc entry
Date: Fri, 20 Sep 2024 09:23:39 +0300
Message-Id: <20240920062340.1333777-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240920062340.1333777-1-jouni.hogander@intel.com>
References: <20240920062340.1333777-1-jouni.hogander@intel.com>
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b355d0a35652..e3357f3b5c705 100644
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
@@ -2229,6 +2230,36 @@ void intel_psr_resume(struct intel_dp *intel_dp)
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

