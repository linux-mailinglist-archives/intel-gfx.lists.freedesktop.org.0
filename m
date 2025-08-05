Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBC3B1B0D8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA86710E625;
	Tue,  5 Aug 2025 09:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBR/uxXO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D814E10E638;
 Tue,  5 Aug 2025 09:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385526; x=1785921526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h0tZCN2PblytHswG0QcHlzi2EWivQjPXBcl2ajibVYE=;
 b=KBR/uxXOJSXvtorhoNgQidyy69g+j3pt5TJ8vsjTZ7GtlP2MKC+mryk+
 XwabtQ0d/ltYdFxmIlxDeixsiXuSa0R7YEJiTj5adrhrqy0DiAyQQtwpT
 SuefO1Penn4LNgc13CH8z3um1Cibs7zPczdE+JdVjKAe2BgFYpbroYd37
 xGhvZXz4mi2XHsQ5uoQhGMLlS/mUx/EqIEdgsyaqG6qj5E0pcv6xW3ZVu
 XUazt13T6tvs52NX/jmKGkzcKLClaCE1OfoJmQZlZqygyvqzO7DTt8orC
 6gKWNzlMhip2wuyKlscy0T3wLdZAKrCKp+7/V8+M9b47TwHOUoP3tOUYf w==;
X-CSE-ConnectionGUID: oTLkGntvThufYX+nnCZw/A==
X-CSE-MsgGUID: mzGwZbT3Rvy/uiIQ3N/XhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504319"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504319"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:46 -0700
X-CSE-ConnectionGUID: hD/acLInSNmKsHKZnRKfQA==
X-CSE-MsgGUID: GhSjP3LKS4KuhK6YuUqL8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398054"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/12] drm/i915: add vlv_clock_get_hrawclk()
Date: Tue,  5 Aug 2025 12:18:16 +0300
Message-Id: <8242d8e13c53d2b9def0080dd15230144467ef69.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
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

Add vlv_clock_get_hrawclk() helper to hide the details from the callers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 9 +--------
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8f6b31bfe7c0..5d3fe2302a75 100644
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
index 117b6c423a4c..2915d8fd127f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -186,6 +186,12 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
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
2.39.5

