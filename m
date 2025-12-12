Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEB9CB9204
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0956310E80B;
	Fri, 12 Dec 2025 15:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WF8Lzyv4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E451210E80B;
 Fri, 12 Dec 2025 15:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553339; x=1797089339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xSD4kY/AASA5CJMSogs/FfTMxUFw5nAHKZ6fU5ThwcM=;
 b=WF8Lzyv4SNNLZrPD8bTEb3fSmtSWtcay3V6f9AVZWC+6yi6yd+Vk6MDt
 hDlZ9kFEe+lmX6lUF0hvNKnQDCpPozNsCHD5WtyM8yFqVwSL4jNcEBiDs
 mzAxraDJm6lwXx8R4EYP5OlLxzPp2bDN3v1llMJpauK/fanQhBoFminjF
 DskvXNWhPvgGqcXKr1NrjyqCVonugePNthsZ097ooQT/Yl87bzuUa3QYn
 4u5HSyP5+CSrhRG5KPTggdunJAbVZkaAxDETZNRugysSXog1xEfu4enO0
 PBJZOr5gYcau40kVajqUlT4V8na0bFaovd4bQNuMEY+nWJ6cRxgq2xTFD A==;
X-CSE-ConnectionGUID: vep9hgo+T7qXYrTQzOopsA==
X-CSE-MsgGUID: Hf8xAJ1TQGSJg5PHoqi2GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716372"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716372"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:28:59 -0800
X-CSE-ConnectionGUID: nmpVpIqRQVe1iYEDCcmz7A==
X-CSE-MsgGUID: m0Lguf99S7CrybApZYDE4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935040"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:28:57 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/13] drm/i915: Give up on DSB/flip queue if we fail to
 allocate the color DSB buffer
Date: Fri, 12 Dec 2025 17:28:36 +0200
Message-ID: <20251212152847.13679-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We don't have a codepath that does the color LUT update via
MMIO while writing the double buffered registers via DSB/flip queue.
So if we fail to allocate the DSB buffer for the LUT update we have
to fall back to a full MMIO based update. Make it so.

If we hit this with the current code then the entire LUT update
is simply skipped. After the fix the entire update, including
the LUT, will happen.

This would have even oopsed intel_wait_for_vblank_workers()
had we not explicitly checked for !use_dsb in
intel_crtc_needs_vblank_work(). Now that we handle the error
correctly early on we can drop the confusing !use_dsb
check from intel_crtc_needs_vblank_work().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 5 ++++-
 drivers/gpu/drm/i915/display/intel_crtc.c  | 3 +--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e7950655434b..f2e6b82968d2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2019,8 +2019,11 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	else
 		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
 
-	if (!intel_color_uses_dsb(crtc_state))
+	if (!intel_color_uses_dsb(crtc_state)) {
+		crtc_state->use_flipq = false;
+		crtc_state->use_dsb = false;
 		return;
+	}
 
 	display->funcs.color->load_luts(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 778ebc5095c3..3fbf25b2e88a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -449,8 +449,7 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 		!intel_crtc_needs_modeset(crtc_state) &&
 		(intel_crtc_needs_color_update(crtc_state) &&
 		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
-		!intel_color_uses_dsb(crtc_state) &&
-		!crtc_state->use_dsb;
+		!intel_color_uses_dsb(crtc_state);
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
-- 
2.51.2

