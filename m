Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3475B55239
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB7010EC87;
	Fri, 12 Sep 2025 14:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="at6aHaM+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E122310EC87;
 Fri, 12 Sep 2025 14:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688571; x=1789224571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SziCfYdMjgwY/jxMi/IIeuq7/mbKB2LhFx7ORr86jnk=;
 b=at6aHaM+i3dkL+r4JplJmQacj7bp1JhMiRKLsFbNQDfMUft9DutCQfI4
 aRq7TEZK2wGM98tug71/nz0kotujQgHt+9DXnBJlVKEdXPQ73CY6dEP52
 ihDgdLTmgh3MB+hnIWLNAwAn7KE78BC25yyg+CJ+PjFK6mOvdVwnx++zu
 idS7TuTwOKM8Nwv5sk4E306pwwdtFnrZL2AJcBMY9vqkuK6aKLY1W2dlc
 Ewtf/cvmRRvVGmBJci2oKs37eF4nUlNS8exLFXMiOow2e1muuIbz+7JpK
 8uY5hKSmAxI8qN4t2xMlq2W+0UpMGDxyqFsrsinfH/SGKumhrSYhBb/JO Q==;
X-CSE-ConnectionGUID: wRXdsaE6RhCvhc9t7RSLTQ==
X-CSE-MsgGUID: J765HFYfRHeXcgge83wv3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59074547"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59074547"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:31 -0700
X-CSE-ConnectionGUID: Cmb23WUpQWuHF7Ole1Ztgg==
X-CSE-MsgGUID: Nc0hISUMSDmwK7IZrffnOw==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 05/15] drm/i915: add vlv_clock_get_hrawclk()
Date: Fri, 12 Sep 2025 17:48:44 +0300
Message-ID: <ad3c3d0baf16eb0ef3a0ac3edfbab327c564e743.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
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

Add vlv_clock_get_hrawclk() helper to hide the details from the callers.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 9 +--------
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3025951eac28..45ac378922ff 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3561,13 +3561,6 @@ static int pch_rawclk(struct intel_display *display)
 	return (intel_de_read(display, PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
 }
 
-static int vlv_hrawclk(struct intel_display *display)
-{
-	/* RAWCLK_FREQ_VLV register updated from power well code */
-	return vlv_get_cck_clock_hpll(display->drm, "hrawclk",
-				      CCK_DISPLAY_REF_CLOCK_CONTROL);
-}
-
 static int i9xx_hrawclk(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -3601,7 +3594,7 @@ u32 intel_read_rawclk(struct intel_display *display)
 	else if (HAS_PCH_SPLIT(display))
 		freq = pch_rawclk(display);
 	else if (display->platform.valleyview || display->platform.cherryview)
-		freq = vlv_hrawclk(display);
+		freq = vlv_clock_get_hrawclk(display->drm);
 	else if (DISPLAY_VER(display) >= 3)
 		freq = i9xx_hrawclk(display);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eca9f2508e9d..487870811d3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -190,6 +190,12 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	return hpll;
 }
 
+int vlv_clock_get_hrawclk(struct drm_device *drm)
+{
+	/* RAWCLK_FREQ_VLV register updated from power well code */
+	return vlv_get_cck_clock_hpll(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL);
+}
+
 int vlv_clock_get_czclk(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 811066a9e69d..dbfb4b4aee4e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg);
+int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
-- 
2.47.3

