Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D7BA69DC
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 09:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805BA10E0A9;
	Sun, 28 Sep 2025 07:19:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MXA4clKo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C996D10E1EA;
 Sun, 28 Sep 2025 07:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759043968; x=1790579968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c+RNYvqpBX3HZA3Q8DjRZ50XRmnglSsNK0KjgrtbHyM=;
 b=MXA4clKofJaWI8/EO4X98SIF8NnIfDUz5S6vOnAsIWifjWSE/GIloNMM
 QFJR6YACAHjxs+mkslHUBjUlxQ24GgLy4e+pgwuQcd6rjeFkpq1AiVQfJ
 WE/WWUAKM3yzf8nXP3Dq5rDQoO4iL11vKKUkEJszzZ93ABKiCg/X4Btw+
 E0CbCHzAMkyC3009BmnDcnK9DLr0qk0QsaEtRvuOpE/QqKMOV7NrMy4hD
 KIVZdJ6GDiG8ZiAE6sh7M4l4k0v915Y5XKIjmH5xgOow3rvTfhao3xmh5
 +5vaxmCx3SZaZdsQPQESYu+Kv8eamc4hO+FEkl0bV00GYWGYD2Rwpri3X A==;
X-CSE-ConnectionGUID: TKcABZQLSDKY+tuigPFUig==
X-CSE-MsgGUID: QfnYT7oBQHKPlS856vEAlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="60528562"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="60528562"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:26 -0700
X-CSE-ConnectionGUID: bJlO/BFEQcag0mLNXmj34A==
X-CSE-MsgGUID: 9ghnYriqRqW7YsgDrbL1eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="215094065"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/15] drm/i915/vrr: Prepare for movement of vblank start for
 optimized guardband
Date: Sun, 28 Sep 2025 12:35:37 +0530
Message-ID: <20250928070541.3892890-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
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

Currently, the guardband is computed as: vmin - vdisplay, because the
guardband matches the length of the vblank interval. We then make sure
that this value is atmost equal to the max guardband with SCL and other
delays taken into account.

However, with the optimized/reduced guardband logic, the delayed vblank
will be  positioned further away from the undelayed vblank. So with the
optimization enabled, the guardband should instead be computed as:
vmin - vblank_start.

Update the guardband calculation in intel_vrr_compute_config_late() to use
vblank_start when optimization is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ff6848de21b5..0b4694a1e2b5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -443,12 +443,17 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int guardband;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
-					intel_vrr_max_guardband(crtc_state));
+	if (intel_vrr_use_optimized_guardband(crtc_state))
+		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+	else
+		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
+
+	crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband(crtc_state));
 
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
-- 
2.45.2

