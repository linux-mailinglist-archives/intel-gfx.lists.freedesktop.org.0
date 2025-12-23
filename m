Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C785DCD8E88
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FAA410E103;
	Tue, 23 Dec 2025 10:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rck+kFjB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7665F10E215;
 Tue, 23 Dec 2025 10:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486731; x=1798022731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=phRNN+P6Wfy3qELxjeM/PZNhoTR8nV7uopbJ+z+zJUA=;
 b=Rck+kFjB1zhFL3tOxlDwhUJ85atUBp9fsylt5ceexkzfnZqKAjY29NP5
 7mzYv8BW36iqpXkHW9swUrdcJNedRj2/rLatuZR5LcuoqAf6oAmhIm3gV
 4z2EfyxgEiRV49+inOacStDv3k3/dHdve9hnjPJaQ70Eu6DYL3rPKx/VW
 Y+lpOTNUjwlBrXkRjYnM8Qaz9AkBSzxUlxvUQ7x/pQGxS9RtJMZdzCWz5
 clvYMISDCb7LgSuKE8iUXI0NedeSqCcDBOUlCFqfXqHN/9Tbw9w9vf5F8
 ExazPMQN4/Y6Z9bTYEet3DVg75pAjA7HZCymLwx2jdaal2QlWMUUZEJmY A==;
X-CSE-ConnectionGUID: Owy+wb4HTSWYHzdQEtFY4g==
X-CSE-MsgGUID: u9OuK/iATb2OPHyRnqCbzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68089993"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68089993"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:31 -0800
X-CSE-ConnectionGUID: pV7Mvy+0SyWuz0YrzrO2Vw==
X-CSE-MsgGUID: MZP1+56GQPm5PxlfFZLznw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734544"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:26 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 09/18] drm/i915/vrr: Add function to reset DC balance
 accumulated params
Date: Tue, 23 Dec 2025 16:15:31 +0530
Message-ID: <20251223104542.2688548-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v2:
- Typo, change crtc_state to old_crtc_state. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 3 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ecea404fbf91..ab0a8b791635 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1158,6 +1158,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
+		intel_vrr_dcb_reset(old_crtc_state, crtc);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index dbfe56e8973d..c3a8161fb8e1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -646,6 +646,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
 
+void
+intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
+		    struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!old_crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 66fb9ad846f2..d40ed5504180 100644
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
+void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
+			 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-- 
2.48.1

