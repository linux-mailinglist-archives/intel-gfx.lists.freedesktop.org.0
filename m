Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DECB9A3E0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4015610E741;
	Wed, 24 Sep 2025 14:29:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gLQQRhRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477F510E73E;
 Wed, 24 Sep 2025 14:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758724157; x=1790260157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9zfg6MTqferT231c43t5NiFnCT5TUgMgzpMDaxsYdak=;
 b=gLQQRhRaBYUS8uap+NMNkjO9WENtQ6Fb+57ffGec7ITnlRF9R2klCZtn
 +36HkGhiA6sqtPEFvmBEiMZ2ZpynjszJTQIE9pPbfn+qxRED4sTdpqsIQ
 DCxuOBcsTMOOnC03ZB43xhiMUm0UqPec3zHwFOuXgldCrV8gCbGgYJB3r
 pMyCAFRF+tzuJ5nOyzENaCPgvFFcZNFRbR0GT996/Ne/ljZxAZNeoZyKe
 cOUeTUYGuDI6JUrexmmtoB8FD+teGp8GCBfpWARK6JZaaVpbjsBt/nxJA
 pGixNychUDbOedKlNv+ihPQaG/5ue2KvMFzZbSop40h5P7ocC+L/NDF4K w==;
X-CSE-ConnectionGUID: wWVOX2yYT6GNKuGUHtKh5g==
X-CSE-MsgGUID: AIGEDPmYS1amWPUX269rTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61075917"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61075917"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:17 -0700
X-CSE-ConnectionGUID: W7v0ZF8GQuiavEhWIi3uFQ==
X-CSE-MsgGUID: mmStTtBtSeqFgJ2Fj85P1A==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/10] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Date: Wed, 24 Sep 2025 19:45:38 +0530
Message-ID: <20250924141542.3122126-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
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

Until LNL, intel_dsb_wait_vblanks() used to wait for the undelayed vblank
start. However, from PTL onwards, it waits for the start of the
safe-window defined by the number of lines programmed in the register
TRANS_SET_CONTEXT_LATENCY. This change was introduced to move the SCL
window out of the vblank region, supporting modes with higher refresh
rates and smaller vblanks. This change introduces a "safe window" a
scanline range from (undelayed vblank - SCL) to (delayed vblank - SCL).

As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
SCL lines earlier than the undelayed vblank start (safe window start).
If the flip occurs in the active region and the push happens before the
vmin decision boundary, the DSB wait fires early, and the push is sent
inside this safe window. In such cases, the push bit is cleared at the
delayed vblank, but our wait logic does not account for the early trigger,
leading to DSB poll errors.

To fix this, we add an explicit wait for the end of the safe window i.e.,
the scanline range from (undelayed vblank - SCL) to (delayed vblank - SCL).
Once past this window, we are exactly SCL lines away from the delayed
vblank, and our existing wait logic works as intended.

This additional wait is only effective if the push occurs before the vmin
decision boundary. If the push happens after the boundary, the hardware
already guarantees we're SCL lines away from the delayed vblank, and the
extra wait becomes a no-op.

v2:
- Use helpers for safe window start/end. (Ville)
- Move the extra wait inside the helper to wait for delayed vblank. (Ville)
- Update the commit message.

v3:
- Add more documentation for explanation for the wait. (Ville)
- Rename intel_vrr_vmin_safe_window_start/end as this is vmin safe
  window. (Ville)
- Minor refactoring to align with the code. (Ville)
- Update the commit message for more clarity.

v4:
- Retain name for intel_vrr_safe_window_start as it doesn't change with
  vmin/vmax etc. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
 3 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 135d40852e4c..1d9379a3240b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -824,6 +824,22 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
 					     dsb_vblank_delay(state, crtc));
 
+	/*
+	 * If the push happened before the vmin decision boundary
+	 * we don't know how far we are from the undelayed vblank.
+	 * Wait until we're past the vmin safe window, at which
+	 * point we're SCL lines away from the delayed vblank.
+	 *
+	 * If the push happened after the vmin decision boundary
+	 * the hardware itself guarantees that we're SCL lines
+	 * away from the delayed vblank, and we won't be inside
+	 * the vmin safe window so this extra wait does nothing.
+	 */
+	if (pre_commit_is_vrr_active(state, crtc))
+		intel_dsb_wait_scanline_out(state, dsb,
+					    intel_vrr_safe_window_start(crtc_state),
+					    intel_vrr_vmin_safe_window_end(crtc_state));
+
 	intel_dsb_wait_usec(dsb, usecs);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e414fb53552f..5f78b1af5fd5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -807,3 +807,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) >= 30)
+		return crtc_state->hw.adjusted_mode.crtc_vdisplay -
+		       crtc_state->set_context_latency;
+	else
+		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
+}
+
+int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vmin_vblank_start(crtc_state) -
+	       crtc_state->set_context_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..32f8644fc369 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -41,5 +41,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
+int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

