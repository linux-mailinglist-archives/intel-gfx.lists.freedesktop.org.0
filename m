Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 499FF724CD9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA1210E3A1;
	Tue,  6 Jun 2023 19:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F16210E39F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078945; x=1717614945;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KoowLJkWhIj2ujX0Ha+ed/qnFTYBxowmjDMlIqydk9o=;
 b=H7w+ZpEzvC+jVEVBzMOANgdQMyrHcalKLDifJG1oMkNtEG1Znfhoj9/I
 37+AWDhiT8gUuwAN61edMSIg3Z4RZypIpeKbRlZcHEJbJ2yJHiEoqx70x
 61RUzf1yYU6olfe9zH3aR+0cmacvUIKwoLJdDiziGYBYRizXJhmZeIqFU
 fk7murrsNsn1xTBTF7KCN8StkjGjaoh898BhQfPImrqxeNS/+RT0G/3vl
 EyE1eQsv9as0j2Oo3vcXy4RCzwi1LhyNZJ2NjuwZ6kQX6Glhw/VBm3Anm
 CCScbLsLIHR2Ny/Q+KnKnkY0mYECs8VZpP9EL6qMItiAZ23n0lbqa49Pg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146346"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146346"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187120"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187120"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:57 +0300
Message-Id: <20230606191504.18099-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/19] drm/i915/dsb: Load LUTs using the DSB
 during vblank
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

Loading LUTs with the DSB outside of vblank doesn't really
work due to the palette anti-collision logic. Apparently the
DSB register writes don't get stalled like CPU mmio writes
do and instead we end up corrupting the LUT entries. Disabling
the anti-collision logic would allow us to successfully load
the LUT outside of vblank, but presumably that risks the LUT
reads from the scanout (temportarily) getting corrupted data
from the LUT instead.

The anti-collision logic isn't active during vblank so that
is when we can successfully load the LUT with the DSB. That is
what we want to do anyway to avoid tearing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 30 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_color.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_crtc.c    |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++
 4 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2db9d1d6dadd..077e45372dab 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1660,12 +1660,6 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 		MISSING_CASE(crtc_state->gamma_mode);
 		break;
 	}
-
-	if (crtc_state->dsb) {
-		intel_dsb_finish(crtc_state->dsb);
-		intel_dsb_commit(crtc_state->dsb, false);
-		intel_dsb_wait(crtc_state->dsb);
-	}
 }
 
 static void vlv_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1772,6 +1766,9 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
+	if (crtc_state->dsb)
+		return;
+
 	i915->display.funcs.color->load_luts(crtc_state);
 }
 
@@ -1788,6 +1785,9 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	i915->display.funcs.color->color_commit_arm(crtc_state);
+
+	if (crtc_state->dsb)
+		intel_dsb_commit(crtc_state->dsb, true);
 }
 
 void intel_color_post_update(const struct intel_crtc_state *crtc_state)
@@ -1801,6 +1801,7 @@ void intel_color_post_update(const struct intel_crtc_state *crtc_state)
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
@@ -1813,6 +1814,12 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 		return;
 
 	crtc_state->dsb = intel_dsb_prepare(crtc, 1024);
+	if (!crtc_state->dsb)
+		return;
+
+	i915->display.funcs.color->load_luts(crtc_state);
+
+	intel_dsb_finish(crtc_state->dsb);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
@@ -1824,6 +1831,17 @@ void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 	crtc_state->dsb = NULL;
 }
 
+void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->dsb)
+		intel_dsb_wait(crtc_state->dsb);
+}
+
+bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->dsb;
+}
+
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 8002492be709..8ecd36149def 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -19,6 +19,8 @@ void intel_color_crtc_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state);
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
+bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
+void intel_color_wait_commit(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
 void intel_color_post_update(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 182c6dd64f47..36c9b590a058 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -24,6 +24,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
+#include "intel_dsb.h"
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_pipe_crc.h"
@@ -394,7 +395,8 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 	return crtc_state->hw.active &&
 		!intel_crtc_needs_modeset(crtc_state) &&
 		!crtc_state->preload_luts &&
-		intel_crtc_needs_color_update(crtc_state);
+		intel_crtc_needs_color_update(crtc_state) &&
+		!intel_color_uses_dsb(crtc_state);
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f23dd937c27c..25d6b19e6944 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -78,6 +78,7 @@
 #include "intel_dpll_mgr.h"
 #include "intel_dpt.h"
 #include "intel_drrs.h"
+#include "intel_dsb.h"
 #include "intel_dsi.h"
 #include "intel_dvo.h"
 #include "intel_fb.h"
@@ -7056,6 +7057,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
 			intel_crtc_disable_flip_done(state, crtc);
+
+		intel_color_wait_commit(new_crtc_state);
 	}
 
 	/*
-- 
2.39.3

