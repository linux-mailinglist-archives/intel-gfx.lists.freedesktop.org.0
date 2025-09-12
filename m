Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02307B5523B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909BD10EC8B;
	Fri, 12 Sep 2025 14:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zo6ldGfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB7410EC8B;
 Fri, 12 Sep 2025 14:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688581; x=1789224581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lEUnX50iO46bwCUbartODsqr+KcSRk+sj+skeDn/0h8=;
 b=Zo6ldGfE6py1bn9q/B3S+OdSCAEHzqoyziqa7mS/G881oTal0CnmuTN9
 Q5zsEb/VpVmEbEqWvO3qFt9zHMLPBvsA5Yjt5RkLSB6TTD0cmw+Pwp8Pq
 NYdPhQ+2FuL2TyqwXPAaT8GPBcNeg7DlFR6pk0mU2CxJ1HsH8zOuzaJEJ
 /acSGtWg0Hi6MEiUA1o+yYPv3ryyFfZAgMdmKV92jcetQqMOVyHw93CCi
 fgEoOi5PuYutmxLPjYR2c3xlg0ghkYd1D5A1etgLpgGLVQ+weuPllZH6o
 flvhZZe1FHV3SuFgcVokJosCqCv+Tz+8dSMoNaU5YR5ieD2C/J3+op9Qn Q==;
X-CSE-ConnectionGUID: YGEX7t3AQgmWXQA+c45OVw==
X-CSE-MsgGUID: fkGeFaIMTey4t0SL8vjtYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63858223"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63858223"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:41 -0700
X-CSE-ConnectionGUID: xJ9+YLKXTXiUZsQQgdcOvA==
X-CSE-MsgGUID: DXFMM9gYQBOq9T89WikQqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174424125"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 07/15] drm/i915: add vlv_clock_get_cdclk()
Date: Fri, 12 Sep 2025 17:48:46 +0300
Message-ID: <fc93ccf998300048432d18ce7e8690bd54e1e18d.1757688216.git.jani.nikula@intel.com>
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

Add vlv_clock_get_cdclk() helper to hide the details from the callers.

For now, this means running vlv_get_hpll_vco() twice in vlv_get_cdclk(),
but this will be improved later.

v2: Rebase

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 +---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 45ac378922ff..6ea44bec4da5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -609,9 +609,7 @@ static void vlv_get_cdclk(struct intel_display *display,
 	u32 val;
 
 	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
-	cdclk_config->cdclk = vlv_get_cck_clock(display->drm, "cdclk",
-						CCK_DISPLAY_CLOCK_CONTROL,
-						cdclk_config->vco);
+	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
 
 	vlv_punit_get(display->drm);
 	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9ba6f439205a..4a19a3ce060c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -207,6 +207,12 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 	return i915->czclk_freq;
 }
 
+int vlv_clock_get_cdclk(struct drm_device *drm)
+{
+	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
+				 vlv_get_hpll_vco(drm));
+}
+
 int vlv_clock_get_gpll(struct drm_device *drm)
 {
 	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5c9b57e94a65..9fdbc4ad5391 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
+int vlv_clock_get_cdclk(struct drm_device *drm);
 int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
-- 
2.47.3

