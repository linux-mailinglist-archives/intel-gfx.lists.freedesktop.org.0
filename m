Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2350FA1D482
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987EC10E4FE;
	Mon, 27 Jan 2025 10:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ecfSHDip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7B710E4FC;
 Mon, 27 Jan 2025 10:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973763; x=1769509763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I76dUisuXcsCBc3yfhAGogLSbv10lRmezPFfYQmLd9s=;
 b=ecfSHDipmKrXQrPjAkEmJ3KHY43Nl63Gyms/wl9XZBsDwNDOORknCpYM
 H+TrPHWHDefUbmmkB43SD0u0NAHq4l5WT71vPz47LeFALwLrpl4Q8gbhu
 2awzbt4CHUIJ/v2DhMnxal/k4qIuzjggO0FEwlq6qtIap6mMTP7tR+gfA
 U7y9xu7PaRN/m4qmRPfeiKQSvFoF8VIQCFcQe6I0y5L7I0LwHZSxovr9s
 jMkC80XcuaEtDXgdEO/Nqe4sFct2rAQCNDAFOv12bF23eIvNF/pUOeAQ9
 fYSp0x1/dO7x0HRFK9+ZdsM7z7ctHIWAnKfPbpE8CDb2sC2I8dscJDTSu w==;
X-CSE-ConnectionGUID: gERAzvBaQ+u8dDGxywuKog==
X-CSE-MsgGUID: UfGUjNokSSyXoDRW9vvknw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529876"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529876"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:23 -0800
X-CSE-ConnectionGUID: WE+RJ0cAQFucLOQLC8eXXw==
X-CSE-MsgGUID: yFXweFoHTlCkeVx7GSnpMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837913"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:22 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 09/12] drm/i915/display: Evade scanline 0 as well if PSR1
 or PSR2 is enabled
Date: Mon, 27 Jan 2025 12:28:43 +0200
Message-ID: <20250127102846.1237560-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
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

PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
wake-up scanline counting starts from vblank_start - 1. We don't know if
wake-up is already ongoing when evasion starts. In worst case PIPEDSL could
start reading valid value right after checking the scanline. In this
scenario we wouldn't have enough time to write all registers. To tackle
this evade scanline 0 as well. As a drawback we have 1 frame delay in flip
when waking up.

v2:
  - use intel_dsb_emit_wait_dsl
  - add evasion of scanline 0 also for Panel Replay

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 30782ab0b9082..f15e6c2a195c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -538,6 +538,18 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
 	int start, end;
 
+	/*
+	 * PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
+	 * wake-up scanline counting starts from vblank_start - 1. We don't know
+	 * if wake-up is already ongoing when evasion starts. In worst case
+	 * PIPEDSL could start reading valid value right after checking the
+	 * scanline. In this scenario we wouldn't have enough time to write all
+	 * registers. To tackle this evade scanline 0 as well. As a drawback we
+	 * have 1 frame delay in flip when waking up.
+	 */
+	if (crtc_state->has_psr)
+		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
+
 	if (pre_commit_is_vrr_active(state, crtc)) {
 		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
 
-- 
2.43.0

