Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEEFBDB090
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508FF10E68F;
	Tue, 14 Oct 2025 19:18:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4Vbko5f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A63310E689;
 Tue, 14 Oct 2025 19:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469510; x=1792005510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=25C3cLY0iYeatVyvnfxiVCfMWMTcau5R7h0V5L78ApQ=;
 b=H4Vbko5fXYmMA7Y/9oNrhHm0YEaLu36xCAO2SfSnA1yL/Go4DeFxuMnO
 49qox5QAImrLpNZobH1gL5e7xz9eQHzQB/i4/lIGArGQmH4UsORG/ZVPV
 bRTOsXl2o5gTfzf5qJgDjpHq46gISs8koR21yEYnN7SKMYm/aJxG+q/KS
 Z/0lJWjFDpqsthDWKukIPElkrkLnNl06HTJLNi6pOcBYSEwMSKU7QrD+O
 FErRSZvt+R15aD1rclfebqjMp4TAXmFjsi52R+qd9EWPv9jHJtcKB2hc7
 USyvQZxFs99wNEoTGOGjAA73b97R0+O8FEkxynXB5TfN2gclvnKSMmjOD A==;
X-CSE-ConnectionGUID: xLqerYTMToGhJ3ry2JnScw==
X-CSE-MsgGUID: ROXt3Jm4RuWe5TzPyiQmgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50200841"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="50200841"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:30 -0700
X-CSE-ConnectionGUID: nWg9x57tSiGCqTK7kPCydg==
X-CSE-MsgGUID: RnRkcD9wRdOrmI+h4x173Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="205669310"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 4/9] drm/i915/cdclk: Add intel_cdclk_min_cdclk_for_prefill()
Date: Tue, 14 Oct 2025 22:18:03 +0300
Message-ID: <20251014191808.12326-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
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

Introduce a helper to compute the min required cdclk frequency
for a given guardband size. This could be used to bump up the
cdclk in case the vblank is so small that the normally computed
minimum cdclk results in too slow a prefill.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h |  3 +++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 10abc2521fab..bd45b719d4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -4120,3 +4120,15 @@ unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state
 
 	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
 }
+
+int intel_cdclk_min_cdclk_for_prefill(const struct intel_crtc_state *crtc_state,
+				      unsigned int prefill_lines_unadjusted,
+				      unsigned int prefill_lines_available)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(pipe_mode->crtc_clock, prefill_lines_unadjusted),
+				ppc * prefill_lines_available);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 8774a320670b..1c1140b53b17 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -72,5 +72,8 @@ void intel_cdclk_read_hw(struct intel_display *display);
 
 unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state);
 unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+int intel_cdclk_min_cdclk_for_prefill(const struct intel_crtc_state *crtc_state,
+				      unsigned int prefill_lines_unadjusted,
+				      unsigned int prefill_lines_available);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.49.1

