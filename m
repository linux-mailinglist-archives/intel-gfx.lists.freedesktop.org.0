Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4515997C7B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD1310E870;
	Thu, 10 Oct 2024 05:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZvsVrzqo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A6310E870;
 Thu, 10 Oct 2024 05:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728538466; x=1760074466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lB8wn+6G5oAKHs7RAX8RzIzr4i1sL7H45Rj+u3LM4Sg=;
 b=ZvsVrzqoYPIYiN7biTXMSdzvJsNsMzXkidwHrDDv8mNOGVGVeKatOB3i
 cuFPsk1ebuhhhn5C2o/JAHoWNzmPoiKmPKTHPlWV94S2/YTCdEw0JLnr8
 VEz2VoTzOPYvbCYIqoLhxo6Ov1mfYgWKyxYcCIyKLtWiPUkx/xQG/YmCm
 NAZa41mHesPmJXAOmLvfaQKju23Zx+O++NqF+gXcENSkQ/vg6i+vqQWDb
 72CTPLsF6BAnLQEPL45sKT/FEwBjj2eusDHEkDsOcGKwWLvkKfamq8I0N
 KAix+25pG0XUIdJMjIIOr+fdMPA8rUwBBNAKT9B/ccYk5NSk/v4Y7lLzi Q==;
X-CSE-ConnectionGUID: 61KnjtRrT3Gwi/x2dBM/VQ==
X-CSE-MsgGUID: rp9B7d1OSvG4nLLwQC4B+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30749363"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30749363"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:26 -0700
X-CSE-ConnectionGUID: OqVo+IPiQjCj8nDhYF0rbw==
X-CSE-MsgGUID: TwYwBIxCRyaOkOCdE8RWcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76697298"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.162])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/7] drm/i915/vrr: Use TRANS_PUSH mechanism for PSR frame
 change
Date: Thu, 10 Oct 2024 08:33:12 +0300
Message-Id: <20241010053316.1580527-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241010053316.1580527-1-jouni.hogander@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c |  6 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c | 45 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
 3 files changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e3357f3b5c705..be73c1aaf1ee2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -1928,6 +1929,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 	}
+
+	if (DISPLAY_VER(dev_priv) >= 20)
+		intel_vrr_psr_frame_change_enable(crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2164,6 +2168,8 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_lock(&intel_dp->psr.lock);
 
+	if (DISPLAY_VER(display) >= 20)
+		intel_vrr_psr_frame_change_disable(old_crtc_state);
 	intel_psr_disable_locked(intel_dp);
 
 	mutex_unlock(&intel_dp->psr.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8b4e3f938efea..5925ade4591d4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -312,12 +312,20 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 trans_push_val = TRANS_PUSH_SEND;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && (DISPLAY_VER(display) < 20 ||
+					!crtc_state->has_psr))
 		return;
 
+	if (crtc_state->vrr.enable)
+		trans_push_val |= TRANS_PUSH_EN;
+
+	if (DISPLAY_VER(display) >= 20 && crtc_state->has_psr)
+		trans_push_val |= LNL_TRANS_PUSH_PSR_PR_EN;
+
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
+		       trans_push_val);
 }
 
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
@@ -325,7 +333,8 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable && (DISPLAY_VER(display) < 20 ||
+					!crtc_state->has_psr))
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -358,6 +367,36 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	intel_de_rmw(display, TRANS_PUSH(display, crtc_state->cpu_transcoder),
+		     0, LNL_TRANS_PUSH_PSR_PR_EN);
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
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_rmw(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
+		     LNL_TRANS_PUSH_PSR_PR_EN, 0);
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 89937858200d3..a75f159168c11 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -23,6 +23,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
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

