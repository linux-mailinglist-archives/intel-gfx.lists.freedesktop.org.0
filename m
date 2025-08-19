Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DD7B2C443
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F383810E5E6;
	Tue, 19 Aug 2025 12:54:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+DgJd7w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3969810E5E6;
 Tue, 19 Aug 2025 12:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608072; x=1787144072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RBwvhyytX8okAJ1yLCCjv3g+i2M5+fPStO+msuKqXLQ=;
 b=V+DgJd7wXm5tvfIa5FTjo1vRMREX6/+rSmsApj/nxtbsrtS4P+tOKfzA
 3QY+UWg/HlyrivufR/IIPg6Vl8a47nSVCRPZvkcql3xI3duTJzNCn7dmF
 Uvl06smpQhJ+RMcPer9z6Cp8MAlxY9r1kb38+N8aO90YlsyQK+uqVHb5c
 pMFsiYmevLlbWizZInV7Kf5irgn1lRt8tm8jWzshIFkKxCAxowXJs/39u
 0e5tdqlh/PsMH/psVsxbpUFKRCZ/sEyU5kw/o4hGuEbRFeuvrO7+3ZAt3
 CSzCPzba5wQzqFyRNPzXsUtJZDGDBYFMT1yZvr+hacUaYM5iJT/l1FeHm g==;
X-CSE-ConnectionGUID: /25nrd/mQlqms2zv3i9n+Q==
X-CSE-MsgGUID: keVj2sFkT8Ky3LWlQjUHWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69222183"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69222183"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:32 -0700
X-CSE-ConnectionGUID: deYVgQIqSZeoG0gGy0FjuQ==
X-CSE-MsgGUID: HwUd7hEDSjO+hXyJGiPCpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168089286"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 09/12] drm/i915: remove intel_update_czclk() as unnecessary
Date: Tue, 19 Aug 2025 15:53:39 +0300
Message-ID: <d356c9d8dea0f8f04e28ce5e6150ac1b769f19fb.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 16 +++-------------
 drivers/gpu/drm/i915/display/intel_display.h     |  1 -
 .../gpu/drm/i915/display/intel_display_driver.c  |  1 -
 3 files changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4f1d60b42063..0694b2b35c86 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -198,9 +198,11 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
-	if (!i915->czclk_freq)
+	if (!i915->czclk_freq) {
 		i915->czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
 							  CCK_CZ_CLOCK_CONTROL);
+		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", i915->czclk_freq);
+	}
 
 	return i915->czclk_freq;
 }
@@ -217,18 +219,6 @@ int vlv_clock_get_gpll(struct drm_device *drm)
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
2.47.2

