Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE206C1FE9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 19:35:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D3110E2C9;
	Mon, 20 Mar 2023 18:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C4410E22C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 18:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679337336; x=1710873336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hh1xabn9JQfh1zJvJ9e671Pv0J7j7t5wEdWLcUotYXk=;
 b=lHr+ElJHFd9JbJcx24CtTzrnOa9jq52VOF4tvtYLd3BlEcc+9/X9v3Pg
 NS/8GPdzITQ7c6Sp6G2oclDlDy0s4b80JbDtejhMYzW6J0qol0Q1Qd3PE
 QBTH2e5RHwRRdjMR03Lqo8hcbhb692046yFtX7qp9tM5OUxZT8songugg
 hYRq8LNGdjuPbYYvucGQWKUfVAa8ylwlVvhoi/N/dDbdCxgW/QfwYQxwK
 267ffiez6boPKkIrCmOm1eYgKYe8EgJjX6pxHRfb5+/AK77YWrbeshGL0
 85QUDg3vDNYJUQM4jHwlHaEHZ7zQEox405oSbxlHiCSjOGkhmLKyWf4Wm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318396846"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="318396846"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 11:35:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770291131"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770291131"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 11:35:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 20:35:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 20:35:32 +0200
Message-Id: <20230320183532.17727-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320095438.17328-6-ville.syrjala@linux.intel.com>
References: <20230320095438.17328-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: Disable DC states for all
 commits
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Keeping DC states enabled is incompatible with the _noarm()/_arm()
split we use for writing pipe/plane registers. When DC5 and PSR
are enabled, all pipe/plane registers effectively become self-arming
on account of DC5 exit arming the update, and PSR exit latching it.

What probably saves us most of the time is that (with PIPE_MISC[21]=0)
all pipe register writes themselves trigger PSR exit, and then
we don't re-enter PSR until the idle frame count has elapsed.
So it may be that the PSR exit happens alreday before we're
update the state too much.

Also the PSR1 panel (at least on this KBL) seems to discard the first
frame we trasmit, presumably still scanning out from its internal
framebuffer at that point. So only the second frame we transmit is
actually visible. But I suppose that could also be panel specific
behaviour. I haven't checked out how other PSR panels behave, nor
did I bother to check what the eDP spec has to say about this.

And since this really is all about DC states, let's switch from
the MODESET domain to the DC_OFF domain. Functionally they are
100% identical. We should probably remove the MODESET domain...

And for good measure let's toss in an assert to the place where
we do the _noarm() register writes to make sure DC states are
in fact off.

v2: Just use intel_display_power_is_enabled() (Imre)

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Fixes: d13dde449580 ("drm/i915: Split pipe+output CSC programming to noarm+arm pair")
Fixes: f8a005eb8972 ("drm/i915: Optimize icl+ universal plane programming")
Fixes: 890b6ec4a522 ("drm/i915: Split skl+ plane update into noarm+arm pair")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5146d6cc7400..5a386c7c0bc9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6989,6 +6989,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	intel_fbc_update(state, crtc);
 
+	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF));
+
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_commit_noarm(new_crtc_state);
@@ -7356,8 +7358,28 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
 
-	if (state->modeset)
-		wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_MODESET);
+	/*
+	 * During full modesets we write a lot of registers, wait
+	 * for PLLs, etc. Doing that while DC states are enabled
+	 * is not a good idea.
+	 *
+	 * During fastsets and other updates we also need to
+	 * disable DC states due to the following scenario:
+	 * 1. DC5 exit and PSR exit happen
+	 * 2. Some or all _noarm() registers are written
+	 * 3. Due to some long delay PSR is re-entered
+	 * 4. DC5 entry -> DMC saves the already written new
+	 *    _noarm() registers and the old not yet written
+	 *    _arm() registers
+	 * 5. DC5 exit -> DMC restores a mixture of old and
+	 *    new register values and arms the update
+	 * 6. PSR exit -> hardware latches a mixture of old and
+	 *    new register values -> corrupted frame, or worse
+	 * 7. New _arm() registers are finally written
+	 * 8. Hardware finally latches a complete set of new
+	 *    register values, and subsequent frames will be OK again
+	 */
+	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
@@ -7506,8 +7528,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * the culprit.
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
-		intel_display_power_put(dev_priv, POWER_DOMAIN_MODESET, wakeref);
 	}
+	intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF, wakeref);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 
 	/*
-- 
2.39.2

