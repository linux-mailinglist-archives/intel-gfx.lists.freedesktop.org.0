Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B13AE6D33
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 19:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5DE10E60C;
	Tue, 24 Jun 2025 17:01:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIoI2oFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B673F10E60C;
 Tue, 24 Jun 2025 17:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784473; x=1782320473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dMEyQsCzUXNsK2nOMYT3reTp0uNixqmRnTJwja3lKx0=;
 b=KIoI2oFYfDRzIit8Xwk41rOLXNlP4AOTM7McFW4AY8dNPPhaDmowobJs
 vfmeUB3A1KiWV7eh/2T3vu0aFeii7KjPBztkUdIXcF8L7w164LH7fECtT
 xS7rukTxWRgQvbiLXHYtNCjMRO6L6XUu3cz0m36nEeGA3W5mLGlVcfUj6
 qqg8KFXjGaNLRs1AFEdli1c0kmHp3OFTz5VOwCbuSBBTM4g++oRGFba11
 2k0rdn8EtBC+DdJ4X/5SiUB2OqDwfx+KNW1e/S1wTXpLX0MNUsegy9VW2
 aGrbC/S8h/apcL5Jyd6SMi3hGOn03E6PoC5PESQjXd8g07xkMwAdHgk7t g==;
X-CSE-ConnectionGUID: qNDvzMctSoGCPsebfno6Ug==
X-CSE-MsgGUID: w/hYtRvwTgmeV2jsPyJr6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56820891"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56820891"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:01:13 -0700
X-CSE-ConnectionGUID: ml6aauzcSU2+gg5wPDtSng==
X-CSE-MsgGUID: w2JhiGmvQ8a9YFZ1rKJVXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157749636"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 10:01:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 20:01:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v5 6/9] drm/i915/flipq: Implement Wa_18034343758
Date: Tue, 24 Jun 2025 20:00:46 +0300
Message-ID: <20250624170049.27284-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
References: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
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
v3: Do the w/a on all PTL for now since we only have the A0 firmware
    binaries which issues the halt instructions unconditionally
v4: PTL DMC binaries do in fact have the A0 vs. B0 split, so skip
    the w/a on PTL-B0+

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  8 +++++++
 drivers/gpu/drm/i915/display/intel_flipq.c   | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h   |  2 ++
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d717b48b454..d67c57ae3cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7246,6 +7246,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7276,6 +7280,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (DISPLAY_VER(display) >= 9)
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
+
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_unhalt_dmc(new_crtc_state->dsb_commit, crtc);
 	}
 
 	if (intel_color_uses_chained_dsb(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 9dbe0104c9ef..ee69b85cb104 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -400,3 +400,27 @@ void intel_flipq_add(struct intel_crtc *crtc,
 
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
index 195ff0dd83f5..2d4386a16197 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -29,5 +29,7 @@ void intel_flipq_add(struct intel_crtc *crtc,
 		     enum intel_dsb_id dsb_id,
 		     struct intel_dsb *dsb);
 int intel_flipq_exec_time_us(struct intel_display *display);
+void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
 #endif /* __INTEL_FLIPQ_H__ */
-- 
2.49.0

