Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB62BC6483
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FC510E897;
	Wed,  8 Oct 2025 18:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="STncTRhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FA810E897;
 Wed,  8 Oct 2025 18:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947973; x=1791483973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MOipow8LbfH/0l/T4VuOIT7uXm91yrAEj/g9QpWRTjA=;
 b=STncTRhgb9GZWmQlO+uplpERKvGwXEEfkgvQ2lUij3IKk7NQoSM28Tye
 xywL4yfjko3d2Z3bgOTCDWV5dyAXgpWhJjErLFAfxyOEca0t3fn1hX1ex
 Fo9h5gFaIYSbB9QnG3TcC6bvZfew4x7gCnuTJEqk3XZObMDAtGAxMQYhh
 8j1AlVhjf0mWQEeV5j161qbvzt77hn4U79FPhm08jM7v3ZvEAuUX4N/uX
 +4x/yRxQT1qysQ00ngbfrhHv30C5dkn/I9rHfpM2MCMVJnLT7moK+Ysww
 CjB5PuuYbeeftB80VIqDm7oXnnOcVe3aRl3syrwwuZDhm30rT3H0tAgm1 g==;
X-CSE-ConnectionGUID: eT+Y3bIFQBqv1Bt3tPYnuQ==
X-CSE-MsgGUID: Bj2e7LWoQh2vvAPB+pqIrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245570"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245570"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:13 -0700
X-CSE-ConnectionGUID: AS6cYrp3RwiQ5rymTGs2jA==
X-CSE-MsgGUID: HJFE+sOqQcKga+dp89PooA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799876"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:12 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 03/11] drm/i915/cdclk: Add
 intel_cdclk_min_cdclk_for_prefill()
Date: Wed,  8 Oct 2025 21:25:50 +0300
Message-ID: <20251008182559.20615-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h |  3 +++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 598593eafdf5..37515da056fe 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -4000,3 +4000,15 @@ unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state
 
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
index d97f725a0160..b908ce2d9eb6 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -72,5 +72,8 @@ void intel_cdclk_read_hw(struct intel_display *display);
 unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state,
 					    const struct intel_cdclk_state *cdclk_state);
 unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state);
+int intel_cdclk_min_cdclk_for_prefill(const struct intel_crtc_state *crtc_state,
+				      unsigned int prefill_lines_unadjusted,
+				      unsigned int prefill_lines_available);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.49.1

