Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 245EBC626F8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DA810E2CE;
	Mon, 17 Nov 2025 05:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NdiVdQmg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E10410E2CB;
 Mon, 17 Nov 2025 05:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358286; x=1794894286;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zNGHogePQsAORJ6ZI9pL7+9r74BMUqFHVTA4ag0dYQU=;
 b=NdiVdQmgi+jgN77Xpgb8nvbWsySmjsq+MH/MjxnLH/7DjgaJIDFT7Tb9
 bBGh5B+cqAM8HmYbkfY/UWkMeDlJOtDHnZKJfGHjL1fOJPC+E9xh3JN54
 XJkSPfhSrjUBPi8WisYi2zssitQu/GiOcO+5S5p4TkNcbBbdYJ6rSNPrs
 10CJAD3M0cLokFbPzPpaMlQEUHc5GB9OoxZ/MTNGM02hly0G2Q73HqBMy
 gVlfDgb6YWYsDHyYsHThP46jibT80PZIFsOul9tPiUkOG+ypwwG7XuW7R
 x/3pEwp4WL8chPHhLpKwJztVN0nKCqx9EhSJu85I7dCbZvJd2ajlKLFlH A==;
X-CSE-ConnectionGUID: B6OPhOuTQJ+D/BkFULtbDg==
X-CSE-MsgGUID: vGJJ1e1NQPWgWnxATKGdTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446029"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446029"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:46 -0800
X-CSE-ConnectionGUID: acmtFTJAQS+I1amGmuNlJQ==
X-CSE-MsgGUID: wkviAWTASmuF4x478ATHWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016342"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:44 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 08/18] drm/i915/vrr: Add function to reset DC balance
 accumulated params
Date: Mon, 17 Nov 2025 11:14:32 +0530
Message-ID: <20251117054442.4047665-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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

Add function which resets all accumulated DC Balance parameters
whenever adaptive mode of VRR goes off. This helps to give a
fresh start when VRR is re-enabled.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 3 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 22565351b2ba..df5d1554538d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1158,6 +1158,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
+		intel_vrr_dcb_reset(old_crtc_state, crtc);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7cb484dd96df..5e24ac3e6c75 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -624,6 +624,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
 
+void
+intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
+		    struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 66fb9ad846f2..1a11d288dfb4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -11,6 +11,7 @@
 struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dsb;
 struct intel_display;
@@ -39,6 +40,8 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+void intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
+			 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-- 
2.48.1

