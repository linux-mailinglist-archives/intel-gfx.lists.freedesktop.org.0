Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344DEB5523F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8EFB10EC8D;
	Fri, 12 Sep 2025 14:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N2ALRlaH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B800A10EC8D;
 Fri, 12 Sep 2025 14:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688592; x=1789224592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XBtvEmPtRJ8NUHHqRTuBvec8vwE5wgLol77Uq9gUk9E=;
 b=N2ALRlaH29abe2XZEU/NG8aRgNwGLWzHuYKEjnrwkLOuIhfAszAO5zuW
 O5SPt4YMUvNTYOAvHqOsaO/DKD3DpW3Bs2otospqRbo8HC3Tpe16tGmAM
 EfvsPQrQd3RwC1R2FAkRUL6T0bm4uDB7hmES+et799sGu8Y7ZhuR8S1ap
 HQTE57eGTHmNYsMDRwzY04kyAx7/JvflzGvayZLUeVCev5BJ7zy0rHP4L
 yHpK64v6oQkrOFRvgMabAjgNirNwaId4rDdS/Bq2+2XPfHIWUDQet1rgr
 /E/GBVfNhBo4SElp+6cwsPcLRS/Zyxqs+yOFlpnh7YoRVU5Fd2Hrh8AVa g==;
X-CSE-ConnectionGUID: DH4klZhKRdOOsdBwVEXAXw==
X-CSE-MsgGUID: 29NP3/MvTsCu8Zaaf333eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63858238"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63858238"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:51 -0700
X-CSE-ConnectionGUID: j9KMNPd9Qe+OClDTcVULZQ==
X-CSE-MsgGUID: Xr4NRFJSSsanyrkm2t/4cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174424144"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 09/15] drm/i915: rename vlv_get_hpll_vco() to
 vlv_clock_get_hpll_vco()
Date: Fri, 12 Sep 2025 17:48:48 +0300
Message-ID: <75ac6b1cda2cb0afe3171250c4d5ba1ff81df877.1757688216.git.jani.nikula@intel.com>
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

Follow the new vlv_clock_*() naming pattern for all the related VLV
clock functions.

v2: Rebase

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6ea44bec4da5..ea1e6d964764 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -608,7 +608,7 @@ static void vlv_get_cdclk(struct intel_display *display,
 {
 	u32 val;
 
-	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
+	cdclk_config->vco = vlv_clock_get_hpll_vco(display->drm);
 	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
 
 	vlv_punit_get(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 462771435c4b..022f32ffd697 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -142,7 +142,7 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
-int vlv_get_hpll_vco(struct drm_device *drm)
+int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
@@ -183,7 +183,7 @@ static int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	int hpll;
 
 	if (dev_priv->hpll_freq == 0)
-		dev_priv->hpll_freq = vlv_get_hpll_vco(drm);
+		dev_priv->hpll_freq = vlv_clock_get_hpll_vco(drm);
 
 	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
 
@@ -210,7 +210,7 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 int vlv_clock_get_cdclk(struct drm_device *drm)
 {
 	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
-				 vlv_get_hpll_vco(drm));
+				 vlv_clock_get_hpll_vco(drm));
 }
 
 int vlv_clock_get_gpll(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 57b06cad314b..5c406b276a76 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -435,7 +435,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
-int vlv_get_hpll_vco(struct drm_device *drm);
+int vlv_clock_get_hpll_vco(struct drm_device *drm);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_cdclk(struct drm_device *drm);
-- 
2.47.3

