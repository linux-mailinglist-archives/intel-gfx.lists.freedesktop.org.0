Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC9DA3206D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A5A10E7F1;
	Wed, 12 Feb 2025 07:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKh/LHpD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CBF10E7EF;
 Wed, 12 Feb 2025 07:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347089; x=1770883089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SvTv8Kqt3NNCW0hdhs0iC5P76CS0srJhSNSVT8+pIME=;
 b=oKh/LHpDSgSnBAFW3ekOyOJeN9yRDzeiN5pj9i2fxDscy2AC8jx8UWBK
 BPaeL+Vh3Bd+J3M2nZrFJ35Y/Upx7RENjLaSNuB98ZtdNvXKlbE1OyWkl
 yCRJMPotgVRFM48cv5COiRFi68CQNXVV6Fh7cPz9V/iuhYM2lUnPGhslQ
 CgYVhmLcM+5csp61VuJTZNRSUoK5lcRmHFqfrJrZqrti2/zwV+Xs/scdm
 yAD3Wa5S1odzP8msreAKFOdR00fiP/YHllcC4jj9u3YRUzBlwi1rDNQNU
 hJSkHYnF0e75YBMyjR3BUvU7YNuDLT94N9XiZ7nkujSuOZubPNG6pdnIC g==;
X-CSE-ConnectionGUID: UhO/vLOJS0651fUE9PKeYA==
X-CSE-MsgGUID: UPvHSNrNSiamX7gMylmwaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973643"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973643"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:09 -0800
X-CSE-ConnectionGUID: /1Hqit5FRLCywX1rJuHPfA==
X-CSE-MsgGUID: uTOVaMEBSkmefriggN3IEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836934"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v7 10/13] drm/i915/display: Evade scanline 0 as well if PSR1
 or PSR2 is enabled
Date: Wed, 12 Feb 2025 09:57:39 +0200
Message-ID: <20250212075742.995022-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 30782ab0b908..f15e6c2a195c 100644
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

