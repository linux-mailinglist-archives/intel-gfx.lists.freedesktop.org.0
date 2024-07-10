Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3B292D1CA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 14:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E2610E03E;
	Wed, 10 Jul 2024 12:41:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dvYubTxG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE7C10E03E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 12:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720615301; x=1752151301;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2tqPNEFWygqfk1hUyRVA/mCWN5DE9KFHkML6WN8jaT8=;
 b=dvYubTxG6Upv6ikbun1w5Wb/vkqjKRoyBpSyHd4MFZ2ruqv46sZMStQs
 AgM1De8+xEkTm9DUG9E2b89d5tnVDBVkLi/YaW4W+WsSorG7u0oZ7RlzY
 yA3bhl3qPTMuHr4/ARrl7yWsrDpy/2+BImc3GMLqeB2B+b28mM3UX4BrB
 jKZE4MTXhKKKECMxOhkXmyaXBeJmJLJvBbueCXg/aSMjh9Tp8IB2huPkH
 +aY2bAnIiLM7wsoXdEwQmIzhFy9imfJ4WZMPfERHhF5I30bHwfFRsf5UT
 oSeFa/96IsPdnJxB+JOJ+55PW44+2bWgT5rRx0GBwQL6mAYLHRjpJs+ST g==;
X-CSE-ConnectionGUID: OYOSnqLWQj+CtvHB1W5oMg==
X-CSE-MsgGUID: n3C62QrfSXy6nZZ2PXsmGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="21696962"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="21696962"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 05:41:41 -0700
X-CSE-ConnectionGUID: skW5B46gSz260u4JJIlRXA==
X-CSE-MsgGUID: Gg4RpCqNQQ655HI8umNATA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="48182937"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Jul 2024 05:41:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Jul 2024 15:41:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH] drm/i915: Fix readout degamma_lut mismatch on ilk/snb
Date: Wed, 10 Jul 2024 15:41:37 +0300
Message-ID: <20240710124137.16773-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

On ilk/snb the pipe may be configured to place the LUT before or
after the CSC depending on various factors, but as there is only
one LUT (no split mode like on IVB+) we only advertise a gamma_lut
and no degamma_lut in the uapi to avoid confusing userspace.

This can cause a problem during readout if the VBIOS/GOP enabled
the LUT in the pre CSC configuration. The current code blindly
assigns the results of the readout to the degamma_lut, which will
cause a failure during the next atomic_check() as we aren't expecting
anything to be in degamma_lut since it's not visible to userspace.

Fix the problem by assigning whatever LUT we read out from the
hardware into gamma_lut.

Cc: stable@vger.kernel.org
Fixes: d2559299d339 ("drm/i915: Make ilk_read_luts() capable of degamma readout")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11608
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_modeset_setup.c    | 31 ++++++++++++++++---
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 7602cb30ebf1..e1213f3d93cc 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -326,6 +326,8 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
 	if (intel_crtc_is_joiner_secondary(crtc_state))
 		return;
 
@@ -337,11 +339,30 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
 	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
 
-	/* assume 1:1 mapping */
-	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
-				  crtc_state->pre_csc_lut);
-	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
-				  crtc_state->post_csc_lut);
+	if (DISPLAY_INFO(i915)->color.degamma_lut_size) {
+		/* assume 1:1 mapping */
+		drm_property_replace_blob(&crtc_state->hw.degamma_lut,
+					  crtc_state->pre_csc_lut);
+		drm_property_replace_blob(&crtc_state->hw.gamma_lut,
+					  crtc_state->post_csc_lut);
+	} else {
+		/*
+		 * ilk/snb hw may be configured for either pre_csc_lut
+		 * or post_csc_lut, but we don't advertise degamma_lut as
+		 * being available in the uapi since there is only one
+		 * hardware LUT. Always assign the result of the readout
+		 * to gamma_lut as that is the only valid source of LUTs
+		 * in the uapi.
+		 */
+		drm_WARN_ON(&i915->drm, crtc_state->post_csc_lut &&
+			    crtc_state->pre_csc_lut);
+
+		drm_property_replace_blob(&crtc_state->hw.degamma_lut,
+					  NULL);
+		drm_property_replace_blob(&crtc_state->hw.gamma_lut,
+					  crtc_state->post_csc_lut ?:
+					  crtc_state->pre_csc_lut);
+	}
 
 	drm_property_replace_blob(&crtc_state->uapi.degamma_lut,
 				  crtc_state->hw.degamma_lut);
-- 
2.44.2

