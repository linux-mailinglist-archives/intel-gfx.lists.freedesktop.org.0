Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9ACA233FF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 19:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9711310E9C7;
	Thu, 30 Jan 2025 18:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9s6IUqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440E010E9C7;
 Thu, 30 Jan 2025 18:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738262730; x=1769798730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wgW6BJKCO+emNsgogU0MflwSnYro1lIeQIjp7+kfDDs=;
 b=M9s6IUqhk4ELMsT0Ea1r4A3/kds/K8iLkWzbiOewjQarYC0a4cGlkbeO
 o6ejpIToEjTCtZ+9PTyiuYJBRFhxCIB0BjggYKTC14Yw4oYu5LBDLbmyg
 I/B9RxEd5vsRis/gwTaH8S2qhFT3+VdMBUPV+xp+mLqqnarsUhwn8syvX
 hUSWC0azzAOiyrnhu7m/BP5gsCmIBjMSgkyiHIxMrxwoH8GDeP1k1wNEg
 zcV4/pcrG++Q48MMH/Iblak1N6aWpvcgnbWQZBue6BfyzuOBMdCV60OSW
 BwiObQntusVBcGaRkf8oCr7o0Ap8REn9jTwc+IQaY/WIq+KPIXFhKvn4c Q==;
X-CSE-ConnectionGUID: hTP9trDRR1KXyrlzKi+OxA==
X-CSE-MsgGUID: 9XMuHogxQXKX/9YHQv+xLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38068244"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38068244"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 10:45:30 -0800
X-CSE-ConnectionGUID: 6YPyiIETRlmc6/OCu+4nMw==
X-CSE-MsgGUID: SULywzDHTkWLbN7257vGuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109561347"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Jan 2025 10:45:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jan 2025 20:45:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/vrr: Poll for the push send bit to clear on the
 DSB
Date: Thu, 30 Jan 2025 20:45:18 +0200
Message-ID: <20250130184518.22353-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
References: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
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

Since we now do the "wait for safe window" before triggering
the push send, there is a theoretical possibity that we may
have screwed up the vblank evasion and the push has slipped
past the vmax decision boundary. In that case the push would
only happen after the next frame's vactive, while we've
already signalled the flip to have completed via the DSB
interrupt immediately after triggering the push.

To make sure we catch such screwups let's poll for the push
send bit to clear. Assuming vblank delay has been dealt with
already it should clear within ~1 scanline. But for safety
let's give it ~2 scanlines. If the bit does not clear within
that time the DSB will raise the poll error interrupt to inform
us that something went wrong.

Also I suppose it might generally be a good idea to make sure
the send bit has cleared before we complete the commit because
we're not supposed to send a new push while the previous one
is still pending.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 31 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 4 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index be2691a80227..964a4bde3c88 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1990,6 +1990,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 
 	intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
 	intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
+	intel_vrr_dsb_wait_push_sent(crtc_state->dsb_color_vblank, crtc_state);
 	intel_dsb_interrupt(crtc_state->dsb_color_vblank);
 
 	intel_dsb_finish(crtc_state->dsb_color_vblank);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 69dbb0eb5ca1..3fc61c1848b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7732,6 +7732,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+			intel_vrr_dsb_wait_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index adb51609d0a3..2925a013f708 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -5,6 +5,7 @@
  */
 
 #include "i915_reg.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
@@ -416,6 +417,36 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 		intel_dsb_nonpost_end(dsb);
 }
 
+void intel_vrr_dsb_wait_push_sent(struct intel_dsb *dsb,
+				  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	int wait, count;
+
+	/* not to be used in mmio codepaths */
+	if (drm_WARN_ON(display->drm, !dsb))
+		return;
+
+	/*
+	 * We always do the send after the "wait for safe window", thus
+	 * the push should happen within ~1 scanline. Poll for ~2 scanlines
+	 * to make sure it does. If the bit does not clear DSB will raise
+	 * the poll error interrupt as an indication that we failed to
+	 * sequence things correctly.
+	 *
+	 * Note that vblank delay does postpone the bit clearing, but
+	 * we can ignore that by assuming that our caller has already
+	 * dealt with it via intel_dsb_wait_vblank_delay() after
+	 * triggering the push.
+	 */
+	wait = 2; /* usecs */
+	count = DIV_ROUND_UP(intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode, 2), wait);
+
+	intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
+		       TRANS_PUSH_SEND, 0, wait, count);
+}
+
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 899cbf40f880..19a5aa671eae 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state);
+void intel_vrr_dsb_wait_push_sent(struct intel_dsb *dsb,
+				  const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
-- 
2.45.3

