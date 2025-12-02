Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C272C9A78F
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:37:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C25110E588;
	Tue,  2 Dec 2025 07:37:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="miaWxfAA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C17910E587;
 Tue,  2 Dec 2025 07:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661018; x=1796197018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Lf4YLwcJf1UVRXAz9aWdjWmS0iX9V8EnzmmMdKT2GA=;
 b=miaWxfAA6mdvjIFrdTf9Lx/b0oeDnlwV2GWfnZzvaK/O6fUIuI+s59GM
 8/BgnRaUYkZTVr1f6ofaCnHUlnaj1EOOYUcMQBKlgGXVGWMMlKQUixV9n
 08w50wguhmOjtkTnvN43wSTsHswYjAkaNp1yoWEF7iWJKIwIMZk4RhyFu
 OMIkJg6HbJSnezCZKChhnKlQiphZJqD633iNl7FnZb6xuK7bPp2dJlZsN
 lYV1mYUbn5ytWm27dEB4Mw4SkFBO7WmhfEXP2Q1gL19Ln7bpcj5C60P+R
 47zPepRycqYW8vPJYCqvImPm2iVUReDoRqtx09THUIKdcHGWiqeVZ4H5s A==;
X-CSE-ConnectionGUID: sEK7KbFORj2P1v90jh3ZGg==
X-CSE-MsgGUID: P2bfwtj5QEiPq1tXbZUf7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219216"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219216"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:36:58 -0800
X-CSE-ConnectionGUID: lurB+CBgTNiWiwQiHqQHGQ==
X-CSE-MsgGUID: SO7lq3tDSB2FFdpyRE6O5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504827"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:36:56 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 08/17] drm/i915/vrr: Add function to reset DC balance
 accumulated params
Date: Tue,  2 Dec 2025 13:06:43 +0530
Message-ID: <20251202073659.926838-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 0a16c37b1dc6..798cb10ea3a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1158,6 +1158,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
+		intel_vrr_dcb_reset(old_crtc_state, crtc);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 74ad661f2654..637e4144cbea 100644
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

