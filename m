Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ACFABFCC6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0702310E7C7;
	Wed, 21 May 2025 18:17:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+I9AORe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6692E10E876;
 Wed, 21 May 2025 18:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851441; x=1779387441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xDX9cRK7/lVXVPQkUc+QXXSyuddryy8yb/ELgAlD6kI=;
 b=h+I9AORex7T4Ww6kphaYROppjwZ3kTg1a0rnjszzeDobJ0wis/+iFVDH
 /EDpaZOV+SRoZDqB+mH2DVeUMaEyaZ3CyYX9tY7DeKC0I7BUXLGrD2RVP
 pmwgtDLvQFOCMZyRvU6Bb5znN51skr6V9+Tx70sg/7VrKBKYoLRo9IYKW
 Esvkk5BlJCFw+CEsOllqFcUOi4bvOXau5zlkWE/Q4s0rnAdvSdT0rtwyD
 YimkVYsbSD27T2dJHh1MtTx7BYrrN7f5UC0nmgpbf6dFRgwZ6e971OHwy
 bxd8dyvcrWlDDwuSWLeGivtK0Jhv3Tku0cEx47iIdJUiZqzx1gVEIjEl7 g==;
X-CSE-ConnectionGUID: O9yN5ECuT5ayeipVcJhStw==
X-CSE-MsgGUID: ZgFMxgDuSDW2PnIMLVitXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244772"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244772"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:17:20 -0700
X-CSE-ConnectionGUID: h26l/xrHTBKi/0jzylJfZw==
X-CSE-MsgGUID: aqsHyJDmShOjagjkgPXv1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322298"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:17:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:17:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 10/13] drm/i915/flipq: Implement Wa_18034343758
Date: Wed, 21 May 2025 21:16:42 +0300
Message-ID: <20250521181645.32737-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Implement the driver side of Wa_18034343758, which is supposed to
prevent the DSB and DMC from accessing registers in parallel, and
thus potentially corrupting the registers due to a hardware issue
(which should be fixed in PTL-B0).

The w/a sequence goes as follows:
DMC starts the DSB
 |                 \
DMC halts itself    | DSB waits a while for DMC to have time to halt
 .                  | DSB executes normally
 .		    | DSB unhalts the DMC at the very end
 .             	   /
DMC resumes execution

v2: PTL-B0+ firmware no longer has the w/a since the hw got fixed

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  8 +++++++
 drivers/gpu/drm/i915/display/intel_flipq.c   | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h   |  2 ++
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f2a0bc5323c9..7704de9437fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7231,6 +7231,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7261,6 +7265,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (DISPLAY_VER(display) >= 9)
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
+
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_unhalt_dmc(new_crtc_state->dsb_commit, crtc);
 	}
 
 	if (new_crtc_state->dsb_color_vblank)
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 4bde16b3624a..4d9145b39f16 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -372,3 +372,27 @@ void intel_flipq_add(struct intel_crtc *crtc,
 
 	intel_flipq_sw_dmc_wake(crtc);
 }
+
+/* Wa_18034343758 */
+static bool need_dmc_halt_wa(struct intel_display *display)
+{
+	return DISPLAY_VER(display) == 20 ||
+		(display->platform.pantherlake &&
+		 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
+}
+
+void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (need_dmc_halt_wa(display))
+		intel_dsb_wait_usec(dsb, 2);
+}
+
+void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (need_dmc_halt_wa(display))
+		intel_dsb_reg_write(dsb, PIPEDMC_CTL(crtc->pipe), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.h b/drivers/gpu/drm/i915/display/intel_flipq.h
index 64d3c2a5bb7b..3a5e825884c3 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -28,5 +28,7 @@ void intel_flipq_add(struct intel_crtc *crtc,
 		     unsigned int pts,
 		     enum intel_dsb_id dsb_id,
 		     struct intel_dsb *dsb);
+void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
 #endif /* __INTEL_FLIPQ_H__ */
-- 
2.49.0

