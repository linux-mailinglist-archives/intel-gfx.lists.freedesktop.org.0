Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2229CA1B4E4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB2410E8C4;
	Fri, 24 Jan 2025 11:39:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LWtIMD/p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC2C10E935;
 Fri, 24 Jan 2025 11:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718782; x=1769254782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/5XweH5hcRNeaqTrBjMCk9eU2M2VHFTg5WgIhRd1PRU=;
 b=LWtIMD/pY75QgZ3YQEisXJpgPSi2WoB3xy3K+Oxu71784gX/jlcGtHn3
 VDqkMM3AEWW1Qt4Wa0KRnHvZ1HNsQdZFWKAtrlJEcKjH6tydReP0X2eby
 nLSyNbi+3w6oAHjdEQCIxMynsHyrxT7w1mqhaWECmQJKJY7WVDc2xrSkC
 ZN4tnYTaNvWB/3ZQuEa9+rn8rrn/WojJ8GcwqD/x2oR9sv9IOutA0llCZ
 BnOVia1SFvijM+ncbtx1XSC4EN+qidiiolvQjW8lgNe/gdKvYjHKKYqjg
 9Rwqlcm2QhNjOpsy9VQiyE899BHl/GK9YJavHaUlQfbiBhNWRpR8K+m31 g==;
X-CSE-ConnectionGUID: e5F1s62HQYKFeVCApgWVXA==
X-CSE-MsgGUID: 3Exq2/lGSfuKSjVsRyV2hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237813"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237813"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:42 -0800
X-CSE-ConnectionGUID: +tkwrwkeS8mx0paJEwn8xQ==
X-CSE-MsgGUID: 5twIdnTjRv2QGKeFZ0KrqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757853"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:40 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Date: Fri, 24 Jan 2025 13:39:05 +0200
Message-ID: <20250124113906.850488-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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

We may have commit which doesn't have any non-arming plane register
writes. In that case there aren't "Frame Change" event before DSB vblank
evasion which hangs as PIPEDSL register is reading as 0 when PSR state is
SRDENT(PSR1) or DEEP_SLEEP(PSR2). Handle this by adding dummy write
triggering the "Frame Change" event.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 623ca5215ed44..6da46406576de 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7685,6 +7685,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(crtc);
 
 	if (!new_crtc_state->hw.active)
 		return;
@@ -7726,6 +7727,15 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
 					       state, crtc);
 
+		/*
+		 * Ensure we have "Frame Change" event when PSR state is
+		 * SRDENT(PSR1) or DEEP_SLEEP(PSR2). Otherwise DSB vblank
+		 * evasion hangs as PIPEDSL is reading as 0.
+		 */
+		if (new_crtc_state->has_psr && !new_crtc_state->has_panel_replay)
+			intel_de_write_dsb(display, new_crtc_state->dsb_commit,
+					   CURSURFLIVE(display, crtc->pipe), 0);
+
 		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
-- 
2.43.0

