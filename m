Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B107B55243
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDFE10EC93;
	Fri, 12 Sep 2025 14:50:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dv8m327v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82FB910EC90;
 Fri, 12 Sep 2025 14:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688608; x=1789224608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Kv/5gzNyzHdGB5VLdCqINHm7C6VcJI4yyjVjp/JoDY=;
 b=dv8m327vJh3lGLl1tlR9yOldMRoWYNnhsqPHG7AXKIfofS0hj2LnqK0T
 4nV7gy9/T1til2zwMgsxzzvsC10fo7qxBt9Y66PAC5pOMPszMvOFU7hsM
 U4CKGHpnSFmZSv7NS4yfjCtLRgqwGeKJ1PU1ZGIt54+iNTmfGtfgGTNaL
 OpPquWJ0CT0rS6gSZyGi9VPvvwjcLKouOy/MOWLVJYnCVJuJyYEJSSf0H
 lCd9s9tWDOtM//8a0QLsyjKh2yLlzkTOXfp4RRk5VCpBk5MMmNifALeLW
 cg0LBPdo23lwkWc6HJ9DxJSuOuGLkwiKCG8bUA9UjxmXhO7w9GaUZ+jf0 w==;
X-CSE-ConnectionGUID: cJaIAAsWS5e3C6vMKIBTUA==
X-CSE-MsgGUID: sdWwmorQQfCMs6jcdAAEXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63666365"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63666365"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:08 -0700
X-CSE-ConnectionGUID: s2zeUJIeTAm+uDj+286nqA==
X-CSE-MsgGUID: iGxh9ph/RUSSyE881s8NIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173810288"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 12/15] drm/i915: remove intel_update_czclk() as unnecessary
Date: Fri, 12 Sep 2025 17:48:51 +0300
Message-ID: <3f90b5e67258f485db09b6f48381682cbd96153f.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

With vlv_clock_get_czclk() caching the result on first use, we no longer
need a separate initializer. Remove intel_update_czclk() as
unnecessary. Log the CZCLK in vlv_clock_get_czclk() instead.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 16 +++-------------
 drivers/gpu/drm/i915/display/intel_display.h     |  1 -
 .../gpu/drm/i915/display/intel_display_driver.c  |  1 -
 3 files changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8f200593053e..fb1882494543 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -190,9 +190,11 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
-	if (!i915->czclk_freq)
+	if (!i915->czclk_freq) {
 		i915->czclk_freq = vlv_get_cck_clock(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
 						     vlv_clock_get_hpll_vco(drm));
+		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", i915->czclk_freq);
+	}
 
 	return i915->czclk_freq;
 }
@@ -209,18 +211,6 @@ int vlv_clock_get_gpll(struct drm_device *drm)
 				 vlv_clock_get_czclk(drm));
 }
 
-void intel_update_czclk(struct intel_display *display)
-{
-	int czclk_freq;
-
-	if (!display->platform.valleyview && !display->platform.cherryview)
-		return;
-
-	czclk_freq = vlv_clock_get_czclk(display->drm);
-
-	drm_dbg_kms(display->drm, "CZ clock rate: %d kHz\n", czclk_freq);
-}
-
 static bool is_hdr_mode(const struct intel_crtc_state *crtc_state)
 {
 	return (crtc_state->active_planes &
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5c406b276a76..54961cb656c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -528,7 +528,6 @@ void intel_init_display_hooks(struct intel_display *display);
 void intel_setup_outputs(struct intel_display *display);
 int intel_initial_commit(struct intel_display *display);
 void intel_panel_sanitize_ssc(struct intel_display *display);
-void intel_update_czclk(struct intel_display *display);
 enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 				      const struct drm_display_mode *mode);
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index cf1c14412abe..f84a0b26b7a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -482,7 +482,6 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	intel_dpll_init(display);
 	intel_fdi_pll_freq_update(display);
 
-	intel_update_czclk(display);
 	intel_display_driver_init_hw(display);
 	intel_dpll_update_ref_clks(display);
 
-- 
2.47.3

