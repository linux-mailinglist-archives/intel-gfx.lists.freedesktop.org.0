Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D05A2F28A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:07:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B4010E1F2;
	Mon, 10 Feb 2025 16:07:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vq5TIa14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7F910E1D2;
 Mon, 10 Feb 2025 16:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739203635; x=1770739635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCjM1ygx//9vc8o3R/yO00IgxxIqgBTgOL+MlJ+rC1U=;
 b=Vq5TIa14v34INRE2VJQLmOdXv6au1BcFgS+8cFwR9kd4V0MBzvTNprPN
 a0vslO2dwbd3nnjgJsQGcNHvDeVuZNIDytiV8ip1DXY99gJJGcmjnXCQK
 98rGnluJvLJO2KIPTj9a3nMevqzDroQVK2UcnA4ME8fosT2y1u3V0AGc5
 UgHg+tLRLkIS4HJ3p57BDxI1XHIeRvQD44nPPkqNAg35WZZQrCwxtcivK
 gHQPFur8J6M4kIvksP9Em7F0jOqNqb4WQM7oiQq3+AV5hvX1eRYlq63xu
 OZhJaSPkVvc74+orf7PBLCj41PFxHMfMXUkLS9+PywbIFJsEHo3rKBi7o A==;
X-CSE-ConnectionGUID: yqyhAK7CSVSuhKBjZG/Gag==
X-CSE-MsgGUID: r2RalY6XQJaZh8GF+P69LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27393085"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="27393085"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:07:15 -0800
X-CSE-ConnectionGUID: GQRY+85CRamQ0rq8ZpAnJA==
X-CSE-MsgGUID: FjG6bLHKSOiG04zGJ4QHYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112447102"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:07:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:07:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 7/8] drm/i915/vrr: Check that the push send bit is clear
 after delayed vblank
Date: Mon, 10 Feb 2025 18:07:11 +0200
Message-ID: <20250210160711.24010-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207223159.14132-8-ville.syrjala@linux.intel.com>
References: <20250207223159.14132-8-ville.syrjala@linux.intel.com>
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

Since we don't do mailbox updates the push send bit
should alwyas clear by the time the delay vblank fires
and the flip completes. Check for that to make sure we
haven't screwed up the sequencing/vblank evasion/etc.

On the DSB path we should be able to guarantee this
since we don't have to deal with any scheduler latencies
and whatnot. I suppose unexpected DMA/memory latencies
might be the only thing that might trip us up here.

For the MMIO path we do always have a non-zero chance
that vblank evasion fails (since we can't really guarantee
anything about the scheduling behaviour). That could trip
up this check, but that seems fine since we already print
errors for other types of vblank evasion failures.

Should the CPU vblank evasion actually fail, then the push
send bit can still be set when the next commit happens. But
both the DSB and MMIO paths should handle that situation
gracefully.

v2: Only check once instead of polling for two scanlines
    since we should now be guaranteed to be past the
    delayed vblank.
    Also check in the MMIO path for good measure
v3: Skip the push send check when VRR is enabled.
    With joiner the secondary pipe's DSBs doen't have access
    to the transcoder registers, and so doing this check
    there triggers a reponse timeout error on the DSB. VRR
    is not currently allowed when using joiner, so this will
    prevent the bogus register access.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  4 +++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 34 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 4 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4d8f6509cac4..cfe14162231d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1991,6 +1991,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (crtc_state->use_dsb) {
 		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
 		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
+		intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
 		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0790b2a4583e..34434071a415 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7737,6 +7737,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
 	}
@@ -7886,6 +7887,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			intel_crtc_disable_flip_done(state, crtc);
 
 		intel_atomic_dsb_wait_commit(new_crtc_state);
+
+		if (!state->base.legacy_cursor_update && !new_crtc_state->use_dsb)
+			intel_vrr_check_push_sent(NULL, new_crtc_state);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index adb51609d0a3..cac49319026d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -416,6 +416,40 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 		intel_dsb_nonpost_end(dsb);
 }
 
+void intel_vrr_check_push_sent(struct intel_dsb *dsb,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!crtc_state->vrr.enable)
+		return;
+
+	/*
+	 * Make sure the push send bit has cleared. This should
+	 * already be the case as long as the caller makes sure
+	 * this is called after the delayed vblank has occurred.
+	 */
+	if (dsb) {
+		int wait_us, count;
+
+		wait_us = 2;
+		count = 1;
+
+		/*
+		 * If the bit hasn't cleared the DSB will
+		 * raise the poll error interrupt.
+		 */
+		intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
+			       TRANS_PUSH_SEND, 0, wait_us, count);
+	} else {
+		if (intel_vrr_is_push_sent(crtc_state))
+			drm_err(display->drm, "[CRTC:%d:%s] VRR push send still pending\n",
+				crtc->base.base.id, crtc->base.name);
+	}
+}
+
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 899cbf40f880..514822577e8a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state);
+void intel_vrr_check_push_sent(struct intel_dsb *dsb,
+			       const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
-- 
2.45.3

