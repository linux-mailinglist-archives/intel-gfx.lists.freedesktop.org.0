Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA08BD609D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 263BE10E51F;
	Mon, 13 Oct 2025 20:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Acz1Ka45";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E53F10E51E;
 Mon, 13 Oct 2025 20:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386377; x=1791922377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bzDh2IttLMspT7BG76a+B7iz5uAGuEuSLl2Gv7NJzYs=;
 b=Acz1Ka45TOJEdgDovtuqJyu+UG1cFqPZ20gZvtgGNk81pxW5+aoW807+
 85DORly7SN8+c7d+OI3g9luebFvu8W9D64JC8SQqdI761GHtnSaCcuRP0
 rJ2q2p53+ICcKLz+gqilHNotpBdw7V/n/vCI+1d5WFoMU1L693E4sqPg9
 MpYNhsFscNlSSksgi8B76D77T4/M05jESXI0LLLCEEirfccXXbzKX3S2A
 AnrJUckEh5i+z8lRnFEqvQ/hAU5Dcb3piIQVUOqOUkwG46IR6XKs0MqW/
 SGo5byENzEw54KoewEh6taEfabRDRKPLIT0OTABQVEFbx15N59kZ+714e A==;
X-CSE-ConnectionGUID: f4NvZkLkT9y6PjuLf9i6ZA==
X-CSE-MsgGUID: XTK47oHgRCaI6giqMaQ9Gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159166"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159166"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:57 -0700
X-CSE-ConnectionGUID: w/GkYcm+REu1f4LyonJ/Uw==
X-CSE-MsgGUID: m/bhJJc1Qja1QJuXkM/lIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250709"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915/ips: Eliminate the cdclk_state stuff from
 hsw_ips_compute_config()
Date: Mon, 13 Oct 2025 23:12:31 +0300
Message-ID: <20251013201236.30084-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
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

Reorganize the IPS CDCLK handling such that the computed CDCLK
frequency will always satisfy the IPS requirements. The only
exceptional case is if IPS would push the CDCLK above the platform
max, but in that case we can simply disable IPS.

To make this 100% race free we must move the enable_ips modparam
check out from the min CDCLK computation path so that there is no
chance of hsw_min_cdclk() and hsw_ips_compute_config() observing
a different enable_ips value during the same commit.

This allows us to completely remove the cdclk_state stuff
from the IPS code. We only ever have to compare the IPS min
CDCLK against the platform max CDCLK. Thus we eliminate any ordering
requirements between intel_cdclk_atomic_check() and
hsw_ips_compute_config().

Additionally we reduce the three copies of the code doing the
95% calculation into just one.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c | 61 ++++++++++++--------------
 1 file changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 927fe56aec77..f444c5b7a27b 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -191,45 +191,46 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 
 static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	/* IPS only exists on ULT machines and is tied to pipe A. */
 	if (!hsw_crtc_supports_ips(crtc))
 		return false;
 
-	if (!display->params.enable_ips)
-		return false;
-
 	if (crtc_state->pipe_bpp > 24)
 		return false;
 
-	/*
-	 * We compare against max which means we must take
-	 * the increased cdclk requirement into account when
-	 * calculating the new cdclk.
-	 *
-	 * Should measure whether using a lower cdclk w/o IPS
-	 */
-	if (display->platform.broadwell &&
-	    crtc_state->pixel_rate > display->cdclk.max_cdclk_freq * 95 / 100)
-		return false;
-
 	return true;
 }
 
+static int _hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (display->platform.broadwell)
+		return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
+
+	/* no IPS specific limits to worry about */
+	return 0;
+}
+
 int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (!display->platform.broadwell)
-		return 0;
+	int min_cdclk;
 
 	if (!hsw_crtc_state_ips_capable(crtc_state))
 		return 0;
 
-	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
-	return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
+	min_cdclk = _hsw_ips_min_cdclk(crtc_state);
+
+	/*
+	 * Do not ask for more than the max CDCLK frequency,
+	 * if that is not enough IPS will simply not be used.
+	 */
+	if (min_cdclk > display->cdclk.max_cdclk_freq)
+		return 0;
+
+	return min_cdclk;
 }
 
 int hsw_ips_compute_config(struct intel_atomic_state *state,
@@ -244,6 +245,12 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 	if (!hsw_crtc_state_ips_capable(crtc_state))
 		return 0;
 
+	if (_hsw_ips_min_cdclk(crtc_state) > display->cdclk.max_cdclk_freq)
+		return 0;
+
+	if (!display->params.enable_ips)
+		return 0;
+
 	/*
 	 * When IPS gets enabled, the pipe CRC changes. Since IPS gets
 	 * enabled and disabled dynamically based on package C states,
@@ -257,18 +264,6 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 	if (!(crtc_state->active_planes & ~BIT(PLANE_CURSOR)))
 		return 0;
 
-	if (display->platform.broadwell) {
-		const struct intel_cdclk_state *cdclk_state;
-
-		cdclk_state = intel_atomic_get_cdclk_state(state);
-		if (IS_ERR(cdclk_state))
-			return PTR_ERR(cdclk_state);
-
-		/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
-		if (crtc_state->pixel_rate > intel_cdclk_logical(cdclk_state) * 95 / 100)
-			return 0;
-	}
-
 	crtc_state->ips_enabled = true;
 
 	return 0;
-- 
2.49.1

