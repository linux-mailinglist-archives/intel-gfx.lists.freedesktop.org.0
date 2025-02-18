Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE5EA3AAB8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D030B10E777;
	Tue, 18 Feb 2025 21:20:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lZzJ8Bbz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C4810E777
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913612; x=1771449612;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EtbjCpvQ9L2sKLlHkQmxmbr8JtyRVTO499z3/XGHqVM=;
 b=lZzJ8BbzG1nChLby796Egpe/tV+G+XjLDcQ5KjC0LHNx6nvgrjld4a1x
 PTs6y142lJSWTVwCLNjdmnfywdnS5xJ2bpOegnIqZd6zuA6uuVazq7W5p
 f/Fv3UHhwqXYlWdiNGF7Rb05xqOkZdOZEc6PAsp0oHj6q1cng17lm73u8
 tMlJn5GHcp1dBrucvWjpI/VrOQd0YeJC4XKMHKBjeLg1TTImuOX2sylbu
 2+fry+b/ituYWb3vIB8kEKXFP2WvkHLHm8OT6/lyjahqhCMUFgWFGA0jU
 VrMWv6JW2Jw5rGR1oCBoe2JqMBMm1T7ZeZNtbI2OcUWsu1rlPerxvtQnk A==;
X-CSE-ConnectionGUID: +nD0Xc/sRAuzAxrTdR9YfA==
X-CSE-MsgGUID: QWw7qCE/QZuvuVtktRRbTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862337"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862337"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:12 -0800
X-CSE-ConnectionGUID: 9lYYgPZ6TEKnaQiqw1NxKg==
X-CSE-MsgGUID: FeTyJb82QDSUVVOdkwzsQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693569"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:20:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:20:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/19] drm/i915: Do wm readout ealier for skl+
Date: Tue, 18 Feb 2025 23:19:11 +0200
Message-ID: <20250218211913.27867-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the wm readout to happen earlier. This is needed because
the bw_state readout will need ddb information populated by
the wm readout.

For now limit this to skl+ as I've not really analyzed the
implications of doing this on other platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 03c0facfad7a..6a4142d7d025 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -880,6 +880,10 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 						 crtc_state->port_clock);
 	}
 
+	/* TODO move here (or even earlier?) on all platforms */
+	if (DISPLAY_VER(display) >= 9)
+		intel_wm_get_hw_state(i915);
+
 	intel_bw_update_hw_state(display);
 	intel_cdclk_update_hw_state(display);
 
@@ -990,7 +994,9 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 	intel_dpll_sanitize_state(display);
 
-	intel_wm_get_hw_state(i915);
+	/* TODO move earlier on all platforms */
+	if (DISPLAY_VER(display) < 9)
+		intel_wm_get_hw_state(i915);
 	intel_wm_sanitize(i915);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
-- 
2.45.3

