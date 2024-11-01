Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C639B8B3B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 07:27:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADD110E958;
	Fri,  1 Nov 2024 06:27:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lo9GFLwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AE310E958;
 Fri,  1 Nov 2024 06:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730442474; x=1761978474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oo1tYRfQT09qkM4Ri2prJoqhq0yPnPeIBlJrh64c1Wo=;
 b=Lo9GFLwIDvZImnJCTNNjx3g2fe6KN8aedTmLh0v17qf8McH8to1s+3F+
 F85AVR/b1BktbMEJTWfN2EjKezS2zI25SFRnwWYdZNKMY0rUS9ahPwAYV
 3B78h8GOE/q9A5utW6NdKC0fpz/Y6WDZ9G8b81wFGU8c8tKGbqqeLsdYG
 OTo6CvqrFcOjzTT6vcizzws9UuWjj9eCT0RUG8drCW2hX9wcDXQV5wrSd
 e8eO+zLIWJz8kEd4rFWVJEAe+9Vh2jmlDppYdAzKfOigVku4k/YhiEpRg
 cxt0jcP4SbI0+vsiPde3We3jwOSn9XTDo1h5h2aBYrIE8SJtljLqmOBna g==;
X-CSE-ConnectionGUID: i3Cc7w0dTYGFOESzlPE4Uw==
X-CSE-MsgGUID: FAKwkZy5Sw6Aqxvw5LPVmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41306062"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41306062"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:53 -0700
X-CSE-ConnectionGUID: kF0ikdcZRaGOw25W/Yi5CA==
X-CSE-MsgGUID: 1OAHfzxjRs+BtkEMLM6cwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87648580"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/7] drm/i915/vrr: Use TRANS_PUSH mechanism for PSR frame
 change
Date: Fri,  1 Nov 2024 08:27:24 +0200
Message-Id: <20241101062728.3865980-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101062728.3865980-1-jouni.hogander@intel.com>
References: <20241101062728.3865980-1-jouni.hogander@intel.com>
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

In Lunarlake and onwards it is possible to generate "PSR frame change"
event using TRANS_PUSH mechanism. Implement function to enable this and
take PSR into account in intel_vrr_send_push.

v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c |  6 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c | 37 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
 3 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 880ea845207f..a82d75f97c55 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -1934,6 +1935,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 	}
+
+	if (DISPLAY_VER(dev_priv) >= 20)
+		intel_vrr_psr_frame_change_enable(crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2170,6 +2174,8 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_lock(&intel_dp->psr.lock);
 
+	if (DISPLAY_VER(display) >= 20)
+		intel_vrr_psr_frame_change_disable(old_crtc_state);
 	intel_psr_disable_locked(intel_dp);
 
 	mutex_unlock(&intel_dp->psr.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 328cc0a741bf..51cf1800ae87 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -324,7 +324,8 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && (DISPLAY_VER(display) < 20 ||
+					!crtc_state->has_psr))
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -336,7 +337,8 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && (DISPLAY_VER(display) < 20 ||
+					!crtc_state->has_psr))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -381,6 +383,37 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+/**
+ * intel_vrr_psr_frame_change_enable - Enable PSR frame change mechanism
+ * @crtc_state: Intel crtc state
+ *
+ * This function is for PSR to enable PSR frame change mechanism which is more
+ * controlled way to generate frame change event.
+ */
+void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_vrr_trans_push_enabled_set_clear(crtc, cpu_transcoder, 0,
+					       LNL_TRANS_PUSH_PSR_PR_EN);
+}
+
+/**
+ * intel_vrr_psr_frame_change_disable - Disable PSR frame change mechanism
+ * @crtc_state: Intel crtc state
+ *
+ * This function is for PSR to disable PSR frame change mechanism.
+ */
+void intel_vrr_psr_frame_change_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_vrr_trans_push_enabled_set_clear(crtc, cpu_transcoder,
+					       LNL_TRANS_PUSH_PSR_PR_EN, 0);
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index b3b45c675020..b954a60e1aae 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -25,6 +25,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
+void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_psr_frame_change_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

