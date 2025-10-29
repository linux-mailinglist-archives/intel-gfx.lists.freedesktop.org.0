Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DD3C19286
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221F010E759;
	Wed, 29 Oct 2025 08:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItgawKJb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F8810E759;
 Wed, 29 Oct 2025 08:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727645; x=1793263645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KpEjfzWT0oXxBLuGgd2hA26b51vBcBnUtF8/rEfWoSc=;
 b=ItgawKJb+d57y2Dt16mbZkD2du5Y0wNiOu0z4dYrH87FPFcEjas5L3zK
 I8w+SzWRU2PNxUq9iY8Y29cPrqUQkjbkwvN72kFIVqzf3/aUesXpWS2g4
 +P9eOSgOAH652zm8e52YelXdXnaC4uwIQ6iga0kjIftNAGa5KU4sxXUyR
 3QjMKt7e2KPxNzE7AbvGgS002ip250YpjUFXN0fbwtwQrfdh7hUkywjZF
 e48sznEaESADuqZndAOpE+OeelPtd3h3m3yRgLpBrWZDAHs8ST6YB9rfn
 dqDhLcdftuUB1sEzj2K5Tv7JZEzqp12VR16bLPiqenOJg+aMBmEXKatoM g==;
X-CSE-ConnectionGUID: LqQhZM8LSsGBv5v3WFh2SA==
X-CSE-MsgGUID: vNF751KzRhWVzhC9VR1yDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63937506"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="63937506"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:25 -0700
X-CSE-ConnectionGUID: 7U7d+roNSD+CGpXvjkmnLw==
X-CSE-MsgGUID: 36xw7owMSReZW/kgCVkN2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="185676447"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 8/9] drm/i915/cdclk: Use a more optimal min_cdclk for
 vblank length check
Date: Wed, 29 Oct 2025 10:46:46 +0200
Message-ID: <20251029084647.4165-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
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

Adjust intel_cdclk_prefill_adjustment() to give out a potentially more
optimal value, purely based on the final minimum CDCLK (also considering
planes/pfit/etc.) for the current pipe. We can't actually check against
the current CDCLK frequency as that might be much higher due to some
other pipe, and said other pipe might later reduce the CDCLK below
what the current pipe would find acceptable (given which WM levels
are enabled). Ie. we don't consider any global constraints (other
pipes, dbuf bandwidth, etc) on the mimimum CDCLK frequency here.

We must also make sure crtc_state->min_cdclk doesn't exceed the
platform max or else _intel_cdclk_prefill_adj() will get confused
when trying to find the corresponding platform specific cdclk
frequency.

v2: check min_cdclk against platform max

Reviewed-by: Luca Coelho <luciano.coelho@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 17 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++++++
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e92e7fd9fd13..838834c49a90 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -4092,8 +4092,21 @@ static unsigned int _intel_cdclk_prefill_adj(const struct intel_crtc_state *crtc
 
 unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 {
-	/* FIXME use the actual min_cdclk for the pipe here */
-	return intel_cdclk_prefill_adjustment_worst(crtc_state);
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * Only consider the current pipe's minimum cdclk here as a safe
+	 * lower bound. This must *not* be based on the actual/logical cdclk
+	 * frequency here as that may get reduced later due to eg. a modeset
+	 * on a different pipe, and that would completely invalidate the
+	 * guardband length checks we did on this pipe previously. That
+	 * could lead to prefill exceeding the guardband which would result
+	 * in underruns.
+	 */
+	min_cdclk = crtc_state->min_cdclk;
+
+	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
 }
 
 unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2eb714fbc35f..0ce6f923d722 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5759,6 +5759,12 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 		int ret;
 
 		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+		if (new_crtc_state->min_cdclk > display->cdclk.max_cdclk_freq) {
+			drm_dbg_kms(display->drm, "[CRTC:%d:%s] required cdclk (%d kHz) exceeds max (%d kHz)\n",
+				    crtc->base.base.id, crtc->base.name, new_crtc_state->min_cdclk,
+				    display->cdclk.max_cdclk_freq);
+			return -EINVAL;
+		}
 
 		if (DISPLAY_VER(display) >= 9) {
 			ret = intel_atomic_setup_scalers(state, crtc);
-- 
2.49.1

